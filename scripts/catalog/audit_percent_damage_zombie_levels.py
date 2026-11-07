#!/usr/bin/env python3
"""Evidence-first CHN 4.2.8 percent-damage and zombie level-curve audit.

Read SHA256-indexed original Internal-05 JSON, preserve source file/object index.
Percent, damage multipliers, poison and trigger probability are separate concepts.
No runtime poison formula, max-HP semantics, or 10-level mode curve is invented.
"""
from __future__ import annotations
import argparse
from collections import Counter,defaultdict
import csv
import hashlib
import json
from pathlib import Path
import re

PERCENT = re.compile(r"(?i)percent|percentage|ratio|proportion|fraction|healthdamage|hpdamage|maxhp|currenthp|healthpercent|percenthealth|dotdamage|poison|toxic|venom|bleed|plague|corrosion")
DAMAGE = re.compile(r"(?i)damage|health|hitpoint|hitpoints|hp|poison|toxic|venom|bleed|dot|hurt|attack")
TRUE_HP = re.compile(r"(?i)(max.*(hp|health).*damage|damage.*max.*(hp|health)|percent.*(hp|health)|(?:hp|health).*percent|(?:hp|health).*damage.*ratio|damage.*(?:hp|health).*ratio)")
TRIGGER = re.compile(r"(?i)chance|probability|random|trigger|proc|critical")
CONTEXT = re.compile(r"(?i)poison|toxic|venom|bleed|corrosion|dps|damage|hp|health|ratio|percent|attack|level")
LEVEL = re.compile(r"(?i)(?:zombie.*level.*stat|zombie.*level.*data|endless.*level|danger.*level|level.*(?:hitpoint|attack)|zombie.*(?:hitpoints|attack).*level)")
DAMAGE_KEY = re.compile(r"(?i)damage|poison|toxic|venom|health|hitpoint|dps|bleed|ratio|percent|chance")
FIELDS = ["source_file","object_index","objclass","aliases","field_path","raw_value","reason","context_class","source_sha256"]
PROFILE = ["source_file","object_index","objclass","aliases","path","mode_hint","level_count","values_json","vector_hash","source_sha256"]


def sha_file(path):
    h=hashlib.sha256()
    with path.open("rb") as stream:
        for b in iter(lambda:stream.read(4*1024*1024),b""):h.update(b)
    return h.hexdigest()


def catalog(path):
    with path.open(encoding="utf-8-sig",newline="") as stream:
        return {r["original_path"]:r for r in csv.DictReader(stream)
                if r["format"]=="JSON" and r["original_path"].endswith(".json")}


def flatten(item,prefix="$",depth=0):
    if depth>22:return
    if isinstance(item,dict):
        for key,value in item.items():
            yield from flatten(value,prefix+"."+str(key),depth+1)
    elif isinstance(item,list):
        for i,value in enumerate(item):
            yield from flatten(value,f"{prefix}[{i}]",depth+1)
    else:
        yield prefix,item


def arrays(item,prefix="$",depth=0):
    if depth>22:return
    if isinstance(item,dict):
        for key,v in item.items():
            name=prefix+"."+str(key)
            if isinstance(v,list) and LEVEL.search(str(key)):
                yield name,v
            if isinstance(v,(dict,list)):
                yield from arrays(v,name,depth+1)
    elif isinstance(item,list):
        for i,v in enumerate(item):
            if isinstance(v,(dict,list)):yield from arrays(v,f"{prefix}[{i}]",depth+1)


def write_csv(path,columns,rows):
    with path.open("w",encoding="utf-8-sig",newline="") as stream:
        writer=csv.DictWriter(stream,fieldnames=columns)
        writer.writeheader();writer.writerows(rows)


def classify(path,class_name,value):
    name=(path+" "+class_name).lower()
    path_l=path.lower()
    if TRUE_HP.search(path_l):
        return "strong-name-based-hp-percent-candidate"
    if "percent" in path_l or "ratio" in path_l or "fraction" in path_l:
        if DAMAGE.search(name):
            return "damage-or-poison-ratio-candidate"
        if TRIGGER.search(name):
            return "chance-or-trigger-not-hp-damage"
        return "unclassified-ratio-not-proven-hp-damage"
    if "poison" in name or "toxic" in name or "venom" in name or "bleed" in name:
        if DAMAGE_KEY.search(path_l):
            return "poison-mechanic-candidate-not-proven-percent"
    return ""


