#!/usr/bin/env python3
"""Stream a verified Git tar.zst shard into a source-backed file index.

No extracted game bytes are copied to Git. Every recorded regular file gets a
SHA256, original tar path, stage/shard, and cautious browseability category.
Requires the repository's zstd executable, Python 3.10+, and verified parts.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path, PurePosixPath
import re
import subprocess
import tarfile
from threading import Thread

CHUNK=4*1024*1024
COLUMNS=[
    "region","version","stage","shard","source_run","archive_sha256",
    "original_path","filename","suffix","format","category","size_bytes",
    "sha256","small_file_candidate","publication_status"
]
SMALL_EXT={".json",".csv",".ini",".txt",".xml",".lua",".md"}
CATEGORIES={
    ".json":("JSON","Data"),".pam":("PAM","Animations"),
    ".ptx":("PTX","Textures"),".png":("PNG","Images"),
    ".wem":("WEM","Audio"),".bnk":("BNK","Audio"),
    ".popfx":("POPFX","Effects"),".lua":("Lua","Scripts"),
    ".ini":("INI","Config"),".txt":("TXT","Text"),
    ".xml":("XML","Config"),".ttf":("TTF","Fonts"),
    ".csv":("CSV","Data"),".rsg":("RSGP","Containers"),
    ".rsb":("RSB","Containers")
}
def classify(name):
    low=name.lower()
    if low.endswith(".pam.json"):return ("PAM_JSON","Animations")
    if low.endswith(".bnk.json"):return ("BNK_JSON","Audio")
    if low.endswith(".rton.json"):return ("RTON_JSON","Data")
    return CATEGORIES.get(PurePosixPath(name).suffix.lower(),("Other","Other"))

def clean_path(member_name):
    if member_name.startswith("/") or "\x00" in member_name:
        raise ValueError("unsafe absolute/NUL tar member")
    while member_name.startswith("./"):
        member_name=member_name[2:]
    parts=PurePosixPath(member_name).parts
    if not parts or any(p in ("..",".","") for p in parts) or "\\" in member_name:
        raise ValueError("unsafe tar member: "+repr(member_name))
    return PurePosixPath(*parts).as_posix()

def index(shard_dir:Path, out:Path, max_small:int):
    if not (0<max_small<=10*1024*1024):
        raise ValueError("max-small must be 1..10485760")
    manifest=json.loads((shard_dir/"manifest.json").read_text(encoding="utf-8"))
    if manifest.get("stage") not in ("Internal","Media","MediaSpecial"):
        raise ValueError("only derived file-bearing stages are indexed")
    if not manifest.get("parts"):raise ValueError("empty manifest parts")
    out.mkdir(parents=True,exist_ok=True)
    if any(out.iterdir()):
        raise ValueError("output folder must be empty to avoid stale index rows")
    proc=subprocess.Popen(["zstd","-dc"],stdin=subprocess.PIPE,stdout=subprocess.PIPE,stderr=subprocess.PIPE)
    errors=[]
    aggregate=hashlib.sha256()
    def writer():
        try:
            total=0
            for part in manifest["parts"]:
                filename=part["file"]
                if not re.fullmatch(r"archive\.tar\.zst\.part-\d{3,}",filename):
                    raise ValueError("invalid archive part filename")
                piece=shard_dir/filename
                if piece.stat().st_size!=part["bytes"]:
                    raise ValueError("part length mismatch: "+filename)
                digest=hashlib.sha256()
                with piece.open("rb") as file:
                    for block in iter(lambda:file.read(CHUNK),b""):
                        digest.update(block)
                        aggregate.update(block)
                        proc.stdin.write(block)
                        total+=len(block)
                if digest.hexdigest()!=part["sha256"]:
                    raise ValueError("part SHA256 mismatch: "+filename)
            if total!=manifest["archive_bytes"] or aggregate.hexdigest()!=manifest["archive_sha256"]:
                raise ValueError("combined archive checksum mismatch")
        except Exception as exc:
            errors.append(str(exc))
            proc.kill()
        finally:
            try:proc.stdin.close()
            except (OSError,ValueError):pass
    thread=Thread(target=writer,daemon=True)
    thread.start()
    counts=Counter()
    types=Counter()
    sizes=Counter()
    paths=set()
    records=out/"files.csv"
    try:
        with records.open("w",encoding="utf-8-sig",newline="") as output:
            w=csv.DictWriter(output,fieldnames=COLUMNS)
            w.writeheader()
            with tarfile.open(fileobj=proc.stdout,mode="r|") as archive:
                for member in archive:
                    if member.isdir():continue
                    if not member.isfile():
                        raise ValueError("unexpected non-regular member: "+member.name)
                    origin=clean_path(member.name)
                    if origin in paths:raise ValueError("duplicate archive filename: "+origin)
                    paths.add(origin)
                    stream=archive.extractfile(member)
                    if stream is None:raise ValueError("missing tar member content")
                    digest=hashlib.sha256()
                    length=0
                    for block in iter(lambda:stream.read(CHUNK),b""):
                        digest.update(block)
                        length+=len(block)
                    if length!=member.size:
                        raise ValueError("tar member length mismatch "+origin)
                    kind,category=classify(origin)
                    suffix=PurePosixPath(origin).suffix.lower()
                    candidate=int((suffix in SMALL_EXT or origin.lower().endswith(".pam.json")) and length<=max_small)
                    row={
                        "region":manifest["region"],"version":manifest["version_label"],
                        "stage":manifest["stage"],"shard":f"{manifest['shard']:02d}",
                        "source_run":manifest["source_actions_run_id"],
                        "archive_sha256":manifest["archive_sha256"],
                        "original_path":origin,"filename":PurePosixPath(origin).name,
                        "suffix":suffix,"format":kind,"category":category,
                        "size_bytes":length,"sha256":digest.hexdigest(),
                        "small_file_candidate":candidate,
                        "publication_status":"metadata-only-needs-rights-review"
                    }
                    w.writerow(row)
                    counts["files"]+=1
                    counts["small_file_candidates"]+=candidate
                    sizes[category]+=length
                    types[kind]+=1
    finally:
        proc.stdout.close()
        thread.join(timeout=180)
        if thread.is_alive():
            proc.kill()
            raise RuntimeError("archive writer did not finish")
    err=proc.stderr.read().decode("utf-8","replace")[-1600:]
    proc.stderr.close()
    ret=proc.wait()
    if errors or ret:
        records.unlink(missing_ok=True)
        raise RuntimeError("archive verification or zstd failed: "+str(errors)+" "+err)
    if counts["files"]!=manifest["source_file_count"]:
        records.unlink(missing_ok=True)
        raise ValueError(f"source count mismatch: {counts['files']} != {manifest['source_file_count']}")
    summary={
        "source_archive":shard_dir.as_posix(),
        "archive_sha256":manifest["archive_sha256"],"source_run":manifest["source_actions_run_id"],
        "region":manifest["region"],"version":manifest["version_label"],
        "stage":manifest["stage"],"shard":manifest["shard"],
        "file_count":counts["files"],"small_file_candidates":counts["small_file_candidates"],
        "total_size_bytes":sum(sizes.values()),"formats":dict(sorted(types.items())),
        "category_bytes":dict(sorted(sizes.items())),
        "status":"real-source-streamed-sha256-verified",
        "scope":"metadata-only; candidates are not approved for publication"
    }
    if summary["total_size_bytes"]!=manifest["source_total_bytes"]:
        raise ValueError("source bytes mismatch with manifest")
    (out/"summary.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("CATALOG_OK",json.dumps({k:summary[k] for k in ("stage","shard","file_count","small_file_candidates","total_size_bytes")}),flush=True)
    return summary

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("shard_dir",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--max-small",type=int,default=512*1024)
    args=p.parse_args()
    index(args.shard_dir,args.out,args.max_small)
if __name__=="__main__":main()
