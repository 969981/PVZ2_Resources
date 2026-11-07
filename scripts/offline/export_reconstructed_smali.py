#!/usr/bin/env python3
"""Export all six APKTool Smali directories to a versioned, Git-friendly project.

Input must be the exact known CHN 4.2.8 APK and a freshly decoded APKTool
worktree. Export only rebuildable Smali, APKTool metadata and manifest; avoid
copying original opaque assets, .so, raw DEX or whole commercial APK.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import sys

SOURCE_SHA256 = "64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
DEX_SOURCES = ("smali", "smali_classes2", "smali_classes3", "smali_classes4",
               "smali_classes5", "smali_classes6")
SMALI_DIR = re.compile(r"smali(?:_classes[2-9][0-9]*)?\Z")


def sha256_file(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def export(decoded: Path, source_apk: Path, output: Path) -> dict:
    if not decoded.is_dir() or not source_apk.is_file():
        raise ValueError("Decoded APKTool project or original APK does not exist")
    source_sha = sha256_file(source_apk)
    if source_sha != SOURCE_SHA256:
        raise ValueError("Source APK SHA256 mismatch; refusing to mix game builds")
    decoded = decoded.resolve()
    output = output.resolve()
    if output == decoded or output.is_relative_to(decoded):
        raise ValueError("Destination must not be inside the APKTool source directory")
    actual_dirs = sorted(p.name for p in decoded.iterdir()
                         if p.is_dir() and SMALI_DIR.fullmatch(p.name))
    if sorted(actual_dirs) != sorted(DEX_SOURCES):
        raise ValueError(f"Expected six Smali roots, found {actual_dirs}")
    metadata = decoded / "apktool.yml"
    if not metadata.is_file():
        raise ValueError("Missing APKTool metadata")
    if output.exists():
        shutil.rmtree(output)
    output.mkdir(parents=True)
    shutil.copy2(metadata, output / "apktool.yml")
    manifest = decoded / "AndroidManifest.xml"
    if manifest.is_file():
        shutil.copy2(manifest, output / "AndroidManifest.xml")

    totals = {}
    total_bytes = 0
    aggregate = hashlib.sha256()
    for dirname in DEX_SOURCES:
        root = decoded / dirname
        entries = sorted(root.rglob("*.smali"))
        if not entries:
            raise ValueError(f"Empty Smali root: {dirname}")
        for file in entries:
            if file.is_symlink():
                raise ValueError(f"Refusing Smali symlink: {file}")
            rel = file.relative_to(decoded)
            target = output / rel
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy2(file, target)
            raw = file.read_bytes()
            total_bytes += len(raw)
            aggregate.update(rel.as_posix().encode("utf-8"))
            aggregate.update(b"\0")
            aggregate.update(hashlib.sha256(raw).digest())
        totals[dirname] = len(entries)
    total = sum(totals.values())
    if total < 16000:
        raise ValueError(f"Recovered only {total} Smali classes; baseline is 16,375")
    # Include sources as Git files, not giant ZIP, to allow browsing and editing.
    report = {
        "status": "SIX_DEX_SMALI_EXPORTED_FOR_SOURCE_CONTROL",
        "source_apk_sha256": source_sha,
        "decode_tool": "APKTool 2.12.1",
        "root_count": len(DEX_SOURCES),
        "smali_files": total,
        "smali_total_bytes": total_bytes,
        "smali_by_dex": totals,
        "tree_content_sha256": aggregate.hexdigest(),
        "apktool_metadata_present": True,
        "manifest_present": manifest.is_file(),
        "raw_dex_or_native_libraries_included": False,
        "raw_assets_included": False,
        "roundtrip_test": "Required before Git commit",
        "playable_offline_test": "Not established; original-signature warning remains",
    }
    (output / "SOURCE_PROVENANCE.json").write_text(
        json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    (output / ".gitignore").write_text(
        "/build/\n/dist/\n*.apk\n*.dex\n", encoding="utf-8")
    return report


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--decoded", type=Path, required=True)
    parser.add_argument("--source-apk", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    print(json.dumps(export(args.decoded, args.source_apk, args.output),
                     ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
