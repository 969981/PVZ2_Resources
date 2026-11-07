#!/usr/bin/env python3
"""Reproducible, read-only full-code inventory for the user's CHN 4.2.8 APK.

Restores ALL classes*.dex and native lib/*.so to a private scratch location,
optionally decompiles all six DEX with JADX, indexes Java methods/DEX strings
and ELF strings/RVAs with reproducible source provenance.

Only derived metadata (counts, paths, categories, addresses, hashes) goes in
--out. Full decompiled source/binaries stay in --scratch and must not be
committed to public Git or uploaded as Actions artifacts. This is an evidence
collection tool, NOT a game patch, networking bypass or proof of playability.
"""
from __future__ import annotations

import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path
import re
import shutil
import struct
import subprocess
import time
import zipfile

from scripts.offline.audit_apk import SOURCE_SHA256, sha256_file

DEX_NAME = re.compile(r"^classes(?:[1-9][0-9]*)?\.dex$")
SO_NAME = re.compile(r"^lib/(arm64-v8a|armeabi-v7a)/[^/]+\.so$")
PRINTABLE = re.compile(rb"[\x20-\x7e]{6,2048}")
HOST_RE = re.compile(rb"https?://([A-Za-z0-9][A-Za-z0-9.-]{1,180})(?::[0-9]{1,5})?(?:[/?#]|$)", re.I)
CATEGORIES = {
    "STARTUP": re.compile(r"(?i)\b(?:onCreate|onStart|onResume|JNI_OnLoad|initialize|bootstrap|initGame|startup|launchGame)\b"),
    "NETWORK": re.compile(r"(?i)\b(?:OkHttp|HttpURLConnection|Retrofit|ConnectivityManager|isNetworkAvailable|NetworkInfo|SocketTimeoutException|UnknownHostException|requestNetwork|httpClient|internetConnection|requestUrl|isOnline)\b"),
    "ACCOUNT": re.compile(r"(?i)\b(?:login|logon|authenticate|authentication|guestLogin|visitorLogin|signIn|accountCenter|realName|实名认证|账号登录)\b"),
    "RESOURCE": re.compile(r"(?i)\b(?:download|updateResources|unpack|decompress|unzip|rsgp|rsb|rton|assetBundle|resourceManager|patchResource|resourceCheck)\b"),
    "LEVEL": re.compile(r"(?i)\b(?:enterLevel|startLevel|selectLevel|finishLevel|levelCompleted|levelResult|levelProgress|levelComplete|WaveManager|LevelDefinition|关卡结算)\b"),
    "SAVE": re.compile(r"(?i)\b(?:pp\.dat|saveGame|saveProgress|saveData|loadSave|syncSave|PlayerInfo|SharedPreferences|SQLiteDatabase|FileOutputStream|savedGame|writeFile)\b"),
    "COMMERCE_EXCLUDED": re.compile(r"(?i)\b(?:billing|iap|inAppPurchase|purchase|payment|payOrder|alipay|weixinpay|orderVerify)\b"),
}
NATIVE_TOKENS = {
    "STARTUP": re.compile(rb"(?i)(?:JNI_OnLoad|initGame|startup|bootstrap|initEngine)"),
    "NETWORK": re.compile(rb"(?i)(?:https?://|socket|network|connect|request|httpclient|curl_|tls_|ssl_)"),
    "ACCOUNT": re.compile(rb"(?i)(?:login|logon|authenticate|guest|account|userid|token)"),
    "RESOURCE": re.compile(rb"(?i)(?:RSLB|RSGP|RTON|unpack|decompress|resource|download|patch)"),
    "LEVEL": re.compile(rb"(?i)(?:LevelDefinition|WaveManager|LevelResult|StartLevel|CompleteLevel|EnterLevel|battle)"),
    "SAVE": re.compile(rb"(?i)(?:pp\.dat|PlayerInfo|savegame|saveprogress|savedata|userdata|sqlite)"),
    "COMMERCE_EXCLUDED": re.compile(rb"(?i)(?:billing|payment|inapppurchase|purchase|alipay)"),
}
METHOD_DECL = re.compile(r"(?:^|\s)([A-Za-z_$][A-Za-z_0-9$]*)\s*\([^;]*\)\s*(?:throws [^{]+)?\s*\{?\s*$")
MAX_ROWS_PER_NATIVE = 1600
MAX_ROWS_PER_DEX = 1500
MAX_JAVA_ROWS = 15000


