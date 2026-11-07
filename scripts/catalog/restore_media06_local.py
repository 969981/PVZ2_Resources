#!/usr/bin/env python3
"""Recover Media-06 real files from a downloaded Actions Artifact.

Uses the independently SHA256-audited source CSV. This tool does not publish
files, create Git commits, or infer redistribution permissions. Files preserve
their source relative paths under Readable/CHN/V4.2.8/Media/shard-06/.
"""
from __future__ import annotations

import argparse
import csv
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import shutil

MIB = 1024 * 1024
HEX_SHA = re.compile(r"[0-9a-f]{64}\Z")


def safe_relative(name: str) -> Path:
    if not isinstance(name, str) or not name or "\\" in name or "\x00" in name or ":" in name:
        raise ValueError("Unsafe artifact path: " + repr(name))
    p = PurePosixPath(name)
    if p.is_absolute() or not p.parts or any(x in ("", ".", "..") for x in p.parts):
        raise ValueError("Unsafe artifact path: " + repr(name))
    return Path(*p.parts)


def sha256(path: Path) -> tuple[int, str]:
    h = hashlib.sha256()
    length = 0
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(4 * MIB), b""):
            h.update(block)
            length += len(block)
    return length, h.hexdigest()


def restore(artifact: Path, catalog: Path, destination: Path, *,
            extensions: set[str] | None = None, copy: bool = False,
            expected_count: int | None = 501) -> dict:
    artifact = artifact.resolve(strict=True)
    catalog = catalog.resolve(strict=True)
    destination = destination.resolve()
    if not artifact.is_dir():
        raise ValueError("Artifact path is not a directory")
    if artifact == destination or artifact in destination.parents or destination in artifact.parents:
        raise ValueError("Artifact and output directories overlap")
    if destination == catalog.parent or destination in catalog.parents:
        raise ValueError("Output overlaps catalog")
    extensions = {x.lower() for x in (extensions or set())}
    if any(not x.startswith(".") for x in extensions):
        raise ValueError("Extensions must start with a dot")

    rows = []
    seen = set()
    with catalog.open("r", newline="", encoding="utf-8-sig") as f:
        reader = csv.DictReader(f)
        required = {"stage", "shard", "path", "suffix", "size_bytes", "sha256"}
        if not reader.fieldnames or not required.issubset(reader.fieldnames):
            raise ValueError("Unexpected Media-06 catalog schema")
        for row in reader:
            if row["stage"] != "Media" or str(row["shard"]).zfill(2) != "06":
                raise ValueError("Catalog contains another source shard")
            rel = safe_relative(row["path"])
            key = rel.as_posix().casefold()
            if key in seen:
                raise ValueError("Duplicate source artifact path: " + key)
            seen.add(key)
            length = int(row["size_bytes"])
            if length < 0 or not HEX_SHA.fullmatch(row["sha256"]):
                raise ValueError("Invalid source size/digest")
            if row["suffix"].lower() != rel.suffix.lower():
                raise ValueError("Filename suffix/catalog disagreement: " + str(rel))
            rows.append((rel, length, row["sha256"]))

    if expected_count is not None and len(rows) != expected_count:
        raise ValueError(f"Unexpected catalog count: {len(rows)} != {expected_count}")
    artifact_files = set()
    for p in artifact.rglob("*"):
        if p.is_symlink():
            raise ValueError("Symlink in artifact")
        if p.is_file():
            artifact_files.add(p.relative_to(artifact).as_posix())
    if artifact_files != {rel.as_posix() for rel, _, _ in rows}:
        missing = sorted({rel.as_posix() for rel, _, _ in rows} - artifact_files)
        extra = sorted(artifact_files - {rel.as_posix() for rel, _, _ in rows})
        raise ValueError(f"Artifact/catalog filenames differ; missing={missing[:5]}, extra={extra[:5]}")
    selected = 0
    reused = 0
    created = 0
    skipped = 0
    checked_bytes = 0
    for rel, size, expected_sha in rows:
        if extensions and rel.suffix.lower() not in extensions:
            skipped += 1
            continue
        original = artifact / rel
        if original.is_symlink() or not original.is_file() or artifact not in original.resolve().parents:
            raise ValueError("Unsafe/missing source " + str(rel))
        actual_bytes, actual_sha = sha256(original)
        if (actual_bytes, actual_sha) != (size, expected_sha):
            raise ValueError("Original Artifact checksum mismatch: " + str(rel))
        selected += 1
        checked_bytes += size
        if copy:
            target = destination / "Media" / "shard-06" / rel
            if target.is_symlink():
                raise ValueError("Destination is a symlink: " + str(target))
            if target.exists():
                if not target.is_file() or sha256(target) != (size, expected_sha):
                    raise ValueError("Destination conflicts: " + str(rel))
                reused += 1
                continue
            target.parent.mkdir(parents=True, exist_ok=True)
            # Parent directories from an untrusted previous run must not be symlinks.
            for parent in target.parents:
                if parent == destination.parent:
                    break
                if parent.is_symlink():
                    raise ValueError("Destination parent is a symlink: " + str(parent))
            temporary = target.with_name(target.name + ".partial")
            if temporary.exists():
                raise ValueError("Stale partial output: " + str(temporary))
            try:
                with original.open("rb") as src, temporary.open("xb") as dest:
                    shutil.copyfileobj(src, dest, 4 * MIB)
                if sha256(temporary) != (size, expected_sha):
                    raise ValueError("Copied output checksum mismatch: " + str(rel))
                os.replace(temporary, target)
                created += 1
            finally:
                temporary.unlink(missing_ok=True)
    return {
        "source": "CHN 4.2.8 Media-06 audited Actions artifact",
        "catalog_rows": len(rows),
        "selected_files": selected,
        "verified_source_bytes": checked_bytes,
        "filtered_files": skipped,
        "created_files": created,
        "reused_files": reused,
        "mode": "local-copy" if copy else "audit-only",
        "output_root": str(destination / "Media" / "shard-06"),
        "note": "Local recovery only; no Git commit or public game asset redistribution."
    }


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--artifact", type=Path, required=True)
    p.add_argument("--catalog", type=Path,
                   default=Path("Catalog/CHN/V4.2.8/recovery/Media-06/files.csv"))
    p.add_argument("--out", type=Path, default=Path("Readable/CHN/V4.2.8"))
    p.add_argument("--extensions", default="", help="Optional comma-separated types: .png,.wem,.json")
    p.add_argument("--expected-count", type=int, default=501)
    p.add_argument("--copy", action="store_true", help="Actually restore files after verification")
    p.add_argument("--report", type=Path)
    args = p.parse_args()
    report = restore(args.artifact, args.catalog, args.out,
                     extensions={x.strip().lower() for x in args.extensions.split(",") if x.strip()},
                     copy=args.copy, expected_count=args.expected_count)
    if args.report:
        args.report.parent.mkdir(parents=True, exist_ok=True)
        args.report.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(report, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
