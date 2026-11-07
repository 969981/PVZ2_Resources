#!/usr/bin/env python3
"""Independently validate the exact materialized file bytes of one verified shard.

The CSV is the ground truth: no file is counted without SHA256 equality.
Valid JSON and PNG/WEM headers are examined separately; a checksum-only file
is NOT asserted to be a fully parsed format. No game bytes are republished.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path, PurePosixPath
import struct

FIELDS=["original_path","format","category","bytes","sha256",
        "verification","decoded_kind","detail","json_game_objects",
        "png_width","png_height"]
PNG_SIGNATURE=b"\x89PNG\r\n\x1a\n"
MIB=1024*1024

def fingerprint(path:Path):
    digest=hashlib.sha256()
    count=0
    with path.open("rb") as inp:
        prefix=inp.read(64)
        digest.update(prefix);count+=len(prefix)
        for chunk in iter(lambda:inp.read(4*MIB),b""):
            digest.update(chunk);count+=len(chunk)
    return digest.hexdigest(),count,prefix

def inspect(path:Path,kind:str,header:bytes):
    lower=path.name.lower()
    if kind in ("JSON","PAM_JSON","BNK_JSON","RTON_JSON") or lower.endswith(".json"):
        try:
            with path.open("r",encoding="utf-8-sig") as stream:
                data=json.load(stream)
            n=len(data["objects"]) if isinstance(data,dict) and isinstance(data.get("objects"),list) else 0
            typ="dictionary" if isinstance(data,dict) else "list" if isinstance(data,list) else type(data).__name__
            return "parsed","json-"+typ,"",n,None,None
        except (ValueError,UnicodeError,RecursionError) as e:
            return "format-error","json","invalid JSON: "+str(e)[:240],0,None,None
    if lower.endswith(".png"):
        if len(header)<29 or header[:8]!=PNG_SIGNATURE or header[12:16]!=b"IHDR":
            return "format-error","png","invalid PNG signature/IHDR",0,None,None
        width,height=struct.unpack(">II",header[16:24])
        if not(0<width<=65535 and 0<height<=65535):
            return "format-error","png","invalid PNG dimensions",0,width,height
        return "header-verified","png","PNG IHDR valid; pixel decode NOT tested here",0,width,height
    if lower.endswith(".wem"):
        if header[:4] in (b"RIFF",b"RIFX") and header[8:12]==b"WAVE":
            return "header-verified","wwise-wem","RIFF/WAVE header; codec and PCM playback untested",0,None,None
        return "unresolved","wwise-wem","WEM not in common RIFF/RIFX WAVE form; preserve bytes",0,None,None
    if lower.endswith(".bnk"):
        if header[:4]==b"BKHD":
            return "header-verified","wwise-bnk","BKHD signature; internal stream decode not tested",0,None,None
        return "unresolved","bnk-unknown","non-BKHD original bytes preserved",0,None,None
    if lower.endswith(".lua"):
        if header.startswith(b"\x1bLua"):
            return "header-verified","lua-bytecode","Lua bytecode header; semantic decompile not tested",0,None,None
        return "checksum-only","lua-unknown","Lua body not parsed",0,None,None
    if lower.endswith(".popfx"):
        return "checksum-only","popfx","source preserved; POPFX visualization not tested",0,None,None
    if lower.endswith((".ptx",".pam",".ttf",".xml",".ini",".txt",".rsg",".rsb")):
        return "checksum-only",lower.rsplit(".",1)[-1],"source verified; deep parse needs dedicated tool",0,None,None
    return "checksum-only","unknown","source verified, no format decoder",0,None,None

def verify(root:Path,catalog:Path,out:Path):
    if not root.is_dir():raise ValueError("missing restored root "+str(root))
    if not catalog.is_file():raise ValueError("missing catalog "+str(catalog))
    out.mkdir(parents=True,exist_ok=True)
    source_summary=json.loads((catalog.parent/"summary.json").read_text(encoding="utf-8"))
    statistics=Counter()
    per_format={}
    seen=set()
    failures=[]
    with catalog.open("r",encoding="utf-8-sig",newline="") as index,\
         (out/"files.csv").open("w",encoding="utf-8-sig",newline="") as output:
        writer=csv.DictWriter(output,fieldnames=FIELDS);writer.writeheader()
        for row in csv.DictReader(index):
            path=PurePosixPath(row["original_path"])
            if path.is_absolute() or ".." in path.parts or "\\" in str(path):
                raise ValueError("unsafe indexed file "+str(path))
            rel=path.as_posix()
            if rel in seen:raise ValueError("duplicate indexed path "+rel)
            seen.add(rel)
            file=root.joinpath(*path.parts)
            if file.is_symlink() or not file.is_file() or root.resolve() not in file.resolve().parents:
                raise ValueError("source missing or unsafe: "+rel)
            digest,size,prefix=fingerprint(file)
            if size!=int(row["size_bytes"]) or digest!=row["sha256"]:
                raise ValueError("SHA256/size mismatch "+rel)
            if row["archive_sha256"]!=source_summary["archive_sha256"]:
                raise ValueError("index source archive mismatch "+rel)
            stage=row["stage"]
            if stage!=source_summary["stage"] or int(row["shard"])!=int(source_summary["shard"]):
                raise ValueError("source stage/shard mismatch "+rel)
            status,typ,detail,n,width,height=inspect(file,row["format"],prefix)
            statistics["file_count"]+=1
            statistics["sha256_verified"]+=1
            statistics[status]+=1
            statistics["game_objects_seen_in_json"]+=n
            f=per_format.setdefault(row["format"],Counter())
            f["total"]+=1
            f[status]+=1
            if status in ("format-error","unresolved") and len(failures)<120:
                failures.append({"original_path":rel,"status":status,"reason":detail})
            writer.writerow({
                "original_path":rel,"format":row["format"],"category":row["category"],
                "bytes":size,"sha256":digest,"verification":status,
                "decoded_kind":typ,"detail":detail,"json_game_objects":n,
                "png_width":width if width is not None else "",
                "png_height":height if height is not None else ""
            })
    if statistics["file_count"]!=source_summary["file_count"]:
        raise ValueError("File count mismatch: "+str(statistics))
    report={
        "stage":source_summary["stage"],"shard":source_summary["shard"],
        "source_archive_sha256":source_summary["archive_sha256"],
        "files_indexed":statistics["file_count"],"files_sha256_verified":statistics["sha256_verified"],
        "status_counts":dict(statistics),
        "formats":{k:dict(v) for k,v in sorted(per_format.items())},
        "exceptions_sample":failures,
        "scope":"SHA256 verified all individual source files; PNG/WEM header or JSON parse checks are NOT playback validation",
        "no_game_assets_published":True
    }
    (out/"summary.json").write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("VALIDATED",json.dumps({k:report[k] for k in ("stage","shard","files_sha256_verified","status_counts")}),flush=True)
    if statistics["format-error"]:
        raise ValueError("Some files have format errors; inspect report")
    return report

if __name__=="__main__":
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root",type=Path,required=True)
    parser.add_argument("--catalog",type=Path,required=True)
    parser.add_argument("--out",type=Path,required=True)
    args=parser.parse_args()
    verify(args.root,args.catalog,args.out)
