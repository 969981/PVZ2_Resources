#!/usr/bin/env python3
"""Recover files by their original path from a locally restored shard.

Uses real SHA256 entries in Catalog/.../files.csv. By default prints a dry-run
plan; --copy materializes into a LOCAL output folder. NEVER commits game assets.
The technical ordinary-Git ceiling is configurable, default <95 MiB, not the
earlier <=512KiB text-preview classification.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import shutil

MIB=1024*1024
def sha256(file):
    h=hashlib.sha256()
    with file.open("rb") as source:
        for block in iter(lambda:source.read(4*MIB),b""):
            h.update(block)
    return h.hexdigest()

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--restored",type=Path,required=True,help="source files already restored by restore_git_shard.py")
    p.add_argument("--catalog",type=Path,required=True,help="matching per-shard Catalog/.../files.csv")
    p.add_argument("--out",type=Path,default=Path("Readable/CHN/V4.2.8"))
    p.add_argument("--max-file-mib",type=int,default=95,help="technical limit; 95MiB has margin below 100MiB")
    p.add_argument("--extensions",default="",help="optional comma-separated extensions such as .json,.png")
    p.add_argument("--copy",action="store_true",help="actually copy into local Readable/; default is audit only")
    p.add_argument("--report",type=Path)
    a=p.parse_args()
    if not 1<=a.max_file_mib<=95:p.error("max-file-mib must be 1..95")
    maxbytes=a.max_file_mib*MIB
    ext={x.strip().lower() for x in a.extensions.split(",") if x.strip()}
    if ext and any(not x.startswith(".") for x in ext):p.error("extension must start with .")
    root=a.restored.resolve(strict=True)
    output=a.out.resolve()
    if root==output or root in output.parents or output in root.parents:
        p.error("source and output folders may not overlap")
    rows=0;selected=0;oversize=0;filtered=0;total=0;verified=0
    examples=[]
    with a.catalog.open("r",newline="",encoding="utf-8-sig") as f:
        for row in csv.DictReader(f):
            rows+=1
            raw=row["original_path"]
            rel=PurePosixPath(raw)
            if rel.is_absolute() or not rel.parts or ".." in rel.parts or "\\" in raw:
                raise ValueError("invalid indexed member path "+repr(raw))
            size=int(row["size_bytes"])
            if size>=maxbytes:
                oversize+=1
                continue
            if ext and row["suffix"].lower() not in ext:
                filtered+=1
                continue
            src=root.joinpath(*rel.parts)
            if src.is_symlink() or not src.is_file() or root not in src.resolve().parents:
                raise ValueError("source not found / path escaped: "+raw)
            if src.stat().st_size!=size or sha256(src)!=row["sha256"]:
                raise ValueError("source SHA256 mismatch "+raw)
            dest=output/row["stage"]/f"shard-{int(row['shard']):02d}"/Path(*rel.parts)
            selected+=1;total+=size
            if a.copy:
                if dest.exists():
                    if dest.is_symlink() or sha256(dest)!=row["sha256"]:
                        raise ValueError("destination conflicts "+str(dest))
                else:
                    dest.parent.mkdir(parents=True,exist_ok=True)
                    temp=dest.with_name(dest.name+".part")
                    try:
                        with src.open("rb") as inp,temp.open("xb") as out:
                            shutil.copyfileobj(inp,out,4*MIB)
                        if sha256(temp)!=row["sha256"]:
                            raise ValueError("output SHA256 mismatch "+str(dest))
                        os.replace(temp,dest)
                    finally:
                        temp.unlink(missing_ok=True)
                verified+=1
            if len(examples)<12:
                examples.append({"original":raw,"bytes":size,"target":str(dest)})
    report={"mode":"local-copy" if a.copy else "dry-run","catalog":str(a.catalog),
            "files_indexed":rows,"eligible_for_selected_limit":selected,
            "excluded_by_size":oversize,"excluded_by_extension":filtered,
            "selected_total_bytes":total,"copied_or_verified":verified,
            "max_file_bytes_exclusive":maxbytes,
            "examples":examples,
            "note":"Size eligibility does not prove redistribution rights. No automatic Git publish."}
    if a.report:
        a.report.parent.mkdir(parents=True,exist_ok=True)
        a.report.write_text(json.dumps(report,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps(report,ensure_ascii=False,indent=2))

if __name__=="__main__":
    main()
