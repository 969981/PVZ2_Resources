#!/usr/bin/env python3
"""Lossless source-backed game level reference and wave-action graph for PvZ2 CHN.

Target IDs resolve only in their explicit RTID namespace:
 @CurrentLevel -> aliases in exactly the same JSON file
 @PropertySheets, @LevelModules, @ProjectileTypes, etc. -> aliases from files
 whose base filename equals the namespace (case-insensitive).
Every missing/ambiguous ref is recorded; no global fuzzy resolution.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
from functools import lru_cache
import json
from pathlib import Path
import re
import sqlite3
import zipfile

REF_RE=re.compile(r"RTID\(([^@()]+)@([^()]+)\)")
NULL_RE=re.compile(r"RTID\((?:0|NULL|null)\)")
NORM=re.compile(r"[^a-z0-9]")
TYPES={"LevelDefinition","WaveManagerProperties","WaveManagerModuleProperties",
       "PlantType","ZombieType","PlantPropertySheet","ZombiePropertySheet",
       "ProjectilePropertySheet","SkillPropertySheet"}
def normalize(s):
    return NORM.sub("",str(s).lower())

def iter_source(root):
    for p in sorted(root.rglob("*.json")):
        try:
            with p.open("r",encoding="utf-8") as stream:obj=json.load(stream)
        except (OSError,ValueError,UnicodeError) as exc:
            yield p,None,str(exc)
            continue
        yield p,obj,None

def enumerate_values(value,path="$",depth=0):
    if depth>24:return
    if isinstance(value,str):
        for m in REF_RE.finditer(value):
            yield path,m.group(0),m.group(1),m.group(2)
        return
    if isinstance(value,dict):
        for k,v in value.items():
            if isinstance(v,(str,list,dict)):
                yield from enumerate_values(v,path+"/"+str(k),depth+1)
    if isinstance(value,list):
        for i,v in enumerate(value):
            if isinstance(v,(str,list,dict)):
                yield from enumerate_values(v,path+"/"+str(i),depth+1)

def build(root,out):
    if not root.is_dir():raise ValueError("Missing source directory")
    out.mkdir(parents=True,exist_ok=True)
    db=sqlite3.connect(out/"pvz2_chs428_level_graph.sqlite")
    db.execute("PRAGMA journal_mode=OFF")
    db.execute("PRAGMA synchronous=OFF")
    db.executescript("""
