#!/usr/bin/env python3
"""Export one browseable JSON *parsed record* per source-backed PVZ2 file.

Read the already validated 26,774-row Catalog parser outputs and generate
Parsed/CHN/V4.2.8/<stage>/shard-NN/<format>/<hash-prefix>/
<hash>--<safe-original-basename>.parsed.json.

Each output contains real parser metadata, objclass counts, sampled RTIDs,
original path, source SHA256, and exact status. No proprietary game image,
audio, model, Lua bytecode, or original configuration payload is copied.

The original relative path is preserved inside every JSON. Hash-addressed
filenames avoid case collisions and Windows path-length/control-char issues.
"""
from __future__ import annotations

import argparse
from collections import Counter, defaultdict
import csv
import hashlib
import json
import os
from pathlib import Path
import re

SHA256 = re.compile(r"^[0-9a-f]{64}$")
VERSION = "CHN/V4.2.8"
FIELDNAMES = [
    "stage", "shard", "original_path", "format", "size_bytes",
    "source_sha256", "parser_status", "parsed_record",
]
CLASS_COLUMNS = {"stage","shard","original_path","objclass","object_count"}
REF_COLUMNS = {
    "stage","shard","original_path","object_index","field_path","rtid",
    "alias","namespace"
}

def digest_file(path:Path)->str:
    h=hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda:f.read(4*1024*1024),b""):
            h.update(block)
    return h.hexdigest()

def checked_key(row):
    stage=row["stage"]
    shard=str(row["shard"]).zfill(2)
    orig=row["original_path"]
    if stage not in ("Internal","Media") or not re.fullmatch(r"\d{2}",shard):
        raise ValueError("invalid stage/shard")
    if not isinstance(orig,str) or not orig or "\x00" in orig:
        raise ValueError("empty/unsafe original filename")
    if not SHA256.fullmatch(row["sha256"]):
        raise ValueError("invalid original SHA256")
    return stage,shard,orig

def name_for(row):
    stage,shard,original=checked_key(row)
    ident=hashlib.sha256((stage+"\x00"+shard+"\x00"+original).encode("utf-8")).hexdigest()
    fmt=re.sub("[^A-Za-z0-9_-]","_",row["format"])[:32] or "Unknown"
    basename=original.split("/")[-1].split("\\")[-1]
    safe=re.sub("[^A-Za-z0-9._+-]","_",basename).strip(" ._")[:54] or "unnamed"
    return Path(stage)/("shard-"+shard)/fmt/ident[:2]/(ident[:24]+"--"+safe+".parsed.json")

def read_grouped(path,columns):
    groups=defaultdict(list)
    count=0
    with path.open("r",encoding="utf-8-sig",newline="") as source:
        reader=csv.DictReader(source)
        if not reader.fieldnames or not columns.issubset(reader.fieldnames):
            raise ValueError("missing expected columns: "+str(path))
        for row in reader:
            key=(row["stage"],str(row["shard"]).zfill(2),row["original_path"])
            groups[key].append(row)
            count+=1
    return groups,count

