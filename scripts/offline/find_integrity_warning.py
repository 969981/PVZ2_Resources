#!/usr/bin/env python3
"""Locate (not bypass) exact anti-tamper UI text in a locally restored APK.

Outputs only ZIP member names, byte offsets and encoding labels; never
exports proprietary binary bytes, certificates, decoded code or game assets.
A no-match result is inconclusive: strings may be compressed within formats,
generated at runtime or encrypted.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
from zipfile import ZipFile

PHRASES = {
    "full_warning": "盗版游戏随时可能会崩溃，请使用正版游戏",
    "piracy_keyword": "盗版游戏",
    "genuine_keyword": "请使用正版游戏",
}
ENCODINGS = ("utf-8", "utf-16-le", "utf-16-be")
DEFAULT_MAX_MEMBER = 256 * 1024 * 1024


def scan_member(source, *, member: str, limit: int = 200):
    needles = [(key, enc, phrase.encode(enc))
               for key, phrase in PHRASES.items() for enc in ENCODINGS]
    overlap = max(len(x[2]) for x in needles) - 1
    tail = b""
    total = 0
    found = set()
    while True:
        data = source.read(1024 * 1024)
        if not data:
            break
        block = tail + data
        base = total - len(tail)
        for key, enc, needle in needles:
            start = 0
            while (index := block.find(needle, start)) >= 0:
                found.add((base + index, key, enc))
                if len(found) >= limit:
                    return [
                        {"member": member, "offset": offset,
                         "phrase_kind": key, "encoding": encoding}
                        for offset, key, encoding in sorted(found)
                    ]
                start = index + 1
        total += len(data)
        tail = block[-overlap:]
    return [{"member": member, "offset": offset,
             "phrase_kind": key, "encoding": encoding}
            for offset, key, encoding in sorted(found)]


def analyze(apk: Path, *, max_member_bytes: int = DEFAULT_MAX_MEMBER):
    if not apk.is_file():
        raise FileNotFoundError(apk)
    scanned = 0
    skipped = 0
    hits = []
    with ZipFile(apk) as z:
        for member in z.infolist():
            if member.is_dir():
                continue
            name = member.filename.lower()
            interesting = (name.endswith((".dex", ".so", ".xml", ".json", ".txt")) or
                           name in ("resources.arsc", "androidmanifest.xml"))
            if not interesting:
                continue
            if member.file_size > max_member_bytes:
                skipped += 1
                continue
            scanned += 1
            with z.open(member) as inp:
                hits.extend(scan_member(inp, member=member.filename))
    return {
        "status": "TEXT_LOCATIONS_ONLY_NOT_CAUSAL_EVIDENCE",
        "source_apk": apk.name,
        "scanned_members": scanned,
        "skipped_oversized_members": skipped,
        "matches": hits[:500],
        "total_matches": len(hits),
        "signature_check_site_verified": False,
        "apk_playable_verified": False,
    }


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk", type=Path, required=True)
    p.add_argument("--out", type=Path, required=True)
    p.add_argument("--max-member-mib", type=int, default=256)
    a = p.parse_args()
    if not 1 <= a.max_member_mib <= 512:
        p.error("max-member-mib must be between 1 and 512")
    result = analyze(a.apk, max_member_bytes=a.max_member_mib * 1024**2)
    a.out.parent.mkdir(parents=True, exist_ok=True)
    a.out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps({k: v for k, v in result.items() if k != "matches"}, ensure_ascii=False))


if __name__ == "__main__":
    main()
