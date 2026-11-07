#!/usr/bin/env python3
"""Restore all indexed CHN 4.2.8 individual files locally, one verified shard at a time.

This is a local extraction/export tool. It never commits or uploads game files.
Missing Media shards remain explicitly missing in the audit, not counted as
zero-length or a success. Each file is verified against the committed CSV.
"""
from __future__ import annotations
import argparse
import csv
import json
from pathlib import Path
import subprocess
import sys
import tempfile

ROOT=Path(__file__).resolve().parents[2]
MIB=1024*1024

def run(args):
    source=args.source.resolve()
    catalog=args.catalog.resolve()
    output=args.out.resolve()
    if not source.is_dir() or not catalog.is_dir():
        raise ValueError("source / catalog directory missing")
    for forbidden in (source,catalog):
        if output==forbidden or forbidden in output.parents or output in forbidden.parents:
            raise ValueError("output and source/catalog must be separate directories")
    if not 1<=args.max_file_mib<=95:
        raise ValueError("max-file-mib must be 1..95")
    stages=args.stages
    selected_extensions={e.strip().lower() for e in args.extensions.split(",") if e.strip()}
    if any(not e.startswith(".") for e in selected_extensions):
        raise ValueError("extensions must be dot-prefixed, e.g. .png,.wem")
    results=[]
    total=0
    planned_total=0
    for stage in stages:
        for shard in range(8):
            name=f"{stage}-{shard:02d}"
            origin=source/stage/f"shard-{shard:02d}"
            index=catalog/"shards"/name
            manifest=origin/"manifest.json"
            if not manifest.is_file() or not (index/"files.csv").is_file():
                results.append({"stage":stage,"shard":shard,"status":"missing",
                    "manifest":manifest.is_file(),"catalog":(index/"files.csv").is_file()})
                print("MISSING",name,flush=True)
                if args.require_all:
                    raise ValueError("missing required shard "+name)
                continue
            meta=json.loads(manifest.read_text(encoding="utf-8"))
            summary=json.loads((index/"summary.json").read_text(encoding="utf-8"))
            if (meta["stage"]!=stage or meta["shard"]!=shard
                or summary["archive_sha256"]!=meta["archive_sha256"]
                or summary["file_count"]!=meta["source_file_count"]):
                raise ValueError("archive/catalog disagreement: "+name)
            expected_selected=summary["git_size_eligible"]
            expected_oversize=summary["git_size_ineligible"]
            expected_filtered=0
            if selected_extensions or args.max_file_mib!=95:
                expected_selected=expected_oversize=expected_filtered=0
                with (index/"files.csv").open("r",encoding="utf-8-sig",newline="") as csv_file:
                    for row in csv.DictReader(csv_file):
                        size=int(row["size_bytes"])
                        if size>=args.max_file_mib*MIB:
                            expected_oversize+=1
                        elif selected_extensions and row["suffix"].lower() not in selected_extensions:
                            expected_filtered+=1
                        else:
                            expected_selected+=1
                if expected_selected+expected_oversize+expected_filtered!=summary["file_count"]:
                    raise ValueError("source CSV count does not match summary: "+name)
            planned_total+=expected_selected
            if args.dry_run:
                results.append({"stage":stage,"shard":shard,"status":"planned",
                    "source_files":summary["file_count"],
                    "would_export_files":expected_selected,"source_bytes":summary["total_size_bytes"]})
                continue
            with tempfile.TemporaryDirectory(prefix="pvz2-"+name+"-",dir=args.temporary) as td:
                temp=Path(td)
                recovered=temp/"restored"
                subprocess.run([
                    sys.executable,str(ROOT/"scripts/archive/restore_git_shard.py"),
                    str(origin),"--out",str(recovered)
                ],check=True)
                report=temp/"files-verified.json"
                command=[
                    sys.executable,str(ROOT/"scripts/catalog/materialize_readable.py"),
                    "--restored",str(recovered),"--catalog",str(index/"files.csv"),
                    "--out",str(output),"--max-file-mib",str(args.max_file_mib),
                    "--report",str(report),"--copy",
                ]
                if selected_extensions:
                    command.extend(["--extensions",",".join(sorted(selected_extensions))])
                subprocess.run(command,check=True,stdout=subprocess.DEVNULL)
                actual=json.loads(report.read_text(encoding="utf-8"))
                if (actual["files_indexed"]!=summary["file_count"]
                    or actual["excluded_by_size"]!=expected_oversize
                    or actual["excluded_by_extension"]!=expected_filtered
                    or actual["copied_or_verified"]!=expected_selected):
                    raise ValueError("copied file verification mismatch "+name)
                record={"stage":stage,"shard":shard,"status":"verified",
                        "source_files":summary["file_count"],
                        "exported_files":actual["copied_or_verified"],
                        "exported_bytes":actual["selected_total_bytes"],
                        "source_archive_sha256":meta["archive_sha256"]}
                total+=record["exported_files"]
                results.append(record)
                print("VERIFIED",name,record["exported_files"],flush=True)
    report={"game":"PVZ2","version":"CHN 4.2.8","mode":"dry-run" if args.dry_run else "local-file-export",
            "total_exported_files":total,"total_planned_files":planned_total,
            "extensions":sorted(selected_extensions),"missing_shards":[f"{x['stage']}-{x['shard']:02d}" for x in results if x["status"]=="missing"],
            "shards":results,
            "note":"Local SHA256-verified restoration only; no public game-asset publication."}
    target=args.report.resolve()
    target.parent.mkdir(parents=True,exist_ok=True)
    target.write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("REPORT",target,flush=True)
    if not args.dry_run and not any(x["status"]=="verified" for x in results):
        raise ValueError("No shards restored")
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--source",type=Path,default=ROOT/"Unpack/CHN/V4.2.8")
    p.add_argument("--catalog",type=Path,default=ROOT/"Catalog/CHN/V4.2.8")
    p.add_argument("--out",type=Path,default=ROOT/"Readable/CHN/V4.2.8")
    p.add_argument("--report",type=Path,default=ROOT/"audit/local/CHN-4.2.8/individual-export.json")
    p.add_argument("--temporary",type=Path,default=None)
    p.add_argument("--stages",nargs="+",choices=("Internal","Media"),default=["Internal","Media"])
    p.add_argument("--max-file-mib",type=int,default=95)
    p.add_argument("--extensions",default="",help="Optional comma-separated suffixes, e.g. .png,.wem")
    p.add_argument("--dry-run",action="store_true")
    p.add_argument("--require-all",action="store_true",
                   help="Fail if any of the eight stage shards is absent")
    a=p.parse_args()
    if a.temporary and not a.temporary.is_dir():p.error("--temporary must exist")
    run(a)
if __name__=="__main__":main()
