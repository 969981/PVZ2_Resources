#!/usr/bin/env python3
"""Four-plant poison source ledger, no unsourced historical assertions.

Restores CHN 4.2.8 SHA-verified source JSON and extracts exact aliases,
fields, original numeric values and explicit RTID edges to investigate
nerfs to mulberry/convallariachemist/lotusshooter/tigerstool.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from collections import defaultdict,Counter
from pathlib import Path
import re

PLANTS=("mulberry","convallariachemist","lotusshooter","tigerstool")
STEMS=("PLANTTYPES","PROPERTYSHEETS","PROJECTILETYPES","SKILLTYPES",
       "PLANTACTIONS","GRIDITEMTYPES","ZOMBIEACTIONS","LEVELMODULES")
HINT=re.compile(r"mulberry|convallaria|lotusshoot|tigerstool|poisonmist|toxicwater|venom|gasgrenade",re.I)
INTEREST=re.compile(r"(?i)damage|health|hp|poison|venom|gas|rate|percent|prob|chance|time|duration|crit|splash|slow|stun|bomb|attack|special|throw|random|level|rank|tick|interval|griditem|projectile")
RTID=re.compile(r"^RTID\((.+)@([^()]+)\)$",re.I)
COLUMNS=("source_file","object_index","objclass","aliases","field_path","raw_value",
         "value_type","selection_reason","source_sha256")
EDGE=("source_file","object_index","field_path","raw_rtid","scope",
      "target_source_file","target_object_index","target_objclass","target_alias",
      "resolution_status")

def sha(path):
 h=hashlib.sha256()
 with path.open("rb") as f:
  for b in iter(lambda:f.read(4*1024*1024),b""):h.update(b)
 return h.hexdigest()

def load(root,inventory):
 with inventory.open(encoding="utf-8-sig",newline="") as f:
  audit={r["original_path"]:r for r in csv.DictReader(f)}
 result=[]; verified={}
 prefix="04_JSON/dynamic/Packages/PACKAGES/"
 for stem in STEMS:
  rel=prefix+stem+".json"
  if rel not in audit:continue
  info=audit[rel];path=root/rel
  if not path.is_file() or path.is_symlink() or path.stat().st_size!=int(info["size_bytes"]):
   raise ValueError("Missing or length mismatch: "+rel)
  actual=sha(path)
  if actual!=info["sha256"]:raise ValueError("Source hash mismatch: "+rel)
  verified[stem]=actual
  blob=json.loads(path.read_text(encoding="utf-8-sig"))
  if not isinstance(blob,dict) or not isinstance(blob.get("objects"),list):
   raise ValueError("Source JSON missing objects[]: "+rel)
  for i,x in enumerate(blob["objects"]):
   if not isinstance(x,dict) or not isinstance(x.get("objdata"),dict):continue
   result.append({"source":rel,"index":i,"class":x.get("objclass",""),
                  "alias":x.get("aliases",[]),"data":x["objdata"]})
 return result,verified

def flat(value,path="$",depth=0):
 if depth>28:return
 if isinstance(value,dict):
  for k,v in value.items():yield from flat(v,path+"."+str(k),depth+1)
 elif isinstance(value,list):
  for i,v in enumerate(value):yield from flat(v,f"{path}[{i}]",depth+1)
 else:yield path,value

def keyname(v):
 if not isinstance(v,str):return ""
 m=RTID.fullmatch(v)
 return m.group(1) if m else v

def run(root,inventory,out):
 out.mkdir(parents=True,exist_ok=True)
 records,verified=load(root,inventory)
 indexed=defaultdict(list)
 scoped={ "PROPERTYSHEETS":"PropertySheets","PROJECTILETYPES":"ProjectileTypes",
          "SKILLTYPES":"SkillTypes","PLANTTYPES":"PlantTypes",
          "GRIDITEMTYPES":"GridItemTypes","PLANTACTIONS":"PlantActions"}
 for r in records:
  stem=Path(r["source"]).stem.upper()
  for a in r["alias"]:
   if not isinstance(a,str):continue
   indexed[(a,scoped.get(stem,""))].append(r)
 selected={}
 all_plants={}
 for r in records:
  aliases=" ".join(str(a) for a in r["alias"])
  k=(r["source"],r["index"])
  if HINT.search(str(r["class"])+" "+aliases):
   selected[k]=("class-or-alias-hint",r)
  if r["source"].endswith("/PLANTTYPES.json"):
   names=set(str(x).casefold() for x in r["alias"])
   typ=str(r["data"].get("TypeName","")).casefold()
   if typ in PLANTS or any(t in names for t in PLANTS):
    all_plants[typ]=r
    selected[k]=("exact-plant-TypeName",r)
 for p,r in all_plants.items():
  value=r["data"].get("Properties")
  k=keyname(value)
  if isinstance(value,str) and "@" in value:
   sym,scope=k.rsplit("@",1)
   for t in indexed.get((sym,scope.lstrip("$")),[]):
    selected[(t["source"],t["index"])]=("explicit-PlantType-property-RTID",t)
 # expand explicit RTIDs from initial selected objects up to 2 steps; only
 # true source-scope alias resolution receives "exact" label.
 for depth in range(2):
  addition={}
  for reason,r in list(selected.values()):
   for path,v in flat(r["data"]):
    if not isinstance(v,str):continue
    m=RTID.fullmatch(v.strip())
    if not m:continue
    name,scope=m.group(1),m.group(2).lstrip("$")
    for target in indexed.get((name,scope),[]):
     k=(target["source"],target["index"])
     if k not in selected and k not in addition:
      addition[k]=("RTID-target-step-"+str(depth+1),target)
  if not addition:break
  # Prevent accidentally including huge full skill universe via broad references.
  for k,entry in list(addition.items())[:550]:selected[k]=entry
 rows=[];edges=[];compact=[];proof=Counter()
 for reason,r in selected.values():
  aliases=json.dumps(r["alias"],ensure_ascii=False,separators=(",",":"))
  subset={}
  for path,v in flat(r["data"]):
   if not isinstance(v,(str,int,float,bool)):continue
   if INTEREST.search(path) or isinstance(v,str) and RTID.fullmatch(v.strip()):
    rows.append({"source_file":r["source"],"object_index":r["index"],
                 "objclass":r["class"],"aliases":aliases,"field_path":path,
                 "raw_value":str(v)[:550],"value_type":type(v).__name__,
                 "selection_reason":reason,
                 "source_sha256":verified.get(Path(r["source"]).stem.upper(),"")})
   if isinstance(v,str):
    m=RTID.fullmatch(v.strip())
    if m:
     name,scope=m.group(1),m.group(2).lstrip("$")
     targets=indexed.get((name,scope),[])
     if not targets:
      edges.append({"source_file":r["source"],"object_index":r["index"],
                   "field_path":path,"raw_rtid":v,"scope":scope,
                   "target_source_file":"","target_object_index":"","target_objclass":"",
                   "target_alias":"","resolution_status":"unresolved-in-selected-source"})
     for target in targets[:15]:
      edges.append({"source_file":r["source"],"object_index":r["index"],
                   "field_path":path,"raw_rtid":v,"scope":scope,
                   "target_source_file":target["source"],
                   "target_object_index":target["index"],
                   "target_objclass":target["class"],
                   "target_alias":json.dumps(target["alias"],ensure_ascii=False),
                   "resolution_status":"exact-static-alias" if len(targets)==1
                   else "ambiguous-static-alias"})
  # To avoid giant data dumps, preserve full raw nested source only when small.
  raw=json.dumps(r["data"],ensure_ascii=False,separators=(",",":"),sort_keys=True)
  compact.append({
   "source_file":r["source"],"object_index":r["index"],"objclass":r["class"],
   "aliases":r["alias"],"selection_reason":reason,
   "source_sha256":verified.get(Path(r["source"]).stem.upper(),""),
   "raw_data":r["data"] if len(raw)<25000 else
      {"omitted":True,"bytes":len(raw.encode()),"sha256":hashlib.sha256(raw.encode()).hexdigest()},
  })
  proof[reason]+=1
 for filename,header,data in [
  ("native_poison_fields.csv",COLUMNS,rows),
  ("native_poison_rtid_edges.csv",EDGE,edges)]:
  with (out/filename).open("w",encoding="utf-8-sig",newline="") as f:
   wr=csv.DictWriter(f,fieldnames=header);wr.writeheader();wr.writerows(data)
 with (out/"native_selected_objects.jsonl").open("w",encoding="utf-8") as f:
  for rec in compact:f.write(json.dumps(rec,ensure_ascii=False,separators=(",",":"))+"\n")
 summary={"source_version":"CHN 4.2.8",
          "four_plants":sorted(all_plants),
          "verified_file_sha256":verified,
          "selected_source_objects":len(selected),
          "numeric_string_field_rows":len(rows),
          "RTID_edges":len(edges),
          "edge_status":dict(Counter(e["resolution_status"] for e in edges)),
          "selection_reason_counts":dict(proof),
          "warning":["Static 4.2.8 snapshots cannot identify which older version nerfed stats.",
                     "A PoisonDamage of 1 is not automatically 1% maximum-health damage.",
                     "RTID matches prove static source reference, not exact runtime damage function.",
                     "Some plant action objects may be outside the selected package files."]}
 (out/"SOURCE_SUMMARY.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
 print(json.dumps(summary,ensure_ascii=False))
 return summary

if __name__=="__main__":
 ap=argparse.ArgumentParser(description=__doc__)
 ap.add_argument("--raw-root",required=True,type=Path)
 ap.add_argument("--source-index",required=True,type=Path)
 ap.add_argument("--out",required=True,type=Path)
 x=ap.parse_args()
 run(x.raw_root,x.source_index,x.out)
