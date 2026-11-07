#!/usr/bin/env python3
"""Probe PvZ2 CN original WEM and BNK-derived WEM using pinned vgmstream-cli.

A metadata probe and a PCM WAV decode are independent checks. This is a bounded
sample audit, not an assertion that every bank/WEM decodes successfully.
"""
from __future__ import annotations
import argparse
from concurrent.futures import ThreadPoolExecutor,as_completed
import hashlib
import json
from pathlib import Path
import re
import subprocess
import wave

def sha(path):
    h=hashlib.sha256()
    with path.open("rb") as f:
        for b in iter(lambda:f.read(1<<20),b""):
            h.update(b)
    return h.hexdigest()

def probe(root,path,cli,out,decode):
    rel=path.relative_to(root)
    item={"source":rel.as_posix(),"wem_bytes":path.stat().st_size,"source_sha256":sha(path)}
    try:
        p=subprocess.run([str(cli),"-m",str(path)],capture_output=True,text=True,timeout=35)
        item["metadata_rc"]=p.returncode
        item["metadata"]=(p.stdout+"\n"+p.stderr)[-6000:]
        if p.returncode:
            item["status"]="metadata-failed"
            return item
        item["status"]="metadata-ok"
        if decode:
            dest=out/(str(rel).replace("/","_")+".wav")
            dest.parent.mkdir(parents=True,exist_ok=True)
            r=subprocess.run([str(cli),"-i","-o",str(dest),str(path)],
                             capture_output=True,text=True,timeout=90)
            if r.returncode or not dest.is_file():
                item.update(status="decode-failed",error=(r.stdout+r.stderr)[-1200:])
            else:
                with wave.open(str(dest),"rb") as stream:
                    params=stream.getparams()
                    item.update(wav_channels=params.nchannels,wav_sample_rate=params.framerate,
                                wav_sample_width_bytes=params.sampwidth,wav_frames=params.nframes)
                    if params.nframes<=0 or params.nchannels<=0 or params.framerate<=0:
                        raise ValueError("Invalid decoded PCM parameters")
                item.update(status="wav-validated",wav=dest.name,wav_bytes=dest.stat().st_size,
                            wav_sha256=sha(dest))
        return item
    except Exception as exc:
        item.update(status="error",error=str(exc)[:900])
        return item

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("root",type=Path)
    p.add_argument("--cli",type=Path,required=True)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--samples",type=int,default=12)
    p.add_argument("--decode-count",type=int,default=3)
    p.add_argument("--workers",type=int,default=3)
    a=p.parse_args()
    if not a.root.is_dir() or not a.cli.is_file():
        p.error("Valid source directory and vgmstream CLI required")
    files=sorted((p for p in a.root.rglob("*") if p.is_file() and p.suffix.lower()==".wem"),
                 key=lambda f:(f.stat().st_size,f.as_posix()))
    if not files:raise ValueError("No WEM sources found")
    selected=files[:a.samples]
    a.out.mkdir(parents=True,exist_ok=True)
    results=[]
    with ThreadPoolExecutor(max_workers=a.workers) as pool:
        futures=[pool.submit(probe,a.root,f,a.cli,a.out,i<a.decode_count)
                 for i,f in enumerate(selected)]
        for fut in as_completed(futures):
            results.append(fut.result())
    results.sort(key=lambda x:x["source"])
    statuses={}
    for row in results:
        statuses[row["status"]]=statuses.get(row["status"],0)+1
    report={"input_wem_total":len(files),"sampled":len(results),
            "statuses":statuses,"entries":results,"scope":"bounded original WEM sample, not total WEM conversion"}
    (a.out/"wem_sample_report.json").write_text(json.dumps(report,indent=2,ensure_ascii=False),encoding="utf-8")
    print("SUMMARY",json.dumps({k:v for k,v in report.items() if k!="entries"}),flush=True)
    if not any(row["status"] in ("metadata-ok","wav-validated") for row in results):
        raise SystemExit("No WEM stream was recognized by vgmstream")
if __name__=="__main__":main()