def run(root,catalog_csv,out):
    out.mkdir(parents=True,exist_ok=True)
    index=catalog(catalog_csv)
    package_root=root/"04_JSON/dynamic/Packages/PACKAGES"
    if not package_root.is_dir():raise ValueError("Missing restored source packages")
    counters=Counter();found=[];profiles=[];objects=[];verified=[]
    seen_vec=Counter()
    read_total=0
    for file in package_root.rglob("*.json"):
        rel=file.relative_to(root).as_posix()
        item=index.get(rel)
        if not item: continue
        read_total+=1
        if not file.is_file() or file.is_symlink() or file.stat().st_size!=int(item["size_bytes"]):
            raise ValueError("Source byte-size mismatch: "+rel)
        sha=sha_file(file)
        if sha!=item["sha256"]:raise ValueError("Source SHA mismatch: "+rel)
        verified.append(rel)
        data=json.loads(file.read_text(encoding="utf-8-sig"))
        entries=data.get("objects",[]) if isinstance(data,dict) else []
        if not isinstance(entries,list):continue
        for i,obj in enumerate(entries):
            if not isinstance(obj,dict):continue
            cls=str(obj.get("objclass",""))
            props=obj.get("objdata",{})
            if not isinstance(props,dict):continue
            aliases=obj.get("aliases",[])
            alias=json.dumps(aliases,ensure_ascii=False)
            matched_fields=[]
            for p,val in flatten(props):
                if not isinstance(val,(str,int,float,bool)):continue
                reason=classify(p,cls,val)
                if not reason:continue
                # Exclude broad unrelated "health/attack" without percentage-like field name.
                if reason=="poison-mechanic-candidate-not-proven-percent" and (
                    not PERCENT.search(p) and not re.search(r"(?i)poison|toxic|venom|bleed",p)):
                    continue
                matched_fields.append((p,val,reason))
                counters[reason]+=1
                if len(found)<45000:
                    found.append(dict(source_file=rel,object_index=i,objclass=cls,
                                      aliases=alias[:500],field_path=p,
                                      raw_value=str(val)[:400],reason=reason,
                                      context_class=cls,source_sha256=sha))
            for p,seq in arrays(props):
                # Top-level or nested ZombieLevelStats arrays; preserve full raw values.
                if len(profiles)>=35000:continue
                digest=hashlib.sha256(json.dumps(seq,ensure_ascii=False,sort_keys=True).encode()).hexdigest()
                seen_vec[digest]+=1
                mode=(file.stem+" "+cls+" "+alias[:160])
                profiles.append(dict(source_file=rel,object_index=i,objclass=cls,
                                     aliases=alias[:320],path=p,mode_hint=mode[:250],
                                     level_count=len(seq),
                                     values_json=json.dumps(seq,ensure_ascii=False,separators=(",",":"))[:8500],
                                     vector_hash=digest,source_sha256=sha))
            if matched_fields or LEVEL.search(cls):
                # A complete object trace, capped only per-object to avoid 100MB output.
                critical={}
                for k,v in props.items():
                    if not (PERCENT.search(k) or re.search(r"(?i)poison|skill|action|damage|attack|level|zombie|health|hp",k)):
                        continue
                    raw=json.dumps(v,ensure_ascii=False,separators=(",",":"))
                    critical[k]=v if len(raw)<=8000 else {"truncated":True,"chars":len(raw),
                        "value_sha256":hashlib.sha256(raw.encode()).hexdigest(),"sample":raw[:1200]}
                objects.append(dict(source_file=rel,object_index=i,objclass=cls,
                                    aliases=aliases,detected_fields=len(matched_fields),
                                    candidate_properties=critical))
            counters["objects"]+=1
        counters["files"]+=1
    write_csv(out/"percent_field_hits.csv",FIELDS,found)
    write_csv(out/"zombie_level_profiles.csv",PROFILE,profiles)
    objs=sorted(objects,key=lambda x:(-x["detected_fields"],x["source_file"],x["object_index"]))
    # Preserve whole source-relevant subset; more than 2000 records may exceed comfortable git size.
    with (out/"candidate_source_objects.jsonl").open("w",encoding="utf-8") as f:
        for item in objs[:2500]:
            f.write(json.dumps(item,ensure_ascii=False,separators=(",",":"))+"\n")
    # Additional compact stats to distinguish source evidence from runtime semantics.
    freq=Counter((x["objclass"],x["source_file"].split("/")[-1]) for x in objs)
    profile_shapes=Counter((x["level_count"],x["objclass"],x["mode_hint"].split(" ")[0]) for x in profiles)
    summary=dict(
        version="CHN 4.2.8",
        origin="SHA256-verified Internal-05 actual JSON not community article",
        total_source_json_files=len(verified),objects_seen=counters["objects"],
        candidate_field_counts=dict(sorted(counters.items())),
        percent_field_hits=len(found),source_candidate_objects=len(objects),
        reported_objects=min(len(objects),2500),level_vectors=len(profiles),
        unique_zombie_level_vectors=len(seen_vec),
        top_source_candidate_classes=[dict(objclass=k[0],file=k[1],count=v)
            for k,v in freq.most_common(90)],
        level_profile_shapes=[dict(count=n,level_count=k[0],objclass=k[1],
                                   mode_hint=k[2]) for k,n in profile_shapes.most_common(80)],
        important_limitations=[
            "A field containing Percent or Ratio is NOT proof of target maximum-health damage",
            "Poison status is not automatically percent poison",
            "Trigger chances and plant attack buffs are not percent damage",
            "Even verified ZombieLevelStats are source data, modes choose different curves",
            "Source object literals do not establish native runtime damage calculation",
            "Output includes source SHA256 and object index; no original binary game assets copied"
        ])
    (out/"SUMMARY.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("PERCENT_DAMAGE_ZOMBIE_LEVEL_AUDIT",json.dumps({
        "files":len(verified),"objects":counters["objects"],
        "candidates":len(found),"sources":len(objects),
        "level_vectors":len(profiles),"unique_vectors":len(seen_vec),
        "reasons":dict(counters)
    },ensure_ascii=False))
    return summary


if __name__=="__main__":
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--raw-root",required=True,type=Path)
    p.add_argument("--source-index",required=True,type=Path)
    p.add_argument("--out",required=True,type=Path)
    x=p.parse_args()
    run(x.raw_root,x.source_index,x.out)
