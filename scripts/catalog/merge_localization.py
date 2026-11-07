#!/usr/bin/env python3
"""Merge eight genuine CHN localization scans into an auditable SQLite/CSV archive."""
import argparse
import csv
import json
from pathlib import Path
import sqlite3
import zipfile

def run(root,out):
    out.mkdir(parents=True,exist_ok=True)
    db=sqlite3.connect(out/"pvz2_chs428_localization_candidates.sqlite")
    db.executescript("""
CREATE TABLE IF NOT EXISTS strings(shard INTEGER,source_file TEXT,content_sha256 TEXT,json_path TEXT,field_key TEXT,text_value TEXT,language_hint INTEGER,name_candidate INTEGER,PRIMARY KEY(shard,source_file,json_path,text_value));
CREATE INDEX IF NOT EXISTS ix_strings_text ON strings(text_value);
CREATE TABLE IF NOT EXISTS shard_scans(shard INTEGER PRIMARY KEY,files_scanned INTEGER,chinese_strings INTEGER,name_candidates INTEGER,summary_json TEXT);
""")
    csvfile=out/"zh_cn_strings.csv"
    names=out/"name_candidates.csv"
    fields=["shard","source_file","content_sha256","json_path","field_key","text","language_hint","name_candidate"]
    total=0
    source_dirs=sorted(p for p in root.iterdir() if p.is_dir())
    with csvfile.open("w",newline="",encoding="utf-8-sig") as f, names.open("w",newline="",encoding="utf-8-sig") as n:
        w=csv.DictWriter(f,fieldnames=fields);nw=csv.DictWriter(n,fieldnames=fields)
        w.writeheader();nw.writeheader()
        for folder in source_dirs:
            num=int(folder.name.rsplit("-",1)[-1])
            meta=json.loads((folder/"language_scan_report.json").read_text(encoding="utf-8"))
            summ=meta["summary"]
            db.execute("INSERT INTO shard_scans VALUES (?,?,?,?,?)",(num,summ.get("files_scanned",0),
                       summ.get("chinese_strings",0),summ.get("name_candidates",0),json.dumps(summ)))
            with (folder/"zh_cn_strings.csv").open("r",encoding="utf-8-sig",newline="") as input:
                for row in csv.DictReader(input):
                    record={"shard":num,**row}
                    w.writerow(record)
                    if int(row["name_candidate"]):
                        nw.writerow(record)
                    db.execute("INSERT OR IGNORE INTO strings VALUES (?,?,?,?,?,?,?,?)",
                        (num,row["source_file"],row["content_sha256"],row["json_path"],row["field_key"],
                         row["text"],int(row["language_hint"]),int(row["name_candidate"])))
                    total+=1
            db.commit()
    if len(source_dirs)!=8:
        raise ValueError("expect 8 separate source shards; got "+str(len(source_dirs)))
    final={"shards":8,"total_candidate_rows":total,
           "scope":"source-backed Chinese strings; translations and official display-name mappings NOT asserted"}
    (out/"SUMMARY.json").write_text(json.dumps(final,indent=2,ensure_ascii=False),encoding="utf-8")
    db.close()
    return final

def main():
    p=argparse.ArgumentParser()
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--zip",type=Path,required=True)
    a=p.parse_args()
    summary=run(a.source,a.out)
    a.zip.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(a.zip,"w",zipfile.ZIP_DEFLATED,compresslevel=7) as z:
        for file in a.out.iterdir():
            if file.is_file():z.write(file,file.name)
    if a.zip.stat().st_size>95_000_000:
        raise ValueError("localization ZIP too large for a single Git file; split required")
    print("SUMMARY",summary,flush=True)
if __name__=="__main__":
    main()
