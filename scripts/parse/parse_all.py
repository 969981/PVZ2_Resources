#!/usr/bin/env python3
"""One-command local orchestration of all Git-archived PVZ2 CHN 4.2.8 assets.

Restores only one shard at a time into a temporary directory. Verifies source
SHA256 and parses its members; keeps checkpointed metadata under --out/shards.
Missing Media-06 is explicitly reported, not represented as an empty archive.
"""
from __future__ import annotations
import argparse
import json
from pathlib import Path
import subprocess
import sys
import tempfile

try:
    from .parse_shard import run as parse_shard
    from .merge_parsed_reports import combine
except ImportError:
    from parse_shard import run as parse_shard
    from merge_parsed_reports import combine

REPO=Path(__file__).resolve().parents[2]

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--source",type=Path,default=REPO/"Unpack/CHN/V4.2.8")
    p.add_argument("--catalog",type=Path,default=REPO/"Catalog/CHN/V4.2.8/shards")
    p.add_argument("--out",type=Path,default=REPO/"audit/local/CHN-4.2.8/deep-parse")
    p.add_argument("--tempdir",type=Path,help="temporary location with enough space for the largest restored shard")
    p.add_argument("--workers",type=int,default=2)
    p.add_argument("--max-refs-per-json",type=int,default=24)
    p.add_argument("--resume",action="store_true")
    p.add_argument("--require-all",action="store_true",help="Fail on Media-06 instead of recording missing")
    a=p.parse_args()
    if a.tempdir and not a.tempdir.is_dir():p.error("--tempdir must already exist")
    if not a.source.is_dir():p.error("missing Git Unpack shard source")
    if not a.catalog.is_dir():p.error("missing catalog directory")
    if not 1<=a.workers<=8 or not 0<=a.max_refs_per_json<=200:
        p.error("workers 1..8 and max refs 0..200 required")
    for parent in (a.source.resolve(),a.catalog.resolve()):
        target=a.out.resolve()
        if parent==target or parent in target.parents or target in parent.parents:
            p.error("output cannot overlap source or Catalog")
    reports=a.out/"shards"
    reports.mkdir(parents=True,exist_ok=True)
    missing=[]
    scanned=[]
    for stage in ("Internal","Media"):
        for i in range(8):
            shard=f"{stage}-{i:02d}"
            src=a.source/stage/f"shard-{i:02d}"
            catalog=a.catalog/shard
            if not (src/"manifest.json").is_file() or not (catalog/"files.csv").is_file():
                missing.append(shard)
                print("MISSING",shard,flush=True)
                if a.require_all:raise ValueError("missing required "+shard)
                continue
            manifest=json.loads((src/"manifest.json").read_text(encoding="utf-8"))
            verified_source=json.loads((catalog/"summary.json").read_text(encoding="utf-8"))
            if manifest["archive_sha256"]!=verified_source["archive_sha256"]:
                raise ValueError("different archive from source index "+shard)
            target=reports/shard
            summary=target/"SUMMARY.json"
            if a.resume and summary.is_file() and all((target/f).is_file() for f in
                    ("files.csv","classes.csv","references.csv")):
                old=json.loads(summary.read_text(encoding="utf-8"))
                if old.get("source_archive_sha256")==manifest["archive_sha256"] and \
                    old.get("total_files")==verified_source["file_count"]:
                    print("RESUMED",shard,old["total_files"],flush=True)
                    scanned.append(shard)
                    continue
            with tempfile.TemporaryDirectory(prefix="pvz2-parse-"+shard+"-",dir=a.tempdir) as td:
                restored=Path(td)/"restored"
                subprocess.run([sys.executable,str(REPO/"scripts/archive/restore_git_shard.py"),
                                str(src),"--out",str(restored)],check=True)
                parsed=parse_shard(restored,catalog/"files.csv",target,a.workers,a.max_refs_per_json)
                assert parsed["total_files"]==verified_source["file_count"]
                print("COMPLETE",shard,parsed["total_files"],flush=True)
                scanned.append(shard)
    print("MISSING_SHARDS",missing,flush=True)
    if missing!=["Media-06"]:
        raise ValueError("unexpected shard coverage; adjust the source and re-audit before merging")
    final=combine(reports,a.out/"merged",a.catalog,expected=26774)
    print("ALL_ASSETS_ANALYZED",final["files_processed"],"shards",len(scanned),flush=True)

if __name__=="__main__":
    main()
