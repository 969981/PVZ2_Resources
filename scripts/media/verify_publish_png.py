#!/usr/bin/env python3
"""Validate extracted PNG pixels against an actual source CSV before publication.

Works with the source-backed Media shard catalog and the separately audited
Media-06 Actions artifact. Neither PNG header recognition nor SHA alone is
counted as successful pixel decoding. Requires Pillow.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from pathlib import Path, PurePosixPath

COLUMNS = ("shard", "original_path", "size_bytes", "sha256", "width",
           "height", "mode", "decode_status")
MIB = 1024 * 1024


def safe_path(name: str) -> Path:
    if not isinstance(name, str) or not name or "\\" in name or "\x00" in name or ":" in name:
        raise ValueError("unsafe PNG path")
    path = PurePosixPath(name)
    if path.is_absolute() or not path.parts or any(x in (".", "..") for x in path.parts):
        raise ValueError("unsafe PNG path: " + name)
    if path.parts[0] != "PNG" or path.suffix.lower() != ".png":
        raise ValueError("not a PNG/ relative path: " + name)
    return Path(*path.parts)


def sha256(path: Path) -> tuple[int, str]:
    digest = hashlib.sha256()
    size = 0
    with path.open("rb") as source:
        for block in iter(lambda: source.read(4 * MIB), b""):
            digest.update(block)
            size += len(block)
    return size, digest.hexdigest()


def verify(root: Path, catalog: Path, shard: str, *, expected: int | None = None) -> list[dict]:
    from PIL import Image

    root = root.resolve(strict=True)
    if not root.is_dir():
        raise ValueError("PNG root must be a directory")
    records = []
    paths = set()
    with catalog.open("r", newline="", encoding="utf-8-sig") as source:
        reader = csv.DictReader(source)
        if not reader.fieldnames:
            raise ValueError("empty CSV")
        media06 = "path" in reader.fieldnames and "original_path" not in reader.fieldnames
        for row in reader:
            if row.get("shard", "").zfill(2) != shard:
                raise ValueError("wrong shard in catalog")
            if row.get("stage") != "Media":
                raise ValueError("not a Media catalog")
            path_raw = row["path"] if media06 else row["original_path"]
            if row["suffix"].lower() != ".png":
                continue
            if not media06 and row["format"] != "PNG":
                raise ValueError("mismatched PNG catalog format")
            relative = safe_path(path_raw)
            if relative.as_posix().casefold() in paths:
                raise ValueError("case-folded duplicate PNG: " + str(relative))
            paths.add(relative.as_posix().casefold())
            file = root / relative
            if file.is_symlink() or not file.is_file() or root not in file.resolve().parents:
                raise ValueError("missing or unsafe PNG: " + str(relative))
            size, digest = sha256(file)
            if (size, digest) != (int(row["size_bytes"]), row["sha256"]):
                raise ValueError("PNG source hash mismatch: " + str(relative))
            try:
                with Image.open(file) as image:
                    if image.format != "PNG":
                        raise ValueError("not decoded as PNG")
                    image.verify()
                with Image.open(file) as image:
                    image.load()
                    width, height, mode = image.width, image.height, image.mode
            except Exception as exc:
                raise ValueError("PNG full pixel decode failed: " + str(relative)) from exc
            records.append({"shard": shard, "original_path": relative.as_posix(),
                            "size_bytes": size, "sha256": digest,
                            "width": width, "height": height, "mode": mode,
                            "decode_status": "pillow-verified-and-loaded"})
    if not records:
        raise ValueError("catalog had no PNG entries")
    if expected is not None and len(records) != expected:
        raise ValueError(f"PNG count mismatch: {len(records)} != {expected}")
    actual = {p.relative_to(root).as_posix().casefold() for p in root.rglob("*")
              if p.is_file() and p.suffix.lower() == ".png"}
    if actual != paths:
        raise ValueError(f"PNG file set differs from source catalog ({len(actual)} vs {len(paths)})")
    return sorted(records, key=lambda row: row["original_path"])


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--root", required=True, type=Path)
    p.add_argument("--catalog", required=True, type=Path)
    p.add_argument("--shard", required=True)
    p.add_argument("--out", required=True, type=Path)
    p.add_argument("--expected", type=int)
    args = p.parse_args()
    if len(args.shard) != 2 or not args.shard.isdigit():
        p.error("--shard requires 00..07")
    rows = verify(args.root, args.catalog, args.shard, expected=args.expected)
    args.out.parent.mkdir(parents=True, exist_ok=True)
    if args.out.resolve() == args.root.resolve() or args.out.resolve() in args.root.resolve().parents:
        p.error("report cannot overwrite PNG directory")
    with args.out.open("w", newline="", encoding="utf-8-sig") as target:
        writer = csv.DictWriter(target, fieldnames=COLUMNS)
        writer.writeheader()
        writer.writerows(rows)
    print(json.dumps({"shard": args.shard, "images_pixel_decoded": len(rows),
                      "total_source_bytes": sum(r["size_bytes"] for r in rows),
                      "manifest": str(args.out)}, ensure_ascii=False))


if __name__ == "__main__":
    main()
