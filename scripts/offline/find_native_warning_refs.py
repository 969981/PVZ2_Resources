#!/usr/bin/env python3
"""Locate check_sign_failed string references in original APK DEX and native SO.

Metadata only: never export original binary, disassembly, certificate bytes,
private game resources or other proprietary payloads.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
from zipfile import ZipFile

NEEDLES = {
    "check_sign_failed": "check_sign_failed",
    "check_sign": "check_sign",
}
ENCODINGS = ("utf-8", "utf-16-le", "utf-16-be")


def offsets(source, needles, limit=64):
    terms = [(key, encoding, phrase.encode(encoding))
             for key, phrase in needles.items() for encoding in ENCODINGS]
    overlap = max(len(p) for _, _, p in terms) - 1
    tail = b""
    read_total = 0
    matches = set()
    while True:
        chunk = source.read(1024 * 1024)
        if not chunk:
            break
        block = tail + chunk
        base = read_total - len(tail)
        for key, encoding, pat in terms:
            idx = 0
            while (at := block.find(pat, idx)) >= 0:
                matches.add((key, encoding, base + at))
                if len(matches) >= limit:
                    break
                idx = at + 1
        read_total += len(chunk)
        tail = block[-overlap:]
    return [{"kind": key, "encoding": encoding, "offset": position}
            for key, encoding, position in sorted(matches)][:limit]


def scan(apk: Path) -> dict:
    found = []
    seen = 0
    with ZipFile(apk) as z:
        for info in z.infolist():
            name = info.filename
            if not (name.endswith(".so") or name.endswith(".dex")):
                continue
            seen += 1
            if info.file_size > 512*1024*1024:
                continue
            with z.open(info) as src:
                entries = offsets(src, NEEDLES)
            if entries:
                found.append({"member": name, "references": entries})
    return {
        "status": "STRING_REFERENCES_ONLY_CALLER_NOT_VERIFIED",
        "dex_and_so_examined": seen,
        "matching_members": found,
        "anti_tamper_cause_verified": False,
        "gameplay_verified": False,
    }


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--apk",required=True,type=Path)
    p.add_argument("--out",required=True,type=Path)
    a=p.parse_args()
    report=scan(a.apk)
    a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"status":report["status"],
                      "dex_and_so_examined":report["dex_and_so_examined"],
                      "matches":len(report["matching_members"])}))


if __name__=="__main__":
    main()
