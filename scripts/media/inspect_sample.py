#!/usr/bin/env python3
"""Identify authentic PvZ2 media members and collect bounded real samples for decoder testing."""
import argparse
from collections import Counter
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import shutil

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--per-format",type=int,default=3)
    a=p.parse_args()
    if not a.source.is_dir():
        p.error("source must be a directory")
    a.out.mkdir(parents=True,exist_ok=True)
    sampled=a.out/"samples"
    sampled.mkdir(exist_ok=True)
    files=sorted((f for f in a.source.rglob("*") if f.is_file()),
                  key=lambda f:(f.suffix.lower(),f.stat().st_size,str(f)))
    counts=Counter(f.suffix.lower() or "(none)" for f in files)
    records=[]
    picked=Counter()
    for f in files:
        ext=f.suffix.lower()
        if ext not in (".pam",".ptx",".bnk",".wem"):
            continue
        with f.open("rb") as stream:
            raw=stream.read(128)
        row={"path":f.relative_to(a.source).as_posix(),
             "extension":ext,"bytes":f.stat().st_size,"header_hex":raw.hex(),
             "header_ascii":raw[:16].decode("ascii","replace")}
        if picked[ext]<a.per_format:
            target=sampled/(ext[1:]+"_"+str(picked[ext])+"_"+f.name)
            shutil.copy2(f,target)
            row["sample"]=target.name
            picked[ext]+=1
        records.append(row)
    report={
        "source_root":str(a.source),"generated_utc":datetime.now(timezone.utc).isoformat(),
        "total_files":len(files),"by_extension":dict(sorted(counts.items())),
        "media_files":records,"sampled":dict(picked)
    }
    (a.out/"sample_inventory.json").write_text(
        json.dumps(report,indent=2,ensure_ascii=False),encoding="utf-8")
    print(json.dumps({"total_files":len(files),"by_extension":dict(counts),
                      "sampled":dict(picked)},ensure_ascii=False))
if __name__=="__main__":
    main()
