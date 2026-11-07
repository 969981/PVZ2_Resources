#!/usr/bin/env python3
"""Commit verified PNG files in bounded Git pushes, preserving original paths.

Intended only for repository-maintainer-approved files with redistribution
permission. The source file validation must complete BEFORE this script runs.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
import subprocess
import time

MIB = 1024 * 1024
FILE_LIMIT = 95 * MIB


def batches(files: list[Path], *, max_files: int = 60,
            max_bytes: int = 300 * MIB) -> list[list[Path]]:
    if max_files < 1 or max_bytes < 1:
        raise ValueError("batch limits must be positive")
    out: list[list[Path]] = []
    current: list[Path] = []
    size = 0
    for file in files:
        length = file.stat().st_size
        if length >= FILE_LIMIT:
            raise ValueError("PNG exceeds safe Git size ceiling: " + str(file))
        if length > max_bytes:
            raise ValueError("one PNG exceeds batch size limit: " + str(file))
        if current and (len(current) >= max_files or size + length > max_bytes):
            out.append(current)
            current = []
            size = 0
        current.append(file)
        size += length
    if current:
        out.append(current)
    return out


def git(*args: str, check: bool = True) -> subprocess.CompletedProcess:
    return subprocess.run(["git", *args], check=check, text=True, stdout=subprocess.PIPE,
                          stderr=subprocess.PIPE)


def publish(root: Path, manifest: Path, *, max_files: int, max_bytes: int,
            retries: int = 8) -> dict:
    repo = Path(git("rev-parse", "--show-toplevel").stdout.strip()).resolve()
    root = root.resolve(strict=True)
    manifest = manifest.resolve(strict=True)
    if root == repo or repo not in root.parents or root.parts[-1] != "PNG":
        raise ValueError("PNG directory must be a child of repository")
    if not root.relative_to(repo).as_posix().startswith("Images/CHN/V4.2.8/Media/shard-"):
        raise ValueError("unexpected public PNG directory")
    if manifest.parent != root.parent or manifest.name != "PNG-MANIFEST.csv":
        raise ValueError("PNG manifest must be sibling of the PNG directory")
    files = sorted((x for x in root.rglob("*") if x.is_file()), key=lambda x: x.as_posix())
    if not files or any(x.suffix.lower() != ".png" or x.is_symlink() for x in files):
        raise ValueError("PNG folder is empty or contains unexpected entries")
    groups = batches(files, max_files=max_files, max_bytes=max_bytes)
    groups.append([manifest])   # Manifest is committed only after all PNG batches succeed.
    committed = 0
    skipped = 0
    for batch_number, group in enumerate(groups, 1):
        relative = [x.relative_to(repo).as_posix() for x in group]
        git("add", "--sparse", "-f", "--", *relative)
        if git("diff", "--cached", "--quiet", check=False).returncode == 0:
            skipped += len(group)
            continue
        git("commit", "-m", f"data(png): publish licensed CHN 4.2.8 {root.parent.name} batch {batch_number}/{len(groups)}")
        for attempt in range(retries):
            git("fetch", "--no-tags", "--filter=blob:none", "origin", "master")
            git("rebase", "FETCH_HEAD")
            push = git("push", "origin", "HEAD:refs/heads/master", check=False)
            if push.returncode == 0:
                print("PUSH_OK", root.parent.name, batch_number,
                      "count", len(group), "sha", git("rev-parse", "--short", "HEAD").stdout.strip(), flush=True)
                committed += len(group)
                break
            if attempt == retries - 1:
                raise RuntimeError("Git push failed after retries: " + push.stderr[-1500:])
            time.sleep(8)
    return {"shard": root.parent.name, "png_total": len(files),
            "git_committed_paths_including_manifest": committed,
            "unchanged_paths": skipped, "batches": len(groups),
            "fully_staged": True}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, required=True)
    parser.add_argument("--manifest", type=Path, required=True)
    parser.add_argument("--max-files", type=int, default=60)
    parser.add_argument("--max-batch-mib", type=int, default=300)
    args = parser.parse_args()
    if not 1 <= args.max_files <= 200 or not 1 <= args.max_batch_mib <= 450:
        parser.error("invalid safety batch limit")
    print(json.dumps(publish(args.root, args.manifest, max_files=args.max_files,
                             max_bytes=args.max_batch_mib * MIB),
                     ensure_ascii=False), flush=True)


if __name__ == "__main__":
    main()