CREATE TABLE source_files(source_file TEXT PRIMARY KEY,stem_normalized TEXT,object_count INTEGER,json_bytes INTEGER);
CREATE TABLE aliases(source_file TEXT,object_index INTEGER,objclass TEXT,alias TEXT,namespace TEXT,PRIMARY KEY(source_file,object_index,alias));
CREATE INDEX ix_alias_scope ON aliases(source_file,alias);
CREATE INDEX ix_alias_namespace ON aliases(namespace,alias);
CREATE TABLE level_definitions(source_file TEXT,object_index INTEGER,name_token TEXT,description_token TEXT,level_number TEXT,stage_module TEXT,module_count INTEGER,modules_json TEXT,original_json TEXT,PRIMARY KEY(source_file,object_index));
CREATE TABLE wave_managers(source_file TEXT,object_index INTEGER,aliases_json TEXT,wave_count_declared TEXT,wave_count_actual INTEGER,flag_wave_interval TEXT,original_json TEXT,PRIMARY KEY(source_file,object_index));
CREATE TABLE waves(source_file TEXT,manager_object_index INTEGER,wave_index INTEGER,action_index INTEGER,reference_text TEXT,target_source TEXT,target_object_index INTEGER,target_objclass TEXT,resolve_status TEXT);
CREATE TABLE reference_edges(source_file TEXT,source_object_index INTEGER,source_objclass TEXT,json_path TEXT,reference_text TEXT,reference_name TEXT,namespace TEXT,target_source TEXT,target_object_index INTEGER,target_objclass TEXT,status TEXT);
CREATE INDEX ix_edge_status ON reference_edges(status);
CREATE INDEX ix_edge_source ON reference_edges(source_file,source_object_index);
CREATE TABLE spawn_action_objects(source_file TEXT,object_index INTEGER,objclass TEXT,aliases_json TEXT,objdata_json TEXT,PRIMARY KEY(source_file,object_index));
""")
    stats=Counter()
    invalid=[]
    for p,obj,error in iter_source(root):
        rel=p.relative_to(root).as_posix()
        if error:
            invalid.append({"file":rel,"error":error[:240]})
            continue
        stats["json_valid"]+=1
        objects=obj.get("objects",[]) if isinstance(obj,dict) else []
        if not isinstance(objects,list):
            stats["not_game_object_file"]+=1
            continue
        stem=normalize(p.stem)
        db.execute("INSERT INTO source_files VALUES (?,?,?,?)",(rel,stem,len(objects),p.stat().st_size))
        for i,row in enumerate(objects):
            if not isinstance(row,dict):continue
            cls=row.get("objclass")
            if not isinstance(cls,str):continue
            aliases=row.get("aliases") or []
            if isinstance(aliases,str):aliases=[aliases]
            for alias in aliases:
                if isinstance(alias,str):
                    db.execute("INSERT OR IGNORE INTO aliases VALUES (?,?,?,?,?)",
                               (rel,i,cls,alias,stem))
            stats["game_object_records"]+=1
        if stats["json_valid"]%350==0:
            db.commit()
    db.commit()
    @lru_cache(maxsize=180000)
    def resolve(src,name,namespace):
        if normalize(namespace)=="currentlevel":
            matches=db.execute(
                "SELECT source_file,object_index,objclass FROM aliases WHERE source_file=? AND alias=?",
                (src,name)).fetchall()
        else:
            matches=db.execute(
                "SELECT source_file,object_index,objclass FROM aliases WHERE namespace=? AND alias=?",
                (normalize(namespace),name)).fetchall()
        if not matches:return (None,None,None,"missing")
        if len(matches)>1:return (None,None,None,"ambiguous")
        return (*matches[0],"resolved")
    preview=[]
    for p,obj,error in iter_source(root):
        if error:continue
        src=p.relative_to(root).as_posix()
        objects=obj.get("objects",[]) if isinstance(obj,dict) else []
        if not isinstance(objects,list):continue
        for i,row in enumerate(objects):
            if not isinstance(row,dict):continue
            cls=row.get("objclass","")
            if not isinstance(cls,str):continue
            data=row.get("objdata")
            if not isinstance(data,dict):continue
            aliases=row.get("aliases") or []
            if cls=="LevelDefinition":
                modules=data.get("Modules")
                if not isinstance(modules,list):modules=[]
                db.execute("INSERT INTO level_definitions VALUES (?,?,?,?,?,?,?,?,?)",
                    (src,i,str(data.get("Name","")),str(data.get("Description","")),
                     json.dumps(data.get("LevelNumber"),ensure_ascii=False),
                     str(data.get("StageModule","")),len(modules),
                     json.dumps(modules,ensure_ascii=False),json.dumps(data,ensure_ascii=False,separators=(",",":"))))
                stats["level_definitions"]+=1
            elif cls=="WaveManagerProperties":
                waves=data.get("Waves")
                if not isinstance(waves,list):waves=[]
                declared=data.get("WaveCount")
                if isinstance(declared,int) and declared!=len(waves):
                    stats["wave_count_disagreements"]+=1
                    if len(preview)<50:
                        preview.append({"source_file":src,"manager_index":i,
                                        "declared":declared,"actual":len(waves)})
                db.execute("INSERT INTO wave_managers VALUES (?,?,?,?,?,?,?)",
                           (src,i,json.dumps(aliases,ensure_ascii=False),json.dumps(declared),
                            len(waves),json.dumps(data.get("FlagWaveInterval")),
                            json.dumps(data,ensure_ascii=False,separators=(",",":"))))
                stats["wave_managers"]+=1
                stats["wave_slots"]+=len(waves)
                for wi,wave in enumerate(waves):
                    if not isinstance(wave,list):wave=[wave]
                    for ai,ref in enumerate(wave):
                        if not isinstance(ref,str):
                            stats["non_string_wave_actions"]+=1
                            continue
                        m=REF_RE.fullmatch(ref)
                        if not m:
                            stats["non_rtid_wave_actions"]+=1
                            db.execute("INSERT INTO waves VALUES (?,?,?,?,?,?,?,?,?)",
                                       (src,i,wi+1,ai,ref,None,None,None,"unparsed"))
                            continue
                        dest,dindex,dclass,status=resolve(src,m.group(1),m.group(2))
                        db.execute("INSERT INTO waves VALUES (?,?,?,?,?,?,?,?,?)",
                                   (src,i,wi+1,ai,ref,dest,dindex,dclass,status))
                        stats["wave_action_"+status]+=1
            if cls.endswith("WaveActionProps") or cls.endswith("SpawnerProps"):
                db.execute("INSERT INTO spawn_action_objects VALUES (?,?,?,?,?)",
                           (src,i,cls,json.dumps(aliases,ensure_ascii=False),
                            json.dumps(data,ensure_ascii=False,separators=(",",":"))))
                stats["wave_action_nodes"]+=1
            if cls in TYPES or cls.endswith("WaveActionProps") or cls.endswith("SpawnerProps"):
                for field,ref,name,namespace in enumerate_values(data):
                    dest,dindex,dclass,status=resolve(src,name,namespace)
                    db.execute("INSERT INTO reference_edges VALUES (?,?,?,?,?,?,?,?,?,?,?)",
                               (src,i,cls,field,ref,name,namespace,dest,dindex,dclass,status))
                    stats["references_"+status]+=1
            if cls=="WaveManagerModuleProperties":
                stats["wave_modules"]+=1
        if stats["json_valid"]%150==0:db.commit()
    db.commit()
    # CSV for level and wave schedule inspection.
    def export(query,columns,name):
        with (out/name).open("w",newline="",encoding="utf-8-sig") as file:
            w=csv.writer(file)
            w.writerow(columns)
            for row in db.execute(query):w.writerow(row)
    export("SELECT source_file,object_index,name_token,description_token,level_number,stage_module,module_count,modules_json FROM level_definitions",
           ["source_file","object_index","name","description","level_number_raw","stage_module","module_count","modules_json"],"levels.csv")
    export("SELECT source_file,manager_object_index,wave_index,action_index,reference_text,target_source,target_object_index,target_objclass,resolve_status FROM waves",
           ["source_file","manager_object_index","wave_index","action_index","RTID","target_source","target_index","target_class","status"],"waves.csv")
    export("SELECT source_file,source_object_index,source_objclass,json_path,reference_text,namespace,target_source,target_object_index,target_objclass,status FROM reference_edges WHERE status!='resolved'",
           ["source_file","object_index","objclass","field_path","RTID","namespace","target_source","target_index","target_class","status"],"unresolved_refs.csv")
    stats["alias_records"]=db.execute("SELECT count(*) FROM aliases").fetchone()[0]
    stats["wave_records"]=db.execute("SELECT count(*) FROM waves").fetchone()[0]
    stats["reference_records"]=db.execute("SELECT count(*) FROM reference_edges").fetchone()[0]
    class_counts=db.execute("SELECT objclass,count(*) FROM spawn_action_objects GROUP BY objclass ORDER BY count(*) DESC LIMIT 30").fetchall()
    examples=db.execute("SELECT source_file,source_object_index,reference_text,namespace,status FROM reference_edges WHERE status!='resolved' LIMIT 40").fetchall()
    db.close()
    report={"scope":"8,017 source JSON files in Internal/shard-05, including 6,636 LevelDefinition and 6,010 WaveManagerProperties",
            "counts":dict(stats),"top_action_classes":class_counts,
            "unresolved_examples":examples,"wave_count_mismatch_examples":preview,
            "invalid_json_examples":invalid[:20],
            "resolution_policy":"Exact alias; CurrentLevel=same file; other namespaces=exact normalized source filename; no guessed external matches",
            "limitations":["Source WaveCount mismatch does not itself prove corruption",
                "A resolved RTID is a data link, not verified runtime spawning",
                "Actions contain source game values; difficulty scaling and probabilities not executed",
                "Other 74 RTON JSON files beyond shard-05 not included in this package"]
            }
    (out/"SUMMARY.json").write_text(json.dumps(report,ensure_ascii=False,indent=2),encoding="utf-8")
    print("SUMMARY",json.dumps({k:v for k,v in report.items() if k not in ("unresolved_examples","top_action_classes","wave_count_mismatch_examples")},ensure_ascii=False),flush=True)
    if stats["level_definitions"]!=6636 or stats["wave_managers"]!=6010:
        raise ValueError("Unexpected key game-object counts; verify extraction source")
    if stats["wave_records"]==0:raise ValueError("No wave data found")
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--zip",type=Path,required=True)
    a=p.parse_args()
    build(a.source,a.out)
    a.zip.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(a.zip,"w",zipfile.ZIP_DEFLATED,compresslevel=6,allowZip64=True) as z:
        for f in a.out.iterdir():
            if f.is_file():z.write(f,f.name)
    print("ARCHIVE",a.zip.name,a.zip.stat().st_size,flush=True)
    if a.zip.stat().st_size>=95_000_000:
        raise ValueError("Graph ZIP too large for one Git blob, split into <=64MiB chunks")
if __name__=="__main__":
    main()