def find_method(lines: list[str], line_index: int) -> str:
    for j in range(line_index, max(0, line_index - 80), -1):
        value = lines[j].strip()
        if value.startswith(("if ", "for ", "while ", "switch ", "catch ", "@", "//", "return ")):
            continue
        if len(value) > 250:
            continue
        match = METHOD_DECL.search(value)
        if match:
            return match.group(1)
    return "UNKNOWN_METHOD"


def classify_java(line: str) -> list[tuple[str, str]]:
    if line.lstrip().startswith(("import ", "package ", "//", "* ")):
        return []
    return [(cat, pattern.pattern[:55]) for cat, pattern in CATEGORIES.items() if pattern.search(line)]


def source_rows(root: Path, limit: int = MAX_JAVA_ROWS) -> tuple[list[dict], dict]:
    rows: list[dict] = []
    counts = Counter()
    files_scanned = 0
    for path in sorted(root.rglob("*.java")):
        if path.stat().st_size > 8 * 1024 * 1024:
            continue
        files_scanned += 1
        data = path.read_bytes()
        try:
            source = data.decode("utf-8", "replace")
        except UnicodeError:
            continue
        lines = source.splitlines()
        rel = path.relative_to(root).as_posix()
        first_party = any(name in rel.lower() for name in ("popcap", "pvz", "plantsvszombies", "ditwan", "hrgame", "twgame"))
        for i, line in enumerate(lines):
            categories = classify_java(line)
            for category, _ in categories:
                counts[category] += 1
                if len(rows) < limit:
                    rows.append({
                        "relative_java_source": rel,
                        "line": i + 1,
                        "method_name_hint": find_method(lines, i),
                        "category": category,
                        "first_party_path_hint": first_party,
                        "source_sha256": hashlib.sha256(data).hexdigest(),
                    })
    return rows, {"files_scanned": files_scanned, "category_counts": dict(counts),
                  "stored_rows": len(rows), "truncated": len(rows) == limit}


def dex_string_entries(data: bytes):
    if len(data) < 112 or not data.startswith(b"dex\n"):
        return
    size, offset = struct.unpack_from("<II", data, 56)
    if size > 2_000_000 or offset < 112 or offset + size * 4 > len(data):
        return
    for string_index in range(size):
        item_offset = struct.unpack_from("<I", data, offset + string_index * 4)[0]
        if item_offset >= len(data):
            continue
        pos = item_offset
        # One ULEB128 uint32 string utf16_size (1..5 bytes).
        for _ in range(5):
            if pos >= len(data):
                break
            char = data[pos]
            pos += 1
            if not (char & 0x80):
                break
        end = data.find(b"\0", pos, min(len(data), pos + 8192))
        if end == -1:
            continue
        yield string_index, pos, data[pos:end].decode("utf-8", "replace")


def extract_code(apk: Path, scratch: Path):
    selected = []
    with zipfile.ZipFile(apk) as archive:
        for info in archive.infolist():
            if info.is_dir():
                continue
            name = info.filename
            if not (DEX_NAME.fullmatch(name) or SO_NAME.fullmatch(name)):
                continue
            # Keep original APK internal path under private scratch.
            dest = scratch / "original_code" / name
            dest.parent.mkdir(parents=True, exist_ok=True)
            with archive.open(info) as src, dest.open("wb") as dst:
                shutil.copyfileobj(src, dst, length=4 * 1024 * 1024)
            selected.append({
                "apk_entry": name, "bytes": info.file_size,
                "sha256": sha256_file(dest),
                "scratch_path": str(dest),
            })
    return selected


