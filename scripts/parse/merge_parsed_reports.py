#!/usr/bin/env python3
"""Join all 15 SHA256-backed PvZ2 parse reports into browsable CSV/SQLite.

Only the 15 existing Git-backed shards are included. Media-06 is missing, not
empty. Both file and RTID sample rows are copied with provenance.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import json
from pathlib import Path
import re
import shutil
import sqlite3

HEX=re.compile("[a-f0-9]{64}\\Z")
ASSET_COLS=["region","version","stage","shard","original_path","format","category",
            "size_bytes","sha256","parser_status","metadata_json"]
CLASS_COLS=["stage","shard","original_path","objclass","object_count"]
REF_COLS=["stage","shard","original_path","object_index","field_path","rtid","alias","namespace"]
STAGES=("Internal","Media")

def combine(source,out,catalogs=None,expected=26774):
    if not source.is_dir():raise ValueError("missing parse artifact folder")
    shards=sorted(p.parent for p in source.glob("*/SUMMARY.json"))
    if not shards:raise ValueError("no source parse reports")
    out.mkdir(parents=True,exist_ok=True)
    reports=[]
    files_by_status=Counter()
    file_formats=Counter()
    classes_total=Counter()
    overall=Counter()
    seen=set()
    db=sqlite3.connect(out/"assets.sqlite")
    db.execute("PRAGMA journal_mode=DELETE")
    db.executescript("""
