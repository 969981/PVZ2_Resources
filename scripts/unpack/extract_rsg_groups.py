#!/usr/bin/env python3
"""Extract every validated RSGP group from RSB containers in parallel, with provenance."""
from __future__ import annotations
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
from unpack_smf import probe_rsb

def hash_file(path: Path):
    h=hashlib.sha256()
    with path.open("rb") as src:
        for buf in iter(lambda: src.read(4<<20), b""):
            h.update(buf)
    return h.hexdigest()

def export_one(rsb: Path, out: Path, resume: bool) -> dict:
    result = {"rsb": rsb.name, "status": "running", "groups": []}
    try:
        parsed = probe_rsb(rsb)
        if parsed["rsb_version"] != 4:
            raise ValueError("only RSB version 4 validated")
        result["source_sha256"] = hash_file(rsb)
        result["declared_groups"] = parsed["group_count"]
        result["groups_contiguous"] = parsed["groups_contiguous"]
        result["last_group_reaches_eof"] = parsed["last_group_reaches_eof"]
        dirname = out / rsb.stem
        dirname.mkdir(parents=True, exist_ok=True)
        with rsb.open("rb") as src:
            for i, group in enumerate(parsed["groups"]):
                row={"index":i, "name":group["name"], "offset":group["offset"],
                     "size":group["size"]}
                name=f"{i:05d}.rsg"
                dst=dirname/name
                try:
                    if resume and dst.is_file() and dst.stat().st_size == group["size"]:
                        with dst.open("rb") as existing:
                            if existing.read(4) == b"pgsr":
                                row.update(status="skipped-verified",sha256=hash_file(dst),path=f"{rsb.stem}/{name}")
                                result["groups"].append(row)
                                continue
                    src.seek(group["offset"])
                    if src.read(4) != b"pgsr":
                        raise ValueError(f"RSGP magic mismatch at {group['offset']}")
                    src.seek(group["offset"])
                    part=dst.with_name(dst.name+".part")
                    dig=hashlib.sha256()
                    remaining=group["size"]
                    try:
                        with part.open("wb") as sink:
                            while remaining:
                                data=src.read(min(1<<20,remaining))
                                if not data:
                                    raise ValueError("short RSB source group")
                                sink.write(data)
                                dig.update(data)
                                remaining-=len(data)
                        os.replace(part,dst)
                    finally:
                        part.unlink(missing_ok=True)
                    row.update(status="ok",sha256=dig.hexdigest(),path=f"{rsb.stem}/{name}")
                except Exception as exc:
                    dst.unlink(missing_ok=True)
                    row.update(status="error",error=str(exc))
                result["groups"].append(row)
        result["summary"]={"groups":len(result["groups"]),
                           "success":sum(x["status"] in ("ok","skipped-verified") for x in result["groups"]),
                           "failed":sum(x["status"]=="error" for x in result["groups"])}
        result["status"]="ok" if not result["summary"]["failed"] else "partial-failure"
    except Exception as exc:
        result.update(status="error",error=str(exc),summary={"groups":0,"success":0,"failed":1})
    return result

def run(source: Path, out: Path, workers: int, only: str|None, resume: bool) -> dict:
    if not 1 <= workers <= 12:
        raise ValueError("workers must be 1..12")
    files=sorted(source.glob("*.rsb"))
    if only:
        files=[x for x in files if x.name == only]
    if not files:
        raise ValueError("no RSB input files match")
    out.mkdir(parents=True,exist_ok=True)
    report={"stage":"RSB->RSGP-group", "started_utc":datetime.now(timezone.utc).isoformat(),
            "workers":workers, "source":str(source), "entries":[]}
    with ThreadPoolExecutor(max_workers=workers) as pool:
        tasks=[pool.submit(export_one,path,out,resume) for path in files]
        for task in as_completed(tasks):
            result=task.result()
            report["entries"].append(result)
            print(f"{result['rsb']} {result['status']} {result.get('summary')}",flush=True)
    report["entries"].sort(key=lambda x:x["rsb"])
    report["summary"]={
        "rsb_files":len(files),
        "groups":sum(x["summary"]["groups"] for x in report["entries"]),
        "group_success":sum(x["summary"]["success"] for x in report["entries"]),
        "group_failure":sum(x["summary"]["failed"] for x in report["entries"]),
        "rsb_failures":sum(x["status"]!="ok" for x in report["entries"])
    }
    report["finished_utc"]=datetime.now(timezone.utc).isoformat()
    (out/"rsg_report.json").write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding="utf-8")
    print("SUMMARY",report["summary"],flush=True)
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path,help="directory containing *.rsb")
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--workers",type=int,default=4)
    p.add_argument("--only",help="single RSB filename for smoke tests")
    p.add_argument("--resume",action="store_true")
    a=p.parse_args()
    report=run(a.source,a.out,a.workers,a.only,a.resume)
    if report["summary"]["rsb_failures"] or report["summary"]["group_failure"]:
        raise SystemExit(1)
if __name__=="__main__":
    main()
