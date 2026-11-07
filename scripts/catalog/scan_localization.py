#!/usr/bin/env python3
"""Collect original Simplified Chinese string candidates and their exact source paths.

No auto-translation. A candidate is *not* claimed to be an official display
name unless the originating game data confirms its role and language.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path
import re

HAN=re.compile(r"[\u3400-\u9fff]")
NAME_KEY=re.compile(r"(display.?name|localized.?name|plant.?name|zombie.?name|level.?name|title|label|name|description|text)",re.I)
LANG_NAME=re.compile(r"(chinese|zh[-_]?cn|zh[-_]?hans|simplified|s.?chinese|cn.?lang|locali[sz]ation)",re.I)
VALID={".json",".txt",".xml",".csv",".ini",".lang",".strings",".properties"}

def scan(root:Path,out:Path)->dict:
    out.mkdir(parents=True,exist_ok=True)
    results=out/"zh_cn_strings.csv"
    candidate=out/"name_candidates.csv"
    counts=Counter()
    errors=[]
    fields=["source_file","content_sha256","json_path","field_key","text","language_hint","name_candidate"]
    with results.open("w",newline="",encoding="utf-8-sig") as fout, candidate.open("w",newline="",encoding="utf-8-sig") as names:
        writer=csv.DictWriter(fout,fieldnames=fields)
        nameswriter=csv.DictWriter(names,fieldnames=fields)
        writer.writeheader();nameswriter.writeheader()
        for source in root.rglob("*"):
            if not source.is_file() or source.suffix.lower() not in VALID:
                continue
            if source.stat().st_size>64*1024*1024:
                counts["large_skipped"]+=1
                continue
            rel=source.relative_to(root).as_posix()
            lang_hint=bool(LANG_NAME.search(rel))
            raw=source.read_bytes()
            h=hashlib.sha256(raw).hexdigest()
            counts["files_scanned"]+=1
            def emit(pointer,key,value):
                if not (isinstance(value,str) and HAN.search(value) and len(value)<=4096):
                    return
                name=bool(NAME_KEY.search(key)) or lang_hint
                record={"source_file":rel,"content_sha256":h,
                    "json_path":pointer,"field_key":key,
                    "text":value,"language_hint":int(lang_hint),"name_candidate":int(name)}
                writer.writerow(record)
                counts["chinese_strings"]+=1
                if name:
                    nameswriter.writerow(record)
                    counts["name_candidates"]+=1
            if source.suffix.lower()==".json":
                try:
                    tree=json.loads(raw)
                    stack=[(tree,"$","",0)]
                    while stack:
                        item,pointer,key,depth=stack.pop()
                        if isinstance(item,str):
                            emit(pointer,key,item)
                        elif depth<32 and isinstance(item,dict):
                            for k,v in item.items():
                                if isinstance(v,(str,dict,list)):
                                    stack.append((v,pointer+"/"+str(k),str(k),depth+1))
                        elif depth<32 and isinstance(item,list):
                            for i,v in enumerate(item):
                                if isinstance(v,(str,dict,list)):
                                    stack.append((v,pointer+"/"+str(i),key,depth+1))
                except (ValueError,UnicodeError) as exc:
                    errors.append({"file":rel,"error":str(exc)[:300]})
                    counts["json_invalid"]+=1
            else:
                try:
                    decoded=raw.decode("utf-8-sig")
                except UnicodeDecodeError:
                    try:decoded=raw.decode("utf-16")
                    except UnicodeError:
                        counts["unsupported_encoding"]+=1
                        continue
                for i,line in enumerate(decoded.splitlines(),1):
                    if len(line)>4096:
                        continue
                    emit("line:"+str(i),"line",line)
    report={
        "summary":dict(counts),"errors":errors[:100],
        "scope":"original source strings only; name_candidates are heuristic, official localization unverified",
        "evidence":"rows include original extracted source path, sha256 and JSON path or line number"
    }
    (out/"language_scan_report.json").write_text(json.dumps(report,indent=2,ensure_ascii=False),encoding="utf-8")
    print("SUMMARY",json.dumps(report["summary"],ensure_ascii=False),flush=True)
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    scan(a.source,a.out)
if __name__=="__main__":
    main()
