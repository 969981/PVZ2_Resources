#!/usr/bin/env python3
"""Convert real PvZ2 CN PAM->JSON and BNK->WEM with bounded parallelism and SHA audits."""
from __future__ import annotations
import argparse
from concurrent.futures import ThreadPoolExecutor,as_completed
from collections import Counter
import hashlib
import json
from pathlib import Path
import os
import shutil
import subprocess
from parse_wwise_bnk import parse_bnk

def sha256(p):
    h=hashlib.sha256()
    with p.open("rb") as f:
        for b in iter(lambda:f.read(4<<20),b""):
            h.update(b)
    return h.hexdigest()

def pam_one(root,source,out,dll):
    name=source.relative_to(root)
    dest=out/"PAM_JSON"/name.with_suffix(".pam.json")
    row={"source":name.as_posix(),"kind":"PAM","status":"failed"}
    try:
        result=subprocess.run(["dotnet",str(dll),str(source),"180"],
                              text=True,capture_output=True,timeout=120)
        created=source.with_suffix(".pam.json")
        if not created.is_file():
            raise ValueError("PopStudio did not produce PAM JSON: "+(result.stdout+result.stderr)[-300:])
        with created.open("r",encoding="utf-8") as f:
            json.load(f)
        dest.parent.mkdir(parents=True,exist_ok=True)
        shutil.move(str(created),str(dest))
        row.update(status="ok",size=dest.stat().st_size,sha256=sha256(dest),
                   output=dest.relative_to(out).as_posix())
    except Exception as e:
        row["error"]=str(e)[:700]
    return row

def bnk_one(root,source,out):
    name=source.relative_to(root)
    base=out/"WEM"/name.with_suffix("")
    row={"source":name.as_posix(),"kind":"BNK","status":"failed"}
    try:
        summary=parse_bnk(source,base)
        if summary["errors"]:
            raise ValueError(";".join(summary["errors"]))
        tracks=summary["wem"]
        for tr in tracks:
            if tr.get("status")!="extracted":
                raise ValueError("unextracted WEM "+str(tr.get("media_id")))
            target=base/tr["file"]
            with target.open("rb") as f: header=f.read(4)
            if header!=b"RIFF":
                raise ValueError(f"WEM {target} is not RIFF; preserve original without guessing codec")
        row.update(status="ok",wem=len(tracks),source_sha256=summary["sha256"],
                   output=base.relative_to(out).as_posix())
    except Exception as e:
        row["error"]=str(e)[:700]
    return row

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--dotnet-dll",type=Path,required=True)
    p.add_argument("--workers",type=int,default=4)
    a=p.parse_args()
    if not 1<=a.workers<=8:p.error("workers must be 1..8")
    a.out.mkdir(parents=True,exist_ok=True)
    files=sorted(x for x in a.source.rglob("*") if x.is_file() and x.suffix.lower() in (".pam",".bnk"))
    futures=[]
    results=[]
    with ThreadPoolExecutor(max_workers=a.workers) as executor:
        for f in files:
            if f.suffix.lower()==".pam":
                futures.append(executor.submit(pam_one,a.source,f,a.out,a.dotnet_dll))
            else:
                futures.append(executor.submit(bnk_one,a.source,f,a.out))
        for f in as_completed(futures):
            result=f.result()
            results.append(result)
            if result["status"]!="ok": print("ERROR",result,flush=True)
    results.sort(key=lambda x:x["source"])
    counts=Counter()
    for r in results:
        counts[r["kind"]+"_input"]+=1
        counts[r["kind"]+"_"+r["status"]]+=1
        if r["kind"]=="BNK" and r["status"]=="ok":
            counts["WEM_extracted"]+=r["wem"]
    (a.out/"pam_bnk_report.json").write_text(json.dumps(
        {"summary":dict(counts),"entries":results,"note":"WEM not decoded to PCM"},ensure_ascii=False,indent=2),
        encoding="utf-8")
    print("SUMMARY",json.dumps(dict(counts),ensure_ascii=False),flush=True)
    if any(r["status"]!="ok" for r in results):
        raise SystemExit(1)
if __name__=="__main__":
    main()
