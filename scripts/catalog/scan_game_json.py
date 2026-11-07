#!/usr/bin/env python3
"""Scan actual game configuration JSON by objclass, aliases and recorded field keys.

This is an evidence scanner, not an assumed gameplay schema. Candidate classes
remain explicitly heuristic until matched against original game code.
"""
from __future__ import annotations
import argparse
from collections import Counter, defaultdict
import csv
import json
from pathlib import Path
import re

CATEGORIES=[
 ("plant",re.compile(r"plant|seedpacket|plantfood",re.I)),
 ("zombie",re.compile(r"zombie|zomb|tombstone|gravestone",re.I)),
 ("level",re.compile(r"level|stage|world|challenge|quest",re.I)),
 ("wave",re.compile(r"wave|spawn|encounter",re.I)),
 ("skill",re.compile(r"skill|ability|projectile|effect|attack|buff",re.I)),
 ("localization",re.compile(r"localiz|language|text|translation|stringtable",re.I))
]
def category(value):
    for label,pattern in CATEGORIES:
        if pattern.search(value or ""):return label
    return "other"

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    a.out.mkdir(parents=True,exist_ok=True)
    total=Counter()
    classes=Counter()
    fields=Counter()
    bycat=Counter()
    examples=defaultdict(list)
    candidates=[]
    errors=[]
    files=sorted(a.source.rglob("*.json"))
    for source in files:
        relative=source.relative_to(a.source).as_posix()
        try:
            with source.open("r",encoding="utf-8") as f:
                obj=json.load(f)
        except (OSError,ValueError,UnicodeError) as exc:
            errors.append({"source":relative,"error":str(exc)[:400]})
            continue
        total["json_valid"]+=1
        rows=obj.get("objects") if isinstance(obj,dict) else None
        if not isinstance(rows,list):
            total["no_top_level_objects"]+=1
            continue
        for index,row in enumerate(rows):
            if not isinstance(row,dict):
                continue
            rawclass=row.get("objclass") or row.get("class") or row.get("type") or ""
            classname=str(rawclass)
            aliases=row.get("aliases") or row.get("alias") or []
            alias=json.dumps(aliases,ensure_ascii=False,separators=(",",":"))
            details=row.get("objdata")
            if not isinstance(details,dict):
                details=row.get("data") if isinstance(row.get("data"),dict) else {}
            label=category(classname)
            classes[classname]+=1
            bycat[label]+=1
            total["object_records"]+=1
            for key in details:
                fields[(classname,str(key))]+=1
            if label!="other":
                candidates.append((relative,index,label,classname,alias,
                                   ",".join(map(str,details.keys()))))
                if len(examples[label])<5:
                    examples[label].append({"source":relative,"index":index,
                        "objclass":classname,"aliases":aliases,
                        "field_names":list(details.keys())[:80]})
    with (a.out/"class_counts.csv").open("w",newline="",encoding="utf-8-sig") as f:
        w=csv.writer(f);w.writerow(["objclass","candidate_category","count"])
        for name,count in classes.most_common():
            w.writerow([name,category(name),count])
    with (a.out/"class_field_counts.csv").open("w",newline="",encoding="utf-8-sig") as f:
        w=csv.writer(f);w.writerow(["objclass","field","count"])
        for (cls,key),count in fields.most_common():
            w.writerow([cls,key,count])
    with (a.out/"gameplay_candidates.csv").open("w",newline="",encoding="utf-8-sig") as f:
        w=csv.writer(f);w.writerow(["source_file","object_index","candidate_category",
                                    "objclass","aliases_json","raw_field_names"])
        w.writerows(candidates)
    report={
        "scope":"heuristic objclass classification; no inferred combat semantics",
        "input_json_files":len(files),
        "counts":dict(total),
        "class_count":len(classes),
        "candidate_category_counts":dict(bycat),
        "examples":dict(examples),
        "errors":errors[:200]
    }
    (a.out/"scan_report.json").write_text(json.dumps(report,indent=2,ensure_ascii=False),
                                          encoding="utf-8")
    print(json.dumps({k:v for k,v in report.items() if k not in ("examples","errors")},ensure_ascii=False),
          flush=True)
if __name__=="__main__":
    main()