def elf_load_segments(file: Path):
    """Return PT_LOAD (file offset, file size, virtual address), ELF32 or ELF64."""
    with file.open("rb") as f:
        h = f.read(64)
        if h[:4] != b"\x7fELF" or h[5:6] != b"\x01":
            return []
        elf64 = h[4] == 2
        if elf64:
            if len(h) < 64:
                return []
            phoff = struct.unpack_from("<Q", h, 32)[0]
            entsize, count = struct.unpack_from("<HH", h, 54)
        else:
            if len(h) < 52:
                return []
            phoff = struct.unpack_from("<I", h, 28)[0]
            entsize, count = struct.unpack_from("<HH", h, 42)
        if not 0 < count <= 256 or not 0 < entsize <= 128:
            return []
        if phoff + count * entsize > file.stat().st_size:
            return []
        f.seek(phoff)
        phdr = f.read(entsize * count)
    segments = []
    for i in range(count):
        base = i * entsize
        kind = struct.unpack_from("<I", phdr, base)[0]
        if kind != 1:
            continue
        if elf64:
            fileoff, va, size = struct.unpack_from("<QQQ", phdr, base + 8)
            # Third Q here is p_paddr. p_filesz is at +32.
            size = struct.unpack_from("<Q", phdr, base + 32)[0]
        else:
            fileoff, va, size = struct.unpack_from("<III", phdr, base + 4)
        segments.append((fileoff, size, va))
    return segments


def native_rva(segments, file_offset: int) -> str:
    for start, length, vaddr in segments:
        if start <= file_offset < start + length:
            return hex(vaddr + file_offset - start)
    return ""


def scan_native(file: Path, relname: str, max_rows: int = MAX_ROWS_PER_NATIVE):
    segments = elf_load_segments(file)
    rows: list[dict] = []
    counts = Counter()
    tail = b""
    read_total = 0
    with file.open("rb") as f:
        while True:
            chunk = f.read(1024 * 1024)
            if not chunk:
                break
            data = tail + chunk
            position = read_total - len(tail)
            for hit in PRINTABLE.finditer(data):
                if hit.end() <= len(tail):
                    continue
                value = hit.group(0)
                offset = position + hit.start()
                labels = [k for k, pattern in NATIVE_TOKENS.items() if pattern.search(value)]
                if not labels:
                    continue
                hosts = [m.group(1).decode("ascii", "ignore").lower()
                         for m in HOST_RE.finditer(value)]
                for label in labels:
                    counts[label] += 1
                    if len(rows) < max_rows:
                        word = NATIVE_TOKENS[label].search(value).group(0)
                        rows.append({
                            "apk_entry": relname,
                            "file_offset_hex": hex(offset),
                            "elf_rva_hex": native_rva(segments, offset),
                            "category": label,
                            "matched_term": word.decode("ascii", "ignore")[:64],
                            "domain_hint": hosts[0] if hosts else "",
                        })
            tail = data[-4096:]
            read_total += len(chunk)
    return rows, dict(counts)


def write_csv(path: Path, rows: list[dict], columns: list[str]):
    with path.open("w", newline="", encoding="utf-8-sig") as out:
        writer = csv.DictWriter(out, fieldnames=columns)
        writer.writeheader()
        writer.writerows(rows)


