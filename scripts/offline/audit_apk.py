#!/usr/bin/env python3
"""Read-only static APK audit for the PVZ2 CHN offline research project.

Does not decode binary AndroidManifest.xml, modify APKs, or make network calls.
Requires Python 3.10+ standard library. Optional Android aapt/aapt2 supplies
authoritative package/version information if installed on the local machine.
"""
from __future__ import annotations

import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import shutil
import subprocess
import zipfile

URL_HOST = re.compile(rb"https?://([A-Za-z0-9][A-Za-z0-9.-]{0,252})(?::[0-9]{1,5})?(?:[/?#:]|\b)", re.I)
DEX_PATH = re.compile(r"(?:^|/)classes(?:[1-9][0-9]*)?\.dex$")
PACKAGE_BADGING = re.compile(r"package:\s+name='([^']+)'\s+versionCode='([^']*)'\s+versionName='([^']*)'")
SDK_BADGING = re.compile(r"(?:targetSdkVersion|sdkVersion):'([^']*)'")
SOURCE_SHA256 = "64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"


def sha256_file(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(4 * 1024 * 1024), b""):
            digest.update(block)
    return digest.hexdigest()


def unsafe_zip_path(name: str) -> bool:
    return (name.startswith("/") or "\\" in name or ":" in name
            or ".." in PurePosixPath(name).parts)


def read_hosts(member, limit: int, chunk_size: int = 1 << 20):
    """Return candidate host frequencies and scanned bytes, not secret URLs.

    The rolling tail preserves URLs split across chunk boundaries. Findings
    are string candidates; they are not evidence of an actual network request.
    """
    hosts = Counter()
    tail = b""
    scanned = 0
    while scanned < limit:
        chunk = member.read(min(chunk_size, limit - scanned))
        if not chunk:
            break
        data = tail + chunk
        for match in URL_HOST.finditer(data):
            if match.end() <= len(tail):
                continue
            host = match.group(1).decode("ascii").lower().rstrip(".")
            if "." in host and len(host) < 254 and ".." not in host:
                hosts[host] += 1
        tail = data[-512:]
        scanned += len(chunk)
    return hosts, scanned


def parse_badging(output: str) -> dict:
    match = PACKAGE_BADGING.search(output)
    if not match:
        return {"status": "unparsed", "reason": "package stanza not found"}
    details = {
        "status": "verified_aapt",
        "package_name": match.group(1),
        "version_code": match.group(2),
        "version_name": match.group(3),
    }
    for line in output.splitlines():
        sdk = SDK_BADGING.search(line)
        if sdk:
            details[line.split(":", 1)[0]] = sdk.group(1)
    return details


def get_badging(apk: Path, tool: str | None = "auto") -> dict:
    if tool == "disabled":
        return {"status": "skipped"}
    executable = (shutil.which("aapt2") or shutil.which("aapt")) if tool == "auto" else tool
    if not executable:
        return {"status": "unavailable", "reason": "Install Android Build Tools (aapt2)"}
    try:
        command = [executable, "dump", "badging", str(apk)]
        process = subprocess.run(command, capture_output=True, text=True,
                                 errors="replace", timeout=40, check=False)
    except (OSError, subprocess.TimeoutExpired) as error:
        return {"status": "failed", "reason": type(error).__name__}
    if process.returncode:
        return {"status": "failed", "exit_code": process.returncode,
                "reason": process.stderr.strip()[:300]}
    return parse_badging(process.stdout)


