#!/usr/bin/env python3
"""Plan or locally stage individually licensed files; never push game assets.

Catalog validation/files.csv and local Readable are source-backed by SHA256.
Each redistribution grant must identify exact stage, shard, path, SHA256, and
nonempty permission evidence. No rights manifest => zero files staged.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import shutil

MIB=1024*1024
SHA_RE=re.compile(r"[0-9a-f]{64}\Z")
BASIS={"owned-original-work","licensed-redistribution","public-domain"}

def checked_path(name):
    if not isinstance(name,str) or not name or "\\" in name or "\x00" in name:
        raise ValueError("unsafe filename")
    p=PurePosixPath(name)
    if p.is_absolute() or any(x in (".","..") for x in p.parts):
        raise ValueError("unsafe filename "+name)
    return p

def sha256(path):
    h=hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda:f.read(4*MIB),b""):
            h.update(block)
    return h.hexdigest()

def grants_from(path):
    if path is None:return {}
    obj=json.loads(path.read_text(encoding="utf-8"))
    if obj.get("schema")!="pvz2-exact-asset-permissions-v1":
        raise ValueError("unknown permission schema")
    granted={}
    for row in obj.get("grants",[]):
        name=checked_path(row.get("original_path")).as_posix()
        stage=row.get("stage")
        shard=str(row.get("shard",""))
        sha=row.get("sha256","")
        if (stage not in ("Internal","Media") or not re.fullmatch(r"\d{2}",shard) or
            not SHA_RE.fullmatch(sha) or row.get("basis") not in BASIS or
            not isinstance(row.get("evidence"),str) or not row["evidence"].strip()):
            raise ValueError("incomplete/invalid permission evidence for "+name)
        key=(stage,shard,name,sha)
        if key in granted:raise ValueError("duplicate permission grant")
        granted[key]=row
    return granted

def verified_copy(source,dest,size,sha):
    if source.is_symlink() or not source.is_file() or source.stat().st_size!=size or sha256(source)!=sha:
        raise ValueError("source is missing, altered or unsafe: "+str(source))
    if dest.exists():
        if dest.is_symlink() or not dest.is_file() or dest.stat().st_size!=size or sha256(dest)!=sha:
            raise ValueError("destination conflicts with source: "+str(dest))
        return "already-present"
    dest.parent.mkdir(parents=True,exist_ok=True)
    part=dest.with_name(dest.name+".partial")
    if part.exists():raise ValueError("stale partial output "+str(part))
    try:
        with source.open("rb") as inp,part.open("xb") as out:
            shutil.copyfileobj(inp,out,4*MIB)
        if part.stat().st_size!=size or sha256(part)!=sha:
            raise ValueError("copied file did not round-trip")
        os.replace(part,dest)
    finally:
        part.unlink(missing_ok=True)
    return "copied"

def prepare(catalog,rights,source,dest,max_file_bytes,max_batch_bytes,max_batch_files,stage=False):
    grants=grants_from(rights)
    source=source.resolve();dest=dest.resolve()
    if stage and (source==dest or source in dest.parents or dest in source.parents):
        raise ValueError("source and output roots overlap")
    selected=[];skipped=Counter();total=0;count=0
    seen=set();matched=set()
    with catalog.open("r",encoding="utf-8-sig",newline="") as stream:
        for row in csv.DictReader(stream):
            count+=1
            rel=checked_path(row["original_path"])
            stage_name=row["stage"];shard=str(row["shard"]).zfill(2)
            digest=row["sha256"];length=int(row["bytes"])
            if (stage_name not in ("Internal","Media") or not re.fullmatch(r"\d{2}",shard)
                or not SHA_RE.fullmatch(digest) or length<0):
                raise ValueError("invalid source catalog row")
            key=(stage_name,shard,rel.as_posix(),digest)
            if key in seen:raise ValueError("duplicate file in source catalog")
            seen.add(key)
            if length>=max_file_bytes:
                skipped["size-limit"]+=1
                continue
            if key not in grants:
                skipped["redistribution-permission-not-established"]+=1
                continue
            matched.add(key)
            src=source/stage_name/("shard-"+shard)/Path(*rel.parts)
            dst=dest/stage_name/("shard-"+shard)/Path(*rel.parts)
            selected.append({"stage":stage_name,"shard":shard,"original_path":rel.as_posix(),
                             "size_bytes":length,"sha256":digest,"source":str(src),
                             "destination":str(dst),"permission_basis":grants[key]["basis"],
                             "permission_evidence":grants[key]["evidence"]})
            total+=length
    if grants.keys()-matched:
        raise ValueError("permissions include files not present or exceeding size threshold")
    batches=[];current=[];size=0
    for item in selected:
        if current and (len(current)>=max_batch_files or size+item["size_bytes"]>max_batch_bytes):
            batches.append({"batch":len(batches)+1,"file_count":len(current),"bytes":size,"files":current})
            current=[];size=0
        current.append(item);size+=item["size_bytes"]
    if current:batches.append({"batch":len(batches)+1,"file_count":len(current),"bytes":size,"files":current})
    if stage:
        if not rights or not selected:raise ValueError("exact redistribution permissions required to stage")
        for item in selected:
            item["stage_status"]=verified_copy(Path(item["source"]),Path(item["destination"]),
                                               item["size_bytes"],item["sha256"])
    return {"schema":"pvz2-individual-git-publication-plan-v1",
            "catalog_rows":count,"authorized_files":len(selected),"authorized_bytes":total,
            "batch_count":len(batches),"max_file_bytes_exclusive":max_file_bytes,
            "max_batch_bytes":max_batch_bytes,"max_files_per_batch":max_batch_files,
            "skipped":dict(skipped),"stage_performed":stage,"batches":batches,
            "note":"Public Git files are redistribution; this tool never runs git push."}

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--catalog",type=Path,default=Path("Catalog/CHN/V4.2.8/validation/files.csv"))
    p.add_argument("--rights",type=Path,help="exact-file license/permission evidence manifest")
    p.add_argument("--source",type=Path,default=Path("Readable/CHN/V4.2.8"))
    p.add_argument("--out",type=Path,default=Path("Published/CHN/V4.2.8"))
    p.add_argument("--report",type=Path,default=Path("audit/local/CHN-4.2.8/publication-plan.json"))
    p.add_argument("--max-file-mib",type=int,default=95)
    p.add_argument("--max-batch-mib",type=int,default=350)
    p.add_argument("--max-batch-files",type=int,default=400)
    p.add_argument("--stage",action="store_true",help="copy only individually licensed files locally")
    a=p.parse_args()
    if not(1<=a.max_file_mib<=95 and 1<=a.max_batch_mib<=900 and 1<=a.max_batch_files<=1000):
        p.error("invalid batch or size limit")
    result=prepare(a.catalog,a.rights,a.source,a.out,a.max_file_mib*MIB,
                   a.max_batch_mib*MIB,a.max_batch_files,a.stage)
    a.report.parent.mkdir(parents=True,exist_ok=True)
    a.report.write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({"indexed":result["catalog_rows"],"permitted":result["authorized_files"],
        "batches":result["batch_count"],"skipped":result["skipped"],
        "stage_performed":result["stage_performed"],"report":str(a.report)},ensure_ascii=False))

if __name__=="__main__":main()