def run(apk: Path, out: Path, scratch: Path, jadx: str | None, timeout: int):
    out.mkdir(parents=True, exist_ok=True)
    scratch.mkdir(parents=True, exist_ok=True)
    apk_hash = sha256_file(apk)
    if apk_hash != SOURCE_SHA256:
        raise ValueError("APK SHA mismatch: refusing to correlate other build code")
    started = time.monotonic()
    entries = extract_code(apk, scratch)
    dex_files = [Path(x["scratch_path"]) for x in entries if x["apk_entry"].endswith(".dex")]
    so_files = [x for x in entries if x["apk_entry"].endswith(".so")]
    dex_rows: list[dict] = []
    dex_counts = Counter()
    for dex in dex_files:
        data = dex.read_bytes()
        for index, offset, value in dex_string_entries(data):
            hits = [category for category, regex in CATEGORIES.items() if regex.search(value)]
            hosts = re.findall(r"https?://([A-Za-z0-9][A-Za-z0-9.-]+)", value, flags=re.I)
            for category in hits:
                dex_counts[category] += 1
                if len(dex_rows) < MAX_ROWS_PER_DEX * len(dex_files):
                    dex_rows.append({
                        "apk_entry": dex.name, "string_index": index,
                        "string_data_offset_hex": hex(offset),
                        "category": category,
                        "domain_hint": hosts[0][:120] if hosts else "",
                    })
    native_rows = []
    native_counts = Counter()
    for entry in so_files:
        path = Path(entry["scratch_path"])
        rows, counts = scan_native(path, entry["apk_entry"])
        native_rows.extend(rows)
        native_counts.update(counts)
    jadx_result: dict = {"status": "not_requested"}
    java_rows: list[dict] = []
    java_summary: dict = {}
    if jadx:
        target = scratch / "jadx"
        command = [jadx, "--no-res", "-j", "2", "-d", str(target)] + [str(d) for d in dex_files]
        env = __import__("os").environ.copy()
        env["JAVA_OPTS"] = "-Xmx3g"
        try:
            p = subprocess.run(command, capture_output=True, text=True,
                               errors="replace", timeout=timeout, check=False, env=env)
            jadx_result = {
                "status": "completed" if p.returncode == 0 else "failed",
                "return_code": p.returncode,
                "stderr_tail": p.stderr[-800:] if p.returncode else "",
            }
        except (OSError, subprocess.TimeoutExpired) as exc:
            jadx_result = {"status": "failed", "error_type": type(exc).__name__}
        sources = target / "sources"
        if sources.is_dir():
            java_rows, java_summary = source_rows(sources)
            jadx_result["decompiled_sources_found"] = java_summary["files_scanned"]
        else:
            jadx_result["decompiled_sources_found"] = 0
    write_csv(out / "source_members.csv",
              [{k: value for k, value in row.items() if k != "scratch_path"} for row in entries],
              ["apk_entry", "bytes", "sha256"])
    write_csv(out / "dex_string_cues.csv", dex_rows,
              ["apk_entry", "string_index", "string_data_offset_hex", "category", "domain_hint"])
    write_csv(out / "native_string_cues.csv", native_rows,
              ["apk_entry", "file_offset_hex", "elf_rva_hex", "category", "matched_term", "domain_hint"])
    write_csv(out / "java_callsite_cues.csv", java_rows,
              ["relative_java_source", "line", "method_name_hint", "category",
               "first_party_path_hint", "source_sha256"])
    report = {
        "status": "STATIC_ONLY_NO_OFFLINE_PATCH_VERIFIED",
        "source_apk_sha256": apk_hash,
        "source_apk_version": "4.2.8 (1895)",
        "code_members_extracted_to_private_scratch": len(entries),
        "dex_count": len(dex_files), "native_library_count": len(so_files),
        "dex_counts": dict(dex_counts), "native_counts": dict(native_counts),
        "jadx": jadx_result, "java_summary": java_summary,
        "native_rows_stored": len(native_rows), "dex_rows_stored": len(dex_rows),
        "java_rows_stored": len(java_rows),
        "excluded_class": "COMMERCE_EXCLUDED: payment/account entitlements are not offline patch targets",
        "elapsed_seconds": round(time.monotonic() - started, 2),
        "evidence_boundary": ("These are strings/method hints, not verified runtime calls. "
                              "No patch addresses or server response schema are proven."),
        "privacy": ("Full decompiled source, ELF and DEX remain in scratch only. "
                    "Only derived metadata should be uploaded."),
    }
    (out / "reverse_report.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return report


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--scratch", type=Path, required=True,
                   help="Private, untracked workspace for binaries and full Java source")
    p.add_argument("--jadx", help="Executable jadx CLI path; optional")
    p.add_argument("--jadx-timeout", type=int, default=1200)
    args = p.parse_args()
    if args.out.resolve() == args.scratch.resolve() or args.out.resolve().is_relative_to(args.scratch.resolve()):
        p.error("--out must be separate from --scratch (no copyrighted code in metadata upload)")
    if not args.apk.is_file():
        p.error("Source APK missing")
    result = run(args.apk, args.out, args.scratch, args.jadx, args.jadx_timeout)
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