def audit_apk(apk: Path, expected_sha256: str | None = None,
              scan_mib: int = 8, scan_hosts: bool = True,
              aapt_tool: str | None = "auto"):
    apk = Path(apk)
    if scan_mib < 0 or scan_mib > 1024:
        raise ValueError("scan_mib must be between 0 and 1024")
    if not apk.is_file():
        raise FileNotFoundError(apk)
    digest = sha256_file(apk)
    if expected_sha256 and digest.lower() != expected_sha256.lower():
        raise ValueError(f"Source APK SHA256 mismatch: {digest} != {expected_sha256}")
    entries = []
    libraries = []
    candidate_hosts = []
    manifest_format = "absent"
    scanning = {"sampled_files": 0, "sampled_bytes": 0,
                "file_limit_bytes": scan_mib * 1024 * 1024,
                "mode": "bounded_heuristic_only"}
    with zipfile.ZipFile(apk) as archive:
        for info in archive.infolist():
            if info.is_dir():
                continue
            name = info.filename
            entry = {
                "path": name, "size": info.file_size,
                "compressed_size": info.compress_size,
                "crc32": f"{info.CRC:08x}",
                "unsafe_path": unsafe_zip_path(name)
            }
            entries.append(entry)
            if name == "AndroidManifest.xml":
                with archive.open(info) as file:
                    beginning = file.read(64)
                if beginning[:4] == b"\x03\x00\x08\x00":
                    manifest_format = "binary_axml"
                elif beginning.lstrip().startswith(b"<?xml") or beginning.lstrip().startswith(b"<manifest"):
                    manifest_format = "plain_xml"
                else:
                    manifest_format = "unknown_binary"
            is_lib = name.startswith("lib/") and name.endswith(".so")
            is_dex = bool(DEX_PATH.search(name))
            if is_lib:
                with archive.open(info) as file:
                    magic = file.read(5)
                libraries.append({
                    "path": name, "abi": name.split("/")[1] if name.count("/") >= 2 else "",
                    "size": info.file_size, "elf_magic": magic[:4] == b"\x7fELF",
                    "elf_class": {1: "ELF32", 2: "ELF64"}.get(magic[4] if len(magic) >= 5 else 0, "unknown"),
                })
            if scan_hosts and scan_mib and (is_lib or is_dex):
                with archive.open(info) as file:
                    hosts, scanned_bytes = read_hosts(file, min(info.file_size, scan_mib * 1024 * 1024))
                scanning["sampled_files"] += 1
                scanning["sampled_bytes"] += scanned_bytes
                for hostname, count in sorted(hosts.items()):
                    candidate_hosts.append({"source": name, "host": hostname, "string_occurrences": count})
    report = {
        "status": "static_only_not_offline_verified",
        "source_name": apk.name, "source_size": apk.stat().st_size,
        "source_sha256": digest, "manifest_format": manifest_format,
        "badging": get_badging(apk, aapt_tool),
        "zip_entries": len(entries),
        "unsafe_zip_paths": [row["path"] for row in entries if row["unsafe_path"]],
        "dex_entries": [row["path"] for row in entries if DEX_PATH.search(row["path"])],
        "abi": sorted({row["abi"] for row in libraries}),
        "native_library_count": len(libraries),
        "libsrc": [row for row in libraries if Path(row["path"]).name == "libSrc.so"],
        "rsb_smf_count": sum(row["path"].endswith(".rsb.smf") for row in entries),
        "rton_smf_count": sum(row["path"].endswith(".rton.smf") for row in entries),
        "candidate_hosts": sorted({row["host"] for row in candidate_hosts}),
        "scanning": scanning,
        "evidence_boundary": "ZIP headers, ELF header, optional aapt and bounded plaintext string scan only; not runtime behavior."
    }
    return report, entries, libraries, candidate_hosts


def write_csv(path: Path, rows: list, columns: list[str]):
    with path.open("w", newline="", encoding="utf-8-sig") as stream:
        writer = csv.DictWriter(stream, fieldnames=columns)
        writer.writeheader()
        writer.writerows(rows)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("apk", type=Path, help="Original APK (read-only)")
    parser.add_argument("--out", type=Path, default=Path("audit/local/offline/4.2.8"))
    parser.add_argument("--expected-sha256", default=SOURCE_SHA256,
                        help="Reject a different input by default; pass an empty string to disable")
    parser.add_argument("--scan-mib", type=int, default=8,
                        help="Maximum candidate-host scan per DEX/SO file, MiB")
    parser.add_argument("--no-host-scan", action="store_true")
    parser.add_argument("--aapt", default="auto",
                        help="Path to aapt/aapt2, 'auto', or 'disabled'")
    args = parser.parse_args()
    try:
        report, entries, libraries, hosts = audit_apk(
            args.apk, args.expected_sha256 or None, args.scan_mib,
            not args.no_host_scan, args.aapt
        )
    except (ValueError, OSError, zipfile.BadZipFile) as error:
        parser.error(str(error))
    args.out.mkdir(parents=True, exist_ok=True)
    write_csv(args.out / "apk_entries.csv", entries,
              ["path", "size", "compressed_size", "crc32", "unsafe_path"])
    write_csv(args.out / "native_libraries.csv", libraries,
              ["path", "abi", "size", "elf_magic", "elf_class"])
    write_csv(args.out / "candidate_hosts.csv", hosts,
              ["source", "host", "string_occurrences"])
    (args.out / "static_audit.json").write_text(
        json.dumps(report, indent=2, ensure_ascii=False) + "\n", encoding="utf-8"
    )
    print(json.dumps(report, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
