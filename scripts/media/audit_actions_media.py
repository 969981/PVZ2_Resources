#!/usr/bin/env python3
"""Audit a local GitHub Actions media artifact without publishing source bytes.

All source bytes remain in the local workspace. A media header check is not
proof that the image can render or WEM audio can play.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path
import struct

FIELDS = ("stage", "shard", "path", "suffix", "size_bytes", "sha256", "status", "detail")
PNG = b"\x89PNG\r\n\x1a\n"


def classify(path: Path) -> tuple[str, str]:
    suffix = path.suffix.lower()
    if suffix == ".png":
        with path.open("rb") as stream:
            head = stream.read(24)
        if (len(head) < 24 or head[:8] != PNG or head[12:16] != b"IHDR"
                or struct.unpack(">I", head[8:12])[0] != 13):
            return "format-error", "invalid PNG signature/IHDR"
        width, height = struct.unpack(">II", head[16:24])
        if not 0 < width <= 65535 or not 0 < height <= 65535:
            return "format-error", "invalid PNG width/height"
        return "png-header-verified", f"{width}x{height}; pixels not decoded"
    if suffix == ".wem":
        with path.open("rb") as stream:
            head = stream.read(12)
        if len(head) != 12 or head[:4] not in (b"RIFF", b"RIFX") or head[8:12] != b"WAVE":
            return "format-error", "invalid WEM RIFF/WAVE header"
        return "wem-header-verified", "Wwise encoding/playback not checked"
    if suffix == ".json":
        try:
            with path.open("r", encoding="utf-8-sig") as stream:
                json.load(stream)
        except (UnicodeError, ValueError) as exc:
            return "format-error", f"invalid JSON: {type(exc).__name__}"
        return "json-parsed", "JSON syntax valid; gameplay meaning unverified"
    return "checksum-only", "no format-specific decoder applied"


def audit(root: Path, out: Path, *, expected: int | None = None,
          run_id: int = 42321977158, artifact_id: int = 13552674620) -> dict:
    root = root.resolve(strict=True)
    if not root.is_dir():
        raise ValueError("input must be a directory")
    out = out.resolve()
    if root == out or root in out.parents or out in root.parents:
        raise ValueError("source and output folders must not overlap")
    if any(p.is_symlink() for p in root.rglob("*")):
        raise ValueError("symlink in source artifact")
    files = sorted((p for p in root.rglob("*") if p.is_file()),
                   key=lambda p: p.relative_to(root).as_posix())
    if not files:
        raise ValueError("empty artifact")
    if expected is not None and len(files) != expected:
        raise ValueError(f"unexpected media file count: {len(files)} != {expected}")
    seen = set()
    count = Counter()
    suffixes = Counter()
    total = 0
    records = []
    for path in files:
        rel = path.relative_to(root).as_posix()
        key = rel.casefold()
        if key in seen:
            raise ValueError(f"case-colliding artifact path: {rel}")
        seen.add(key)
        sha = hashlib.sha256()
        size = 0
        with path.open("rb") as stream:
            for block in iter(lambda: stream.read(4 * 1024 * 1024), b""):
                sha.update(block)
                size += len(block)
        status, detail = classify(path)
        count[status] += 1
        suffixes[path.suffix.lower()] += 1
        total += size
        records.append({"stage": "Media", "shard": "06", "path": rel,
                        "suffix": path.suffix.lower(), "size_bytes": size,
                        "sha256": sha.hexdigest(), "status": status, "detail": detail})
    summary = {
        "schema": "pvz2-media-actions-audit-v1", "game": "PVZ2", "region": "CHN",
        "version": "4.2.8", "stage": "Media", "shard": "06",
        "source_run_id": run_id, "artifact_id": artifact_id,
        "source_type": "Actions artifact (NOT a Git shard archive)",
        "file_count": len(records), "total_size_bytes": total,
        "statuses": dict(sorted(count.items())),
        "suffix_counts": dict(sorted(suffixes.items())),
        "format_errors": count["format-error"],
        "archive_manifest_verified": False,
        "scope": "SHA256 of source Artifact files and bounded format checks; no game asset bytes included",
        "next_gate": "Archive, restore, source-manifest SHA256 comparison and playable-media checks remain separate"
    }
    out.mkdir(parents=True, exist_ok=True)
    with (out / "files.csv").open("w", newline="", encoding="utf-8-sig") as stream:
        writer = csv.DictWriter(stream, fieldnames=FIELDS)
        writer.writeheader()
        writer.writerows(records)
    (out / "SUMMARY.json").write_text(json.dumps(summary, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    return summary


def main() -> None:
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("input", type=Path)
    p.add_argument("--out", required=True, type=Path)
    p.add_argument("--expected-count", type=int)
    p.add_argument("--source-run-id", type=int, default=42321977158)
    p.add_argument("--artifact-id", type=int, default=13552674620)
    p.add_argument("--fail-on-format-error", action="store_true")
    args = p.parse_args()
    result = audit(args.input, args.out, expected=args.expected_count,
                   run_id=args.source_run_id, artifact_id=args.artifact_id)
    print(json.dumps(result, ensure_ascii=False))
    if args.fail_on_format_error and result["format_errors"]:
        raise SystemExit(2)


if __name__ == "__main__":
    main()
