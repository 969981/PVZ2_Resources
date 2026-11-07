#!/usr/bin/env python3
"""Parse every catalogued file from one SHA256-restored PvZ2 CHN 4.2.8 shard.

Outputs lightweight CSV/JSON metadata, class histograms and a bounded sample
of exact RTID references; never writes original media bytes to Git.
"""
from __future__ import annotations
import argparse
from collections import Counter
from concurrent.futures import ThreadPoolExecutor
import csv
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import sys

from asset_formats import inspect

MIB=1024*1024
COLUMNS=["region","version","stage","shard","original_path","format","category",
         "size_bytes","sha256","parser_status","metadata_json"]
CLASS_COLS=["stage","shard","original_path","objclass","object_count"]
REF_COLS=["stage","shard","original_path","object_index","field_path","rtid","alias","namespace"]
SHA=re.compile("[0-9a-f]{64}\\Z")

def safe_member(root,orig):
    if "\\" in orig or "\x00" in orig:raise ValueError("unsafe catalog path")
    p=PurePosixPath(orig)
    if p.is_absolute() or not p.parts or any(c in (".","..") for c in p.parts):
        raise ValueError("unsafe catalog path")
    target=root.joinpath(*p.parts)
    if target.is_symlink() or not target.is_file() or root not in target.resolve().parents:
        raise ValueError("catalog source is missing/unsafe: "+orig)
    return target

def sha256(path):
    h=hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda:f.read(4*MIB),b""):h.update(block)
    return h.hexdigest()

def parse_entry(row,root,max_refs):
    path=safe_member(root,row["original_path"])
    byte_count=int(row["size_bytes"])
    digest=row["sha256"]
    if not SHA.fullmatch(digest) or byte_count<0:raise ValueError("invalid catalog size/hash")
    if path.stat().st_size!=byte_count or sha256(path)!=digest:
        raise ValueError("critical source integrity mismatch: "+row["original_path"])
    status,meta,classes,refs=inspect(path,row["format"],max_refs)
    return row,status,meta,classes,refs