def export(src:Path,out:Path,expected:int=26774):
    summary_path=src/"SUMMARY.json"
    summary=json.loads(summary_path.read_text(encoding="utf-8"))
    source_files={"assets":src/"assets.csv","classes":src/"object_classes.csv",
                  "rtid_samples":src/"rtid_samples.csv"}
    if int(summary.get("files_processed",-1))!=expected:
        raise ValueError("source SUMMARY count does not match expected")
    if int(summary.get("shards_processed",-1))!=15 or summary.get("missing_shards")!=["Media-06"]:
        raise ValueError("unexpected source coverage; a new baseline requires a revised audit")

    classes,class_rows=read_grouped(source_files["classes"],CLASS_COLUMNS)
    references,reference_rows=read_grouped(source_files["rtid_samples"],REF_COLUMNS)
    if class_rows!=int(summary.get("class_row_count",-1)):
        raise ValueError("objclass rows mismatch")
    if reference_rows!=int(summary.get("rtid_sampled",-1)):
        raise ValueError("RTID sample rows mismatch")

    out.mkdir(parents=True,exist_ok=True)
    temp_index=out/"INDEX.csv.partial"
    temp_manifest=out/"MANIFEST.json.partial"
    seen=set()
    counts=Counter()
    statuses=Counter()
    by_stage=Counter()
    index_rows=[]
    total_bytes=0
    try:
        with source_files["assets"].open("r",encoding="utf-8-sig",newline="") as stream:
            reader=csv.DictReader(stream)
            required={"region","version","stage","shard","original_path","format","category",
                      "size_bytes","sha256","parser_status","metadata_json"}
            if not reader.fieldnames or not required.issubset(reader.fieldnames):
                raise ValueError("unexpected asset source schema")
            for row in reader:
                stage,shard,original=checked_key(row)
                key=stage,shard,original
                if key in seen:
                    raise ValueError("duplicate source identity "+repr(key))
                seen.add(key)
                if row["region"]!="CHN" or row["version"]!="4.2.8":
                    raise ValueError("mixed source region/version")
                size=int(row["size_bytes"])
                if size<0:raise ValueError("negative source file size")
                meta=json.loads(row["metadata_json"])
                if not isinstance(meta,dict):
                    raise ValueError("source parser metadata must be object")
                group=classes.pop(key,[])
                refs=references.pop(key,[])
                parsed_classes=[]
                for item in group:
                    num=int(item["object_count"])
                    if num<0:raise ValueError("negative objclass count")
                    parsed_classes.append({"objclass":item["objclass"],"count":num})
                parsed_refs=[{
                    "object_index":int(item["object_index"]),
                    "json_field_path":item["field_path"],
                    "raw_rtid":item["rtid"],
                    "alias":item["alias"],
                    "namespace":item["namespace"]
                } for item in refs]
                rel=name_for(row)
                payload={
                    "schema":"pvz2-individual-parsed-record-v1",
                    "source":{"region":"CHN","version":"4.2.8","stage":stage,
                              "shard":shard,"original_path":original,"file_bytes":size,
                              "sha256":row["sha256"],"format":row["format"],
                              "category":row["category"]},
                    "interpretation":{
                        "status":row["parser_status"],
                        "metadata":meta,
                        "object_classes":parsed_classes,
                        "rtid_samples":parsed_refs,
                    },
                    "scope":"Individual parsed evidence, not a copy of original game asset bytes",
                }
                content=(json.dumps(payload,ensure_ascii=False,sort_keys=True,
                                    separators=(",",":"))+"\n").encode("utf-8")
                target=out/rel
                if target.exists():
                    if target.is_symlink() or target.read_bytes()!=content:
                        raise ValueError("existing parsed record differs: "+str(target))
                else:
                    target.parent.mkdir(parents=True,exist_ok=True)
                    part=target.with_name(target.name+".partial")
                    with part.open("xb") as f:f.write(content)
                    os.replace(part,target)
                counts[row["format"]]+=1
                by_stage[stage]+=1
                statuses[row["parser_status"]]+=1
                total_bytes+=len(content)
                index_rows.append({"stage":stage,"shard":shard,"original_path":original,
                    "format":row["format"],"size_bytes":size,
                    "source_sha256":row["sha256"],
                    "parser_status":row["parser_status"],"parsed_record":rel.as_posix()})
        if classes or references:
            raise ValueError("orphaned class/ref rows not attached to source asset")
        if len(index_rows)!=expected or len(seen)!=expected:
            raise ValueError("source asset row count mismatch")
        if statuses!=Counter(summary["parser_status_counts"]):
            raise ValueError("parser statuses differ from source SUMMARY")
        if expected==26774 and by_stage!=Counter({"Internal":14869,"Media":11905}):
            raise ValueError("unexpected per-stage source counts")

        with temp_index.open("w",encoding="utf-8-sig",newline="") as f:
            writer=csv.DictWriter(f,fieldnames=FIELDNAMES)
            writer.writeheader()
            writer.writerows(index_rows)
        manifest={
            "schema":"pvz2-independent-parsed-records-manifest-v1",
            "version":"CHN 4.2.8","file_records":len(index_rows),
            "independent_json_files":len(index_rows),
            "total_generated_json_bytes":total_bytes,
            "stage_counts":dict(sorted(by_stage.items())),
            "format_counts":dict(sorted(counts.items())),
            "parser_status_counts":dict(sorted(statuses.items())),
            "missing_source_shards":["Media-06"],
            "source_catalog_sha256":{name:digest_file(path) for name,path in source_files.items()},
            "source_summary_sha256":digest_file(summary_path),
            "object_class_rows":class_rows,
            "rtid_sample_rows":reference_rows,
            "disclaimer":"Per-file parsed metadata only; no original PNG/WEM/PTX/PAM/media payload republished",
        }
        temp_manifest.write_text(json.dumps(manifest,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
        os.replace(temp_index,out/"INDEX.csv")
        os.replace(temp_manifest,out/"MANIFEST.json")
        print("INDEPENDENT_PARSED_FILES",json.dumps({
            "count":len(index_rows),"stage_counts":manifest["stage_counts"],
            "formats":manifest["format_counts"],
            "metadata_bytes":total_bytes},ensure_ascii=False),flush=True)
        return manifest
    finally:
        temp_index.unlink(missing_ok=True)
        temp_manifest.unlink(missing_ok=True)

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--src",type=Path,default=Path("Catalog/CHN/V4.2.8/parsed"))
    p.add_argument("--out",type=Path,default=Path("Parsed/CHN/V4.2.8"))
    p.add_argument("--expected",type=int,default=26774)
    a=p.parse_args()
    export(a.src,a.out,a.expected)

if __name__=="__main__":main()
