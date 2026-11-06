#!/usr/bin/env python3
"""Read-only APK ZIP inventory, selected file headers, and SHA256."""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from pathlib import Path
import zipfile

def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as f:
        for data in iter(lambda: f.read(4 * 1024 * 1024), b""):
            digest.update(data)
    return digest.hexdigest()

def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("apk", type=Path)
    parser.add_argument("--out", type=Path, default=Path("audit/local"))
    parser.add_argument("--full-crc", action="store_true")
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    rows = []
    heads = []
    with zipfile.ZipFile(args.apk) as archive:
        for info in archive.infolist():
            if info.is_dir():
                continue
            rows.append({
                "path": info.filename, "size_bytes": info.file_size,
                "compressed_bytes": info.compress_size, "crc32": f"{info.CRC:08X}",
                "compression_method": info.compress_type
            })
            if info.filename.startswith("assets/") and info.filename.endswith(".smf"):
                with archive.open(info) as member:
                    data = member.read(64)
                heads.append({
                    "path": info.filename, "header_hex": data.hex(" "),
                    "header_ascii": data[:4].decode("ascii", "replace")
                })
        bad = archive.testzip() if args.full_crc else None
    for filename, data, columns in (
        ("apk_filelist.csv", rows, ["path", "size_bytes", "compressed_bytes", "crc32", "compression_method"]),
        ("apk_headers.csv", heads, ["path", "header_hex", "header_ascii"])
    ):
        with (args.out / filename).open("w", encoding="utf-8-sig", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=columns)
            writer.writeheader()
            writer.writerows(data)
    result = {
        "source_apk_filename": args.apk.name, "source_apk_bytes": args.apk.stat().st_size,
        "source_apk_sha256": sha256(args.apk),
        "zip_entries": len(rows),
        "smf": sum(r["path"].endswith(".smf") for r in rows),
        "rsb_smf": sum(r["path"].endswith(".rsb.smf") for r in rows),
        "rton_smf": sum(r["path"].endswith(".rton.smf") for r in rows),
        "crc_check": "not_run" if not args.full_crc else ("ok" if bad is None else bad),
        "scope": "outer ZIP only"
    }
    (args.out / "apk_audit.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2), encoding="utf-8"
    )
    print(json.dumps(result, ensure_ascii=False, indent=2))
    if bad is not None:
        raise SystemExit(1)

if __name__ == "__main__":
    main()