CREATE TABLE assets(
region TEXT, version TEXT, stage TEXT, shard INTEGER,
original_path TEXT, format TEXT, category TEXT, size_bytes INTEGER,
sha256 TEXT, parser_status TEXT, metadata_json TEXT,
PRIMARY KEY(stage,shard,original_path)
);
CREATE INDEX assets_format ON assets(format);
CREATE INDEX assets_status ON assets(parser_status);
CREATE INDEX assets_sha ON assets(sha256);
CREATE INDEX assets_path ON assets(original_path);
CREATE TABLE object_classes(stage TEXT,shard INTEGER,original_path TEXT,objclass TEXT,object_count INTEGER);
CREATE INDEX classes_by_name ON object_classes(objclass);
CREATE TABLE rtid_samples(stage TEXT,shard INTEGER,original_path TEXT,object_index INTEGER,
field_path TEXT,rtid TEXT,alias TEXT,namespace TEXT);
CREATE INDEX rtid_by_namespace ON rtid_samples(namespace);
CREATE TABLE stages(stage TEXT,shard INTEGER,total_files INTEGER,source_archive_sha256 TEXT,parse_errors INTEGER,
unresolved INTEGER,rtid_references_found INTEGER,rtid_references_exported INTEGER,
PRIMARY KEY(stage,shard));
""")
    targets={}
    streams=[]
    try:
        for filename,fields in (("assets.csv",ASSET_COLS),("object_classes.csv",CLASS_COLS),
                                ("rtid_samples.csv",REF_COLS)):
            f=(out/filename).open("w",encoding="utf-8-sig",newline="")
            w=csv.DictWriter(f,fieldnames=fields);w.writeheader()
            targets[filename]=w;streams.append(f)
        for directory in shards:
            report=json.loads((directory/"SUMMARY.json").read_text(encoding="utf-8"))
            stage=report["stage"];shard=int(report["shard"])
            key=(stage,shard)
            if stage not in STAGES or not 0<=shard<8 or key in seen:
                raise ValueError("unexpected/duplicate shard "+str(key))
            seen.add(key)
            if catalogs:
                origin=catalogs/(stage+f"-{shard:02d}")/"summary.json"
                if not origin.is_file():raise ValueError("missing original source catalogue "+str(origin))
                meta=json.loads(origin.read_text(encoding="utf-8"))
                if meta["file_count"]!=report["total_files"] or meta["archive_sha256"]!=report["source_archive_sha256"]:
                    raise ValueError("SHA/provenance conflict for "+str(key))
            if report["source_files_sha256_verified"]!=report["total_files"]:
                raise ValueError("unverified sources in "+str(key))
            count=0;classes=0;refs=0
            with (directory/"files.csv").open("r",encoding="utf-8-sig",newline="") as stream:
                reader=csv.DictReader(stream)
                if reader.fieldnames!=ASSET_COLS:raise ValueError("unexpected assets schema")
                for row in reader:
                    if row["stage"]!=stage or int(row["shard"])!=shard or not HEX.fullmatch(row["sha256"]):
                        raise ValueError("invalid source row")
                    n=int(row["size_bytes"])
                    if n<0:raise ValueError("negative source bytes")
                    json.loads(row["metadata_json"])
                    db.execute("INSERT INTO assets VALUES (?,?,?,?,?,?,?,?,?,?,?)",
                       (row["region"],row["version"],stage,shard,row["original_path"],row["format"],
                        row["category"],n,row["sha256"],row["parser_status"],row["metadata_json"]))
                    targets["assets.csv"].writerow(row)
                    files_by_status[row["parser_status"]]+=1
                    file_formats[row["format"]]+=1
                    count+=1
            if count!=report["total_files"]:raise ValueError("parsed file total differs from summary")
            with (directory/"classes.csv").open("r",encoding="utf-8-sig",newline="") as stream:
                for row in csv.DictReader(stream):
                    if row["stage"]!=stage or int(row["shard"])!=shard:raise ValueError("class stage mismatch")
                    obj_count=int(row["object_count"])
                    db.execute("INSERT INTO object_classes VALUES (?,?,?,?,?)",
                         (stage,shard,row["original_path"],row["objclass"],obj_count))
                    targets["object_classes.csv"].writerow(row)
                    classes_total[row["objclass"]]+=obj_count
                    classes+=1
            if classes!=report["class_csv_rows"]:raise ValueError("class count mismatch")
            with (directory/"references.csv").open("r",encoding="utf-8-sig",newline="") as stream:
                for row in csv.DictReader(stream):
                    if row["stage"]!=stage or int(row["shard"])!=shard:raise ValueError("reference stage mismatch")
                    db.execute("INSERT INTO rtid_samples VALUES (?,?,?,?,?,?,?,?)",
                         (stage,shard,row["original_path"],int(row["object_index"]),
                          row["field_path"],row["rtid"],row["alias"],row["namespace"]))
                    targets["rtid_samples.csv"].writerow(row)
                    refs+=1
            if refs!=report["rtid_references_exported"]:raise ValueError("RTID count mismatch")
            db.execute("INSERT INTO stages VALUES (?,?,?,?,?,?,?,?)",
                (stage,shard,count,report["source_archive_sha256"],report["parse_errors"],
                 report["unresolved"],report["rtid_references_found"],refs))
            overall["source_files"]+=count
            overall["class_rows"]+=classes
            overall["rtid_sample_rows"]+=refs
            overall["rtid_total_seen"]+=report["rtid_references_found"]
            overall["parse_errors"]+=report["parse_errors"]
            overall["unresolved"]+=report["unresolved"]
            reports.append({"stage":stage,"shard":shard,"files":count,"classes":classes,"rtid_sample":refs,
                            "source_sha256":report["source_archive_sha256"]})
            db.commit()
        expected_set={(st,sh) for st in STAGES for sh in range(8) if (st,sh)!=("Media",6)}
        if seen!=expected_set or overall["source_files"]!=expected:
            raise ValueError("wrong coverage or source count; observed="+str(sorted(seen))+
                             " count="+str(overall["source_files"]))
    finally:
        for stream in streams:stream.close()
        db.close()
    if (out/"assets.sqlite").stat().st_size>94*1024*1024:
        raise ValueError("SQLite >94 MiB; split into stage-specific stores instead of a giant Git blob")
    summary={
        "game":"PvZ2","region":"CHN","version":"4.2.8","status":"source-hash-and-format-parsing-reported",
        "expected_indexed_files":expected,"files_processed":overall["source_files"],
        "shards_processed":len(reports),"missing_shards":["Media-06"],
        "parser_status_counts":dict(sorted(files_by_status.items())),
        "formats":dict(sorted(file_formats.items())),
        "class_row_count":overall["class_rows"],
        "rtid_total_seen":overall["rtid_total_seen"],
        "rtid_sampled":overall["rtid_sample_rows"],
        "rtid_not_exported":overall["rtid_total_seen"]-overall["rtid_sample_rows"],
        "parse_errors":overall["parse_errors"],"unresolved":overall["unresolved"],
        "top_objclasses":classes_total.most_common(35),"source_shards":reports,
        "limitations":[
            "Plain-JSON parsing is not a running game engine",
            "PTX/PAM/POPFX are opaque originals; preconverted PNG/PAM JSON have separate records",
            "WEM RIFF/fmt is metadata, not full PCM/WAV decoding",
            "Media-06 remains missing from Git-derived media",
            "RTID samples are intentionally capped per JSON; full link graph stored in existing game database",
            "No copyrighted original game binaries are re-uploaded through this workflow"]
    }
    (out/"SUMMARY.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("ALL_FILES_PARSED",json.dumps({k:summary[k] for k in
        ("files_processed","shards_processed","parser_status_counts","rtid_total_seen",
         "rtid_sampled","parse_errors","unresolved")},ensure_ascii=False),flush=True)
    return summary

if __name__=="__main__":
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("reports",type=Path,help="artifact folder with 15 stage-shard directories")
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--source-catalogs",type=Path,help="source Catalog/.../shards directory")
    p.add_argument("--expected",type=int,default=26774)
    a=p.parse_args()
    combine(a.reports,a.out,a.source_catalogs,a.expected)