def run(root,catalog,out,workers=2,max_refs=24,strict=False):
    if not 1<=workers<=8:raise ValueError("workers must be 1..8")
    if not 0<=max_refs<=200:raise ValueError("max refs must be 0..200")
    root=root.resolve(strict=True)
    if not catalog.is_file():raise ValueError("catalog not found")
    summary=json.loads((catalog.parent/"summary.json").read_text(encoding="utf-8"))
    stage=summary["stage"];shard=f"{int(summary['shard']):02d}"
    rows=[]
    seen=set()
    with catalog.open("r",encoding="utf-8-sig",newline="") as source:
        for row in csv.DictReader(source):
            rel=row["original_path"]
            if (row["stage"],row["shard"])!=(stage,shard):
                raise ValueError("catalog mixes stage/shard")
            if row["archive_sha256"]!=summary["archive_sha256"]:
                raise ValueError("archive checksum differs from catalog")
            if rel in seen:raise ValueError("duplicate source file "+rel)
            seen.add(rel)
            rows.append(row)
    if len(rows)!=summary["file_count"]:
        raise ValueError("indexed source file count mismatch")
    out.mkdir(parents=True,exist_ok=True)
    tmp=[out/("files.csv.part"),out/("classes.csv.part"),out/("references.csv.part")]
    totals=Counter()
    kinds=Counter()
    refs_total=0
    sampled=0
    try:
        with tmp[0].open("w",encoding="utf-8-sig",newline="") as fa,\
             tmp[1].open("w",encoding="utf-8-sig",newline="") as fb,\
             tmp[2].open("w",encoding="utf-8-sig",newline="") as fc:
            fw=csv.DictWriter(fa,fieldnames=COLUMNS);fw.writeheader()
            cw=csv.DictWriter(fb,fieldnames=CLASS_COLS);cw.writeheader()
            rw=csv.DictWriter(fc,fieldnames=REF_COLS);rw.writeheader()
            with ThreadPoolExecutor(max_workers=workers) as pool:
                for row,status,meta,classes,refs in pool.map(
                    lambda row:parse_entry(row,root,max_refs),rows):
                    totals["files"]+=1
                    totals["status:"+status]+=1
                    totals["format:"+row["format"]]+=1
                    if status=="parse-error":totals["parse_errors"]+=1
                    if status=="unresolved":totals["unresolved"]+=1
                    refs_total+=int(meta.get("rtid_total",0))
                    kinds.update(classes)
                    fw.writerow({"region":row["region"],"version":row["version"],"stage":stage,
                        "shard":shard,"original_path":row["original_path"],"format":row["format"],
                        "category":row["category"],"size_bytes":row["size_bytes"],
                        "sha256":row["sha256"],"parser_status":status,
                        "metadata_json":json.dumps(meta,ensure_ascii=False,separators=(",",":"))})
                    for objclass,number in classes.items():
                        cw.writerow({"stage":stage,"shard":shard,"original_path":row["original_path"],
                                     "objclass":objclass,"object_count":number})
                        totals["class_rows"]+=1
                    for objidx,field,rtid,alias,namespace in refs:
                        rw.writerow({"stage":stage,"shard":shard,"original_path":row["original_path"],
                            "object_index":objidx,"field_path":field,"rtid":rtid,
                            "alias":alias,"namespace":namespace})
                        sampled+=1
        for source,target in zip(tmp,[out/"files.csv",out/"classes.csv",out/"references.csv"]):
            os.replace(source,target)
    finally:
        for f in tmp:f.unlink(missing_ok=True)
    if totals["files"]!=len(rows):raise ValueError("processed source file count mismatch")
    report={
        "region":"CHN","version":"4.2.8","stage":stage,"shard":shard,
        "source_archive_sha256":summary["archive_sha256"],
        "source_catalog_sha256":sha256(catalog),
        "total_files":totals["files"],"source_files_sha256_verified":totals["files"],
        "statuses":{k.removeprefix("status:"):v for k,v in sorted(totals.items()) if k.startswith("status:")},
        "formats":{k.removeprefix("format:"):v for k,v in sorted(totals.items()) if k.startswith("format:")},
        "objclass_totals":dict(kinds.most_common(75)),"class_csv_rows":totals["class_rows"],
        "rtid_references_found":refs_total,"rtid_references_exported":sampled,
        "rtid_references_not_exported":refs_total-sampled,
        "parse_errors":totals["parse_errors"],"unresolved":totals["unresolved"],
        "parsing_boundaries":[
            "No audio waveform decoded (WEM RIFF/fmt metadata only)",
            "No native PTX, PAM or POPFX rendering; opaque bytes retained in original archive",
            "No runtime-confirmed game object semantics",
            "RTID references may be truncated to max_refs_per_json; full raw JSON is preserved upstream",
            "Only 15 Git-archived source shards are covered; Media-06 still absent"],
        "files":["files.csv","classes.csv","references.csv"]}
    (out/"SUMMARY.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("PARSED_SHARD",json.dumps({
        "stage":stage,"shard":shard,"files":totals["files"],"status":report["statuses"],
        "class_rows":totals["class_rows"],"sample_refs":sampled},ensure_ascii=False),flush=True)
    if strict and totals["parse_errors"]:raise ValueError("format parse errors found")
    return report

if __name__=="__main__":
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--root",type=Path,required=True,help="restored tar.zst shard files")
    p.add_argument("--catalog",type=Path,required=True,help="matching Catalog/.../files.csv")
    p.add_argument("--out",type=Path,required=True,help="metadata output directory")
    p.add_argument("--workers",type=int,default=2)
    p.add_argument("--max-refs-per-json",type=int,default=24)
    p.add_argument("--strict",action="store_true",help="non-zero if any format parsing errors")
    a=p.parse_args()
    run(a.root,a.catalog,a.out,a.workers,a.max_refs_per_json,a.strict)
