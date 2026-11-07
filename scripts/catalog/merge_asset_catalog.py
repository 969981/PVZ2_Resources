#!/usr/bin/env python3
"""Merge SHA-verified individual-file shard inventories to SQLite/CSV.

Unindexed stages/shards are represented as missing, never zero files.
"""
from __future__ import annotations
import argparse
from collections import Counter,defaultdict
import csv
import json
from pathlib import Path
import sqlite3

COLUMNS=[
"region","version","stage","shard","source_run","archive_sha256",
"original_path","filename","suffix","format","category","size_bytes",
"sha256","small_file_candidate","git_size_eligible","git_warning_over_50mib",
"publication_status"
]
EXPECTED={"Internal":list(range(8)),"Media":list(range(8))}
def run(root:Path,out:Path):
    out.mkdir(parents=True,exist_ok=True)
    dirs=sorted(p.parent for p in root.glob("*/summary.json"))
    if not dirs:raise ValueError("No actual shard reports found")
    db=sqlite3.connect(out/"assets.sqlite")
    db.executescript("""
CREATE TABLE assets(
region TEXT,version TEXT,stage TEXT,shard TEXT,source_run INTEGER,
archive_sha256 TEXT,original_path TEXT,filename TEXT,suffix TEXT,
format TEXT,category TEXT,size_bytes INTEGER,sha256 TEXT,
small_file_candidate INTEGER,git_size_eligible INTEGER,git_warning_over_50mib INTEGER,
publication_status TEXT,
PRIMARY KEY(stage,shard,original_path)
);
CREATE INDEX by_format ON assets(format);
CREATE INDEX by_category ON assets(category);
CREATE INDEX by_size ON assets(size_bytes);
CREATE INDEX by_source_sha ON assets(sha256);
CREATE INDEX by_name ON assets(filename);
CREATE TABLE shards(stage TEXT,shard TEXT,file_count INTEGER,raw_bytes INTEGER,
git_eligible INTEGER,git_ineligible INTEGER,archive_sha256 TEXT,
PRIMARY KEY(stage,shard));
""")
    count=defaultdict(Counter)
    seen=set()
    with (out/"assets.csv").open("w",encoding="utf-8-sig",newline="") as target:
        w=csv.DictWriter(target,fieldnames=COLUMNS);w.writeheader()
        for directory in dirs:
            summary=json.loads((directory/"summary.json").read_text(encoding="utf-8"))
            key=(summary["stage"],f"{int(summary['shard']):02d}")
            if key in seen:raise ValueError("Duplicate stage/shard "+str(key))
            seen.add(key)
            n=total=elig=warn=preview=0
            with (directory/"files.csv").open("r",encoding="utf-8-sig",newline="") as reader:
                for row in csv.DictReader(reader):
                    if set(row)!=set(COLUMNS):raise ValueError("Outdated/mismatched index schema "+str(directory))
                    if (row["stage"],row["shard"])!=key:raise ValueError("Rows from mixed shards")
                    if row["archive_sha256"]!=summary["archive_sha256"]:raise ValueError("Wrong source archive")
                    sz=int(row["size_bytes"]);g=int(row["git_size_eligible"])
                    s=int(row["small_file_candidate"]);wflag=int(row["git_warning_over_50mib"])
                    if g!=int(sz<95*1024*1024) or wflag!=int(sz>50*1024*1024):
                        raise ValueError("Git-size classification mismatch")
                    w.writerow(row)
                    db.execute("INSERT INTO assets VALUES ("+",".join("?"*len(COLUMNS))+")",
                         tuple(sz if k=="size_bytes" else int(row[k]) if k in
                               ("source_run","small_file_candidate","git_size_eligible","git_warning_over_50mib")
                               else row[k] for k in COLUMNS))
                    n+=1;total+=sz;elig+=g;warn+=wflag;preview+=s
            if n!=summary["file_count"] or total!=summary["total_size_bytes"] or elig!=summary["git_size_eligible"]:
                raise ValueError("Per-shard totals mismatch "+str(directory))
            db.execute("INSERT INTO shards VALUES (?,?,?,?,?,?,?)",
                (key[0],key[1],n,total,elig,n-elig,summary["archive_sha256"]))
            count[key[0]]["shards"]+=1
            count[key[0]]["files"]+=n
            count[key[0]]["eligible_files_lt95MiB"]+=elig
            count[key[0]]["ineligible_files"]+=n-elig
            count[key[0]]["warning_files_gt50MiB"]+=warn
            count[key[0]]["text_preview_candidates"]+=preview
            count[key[0]]["source_total_bytes"]+=total
            db.commit()
    db.close()
    missing=[f"{s}-{i:02d}" for s,items in EXPECTED.items() for i in items if (s,f"{i:02d}") not in seen]
    report={"coverage":{k:dict(v) for k,v in sorted(count.items())},
            "indexed_shards":sorted(f"{s}-{i}" for s,i in seen),
            "missing_expected_shards":missing,
            "status":"source-backed-metadata-only",
            "scope":"Size eligibility is <95MiB, not a permission to redistribute game assets",
            "files":"assets.sqlite + assets.csv, no raw game media"}
    (out/"SUMMARY.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("MERGED",json.dumps(report,ensure_ascii=False),flush=True)
    return report

if __name__=="__main__":
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    run(a.source,a.out)
