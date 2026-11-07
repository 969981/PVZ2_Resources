#!/usr/bin/env python3
"""Extract exact original game object fields from PvZ2 CN 4.2.8 JSON.

Category mapping is by exact objclass for validated records, not by filename.
Each raw field remains JSON-typed and source-file attributable. No arbitrary
level scaling, battle runtime formula or Chinese translation is inferred.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import json
from pathlib import Path
import re
import sqlite3
import zipfile

APK_SHA="64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
CATEGORIES={
 "PlantType":"plant_types",
 "PlantPropertySheet":"plant_properties",
 "ZombieType":"zombie_types",
 "ZombiePropertySheet":"zombie_properties",
 "LevelDefinition":"levels",
 "WaveManagerProperties":"wave_managers",
 "SkillPropertySheet":"skills",
 "ProjectilePropertySheet":"projectiles"
}
FIELDS={
 "plant_types":["TypeName","IntegerID","Properties","PlantResourceGroups","HomeWorld","Rare","Profession","PlantFramework","PopAnim"],
 "plant_properties":["Hitpoints","Cost","PacketCooldown","PlantLevelStats","PlantStats","MinLevel","MaxLevel","DamageType"],
 "zombie_types":["TypeName","IntegerID","Properties","ResourceGroups","HomeWorld","PopAnim","ZombieClass"],
 "zombie_properties":["Hitpoints","Speed","EatDPS","AttackDPS","WavePointCost","Weight","ZombieStats","ZombieLevelStats","Helm","HelmHitpoints"],
 "levels":["Name","Description","LevelNumber","LevelIndex","StageModule","Modules","VictoryModule","StartingSun","ZombieLevel","MusicType"],
 "wave_managers":["WaveCount","Waves","FlagWaveInterval","WaveSpendingPoints","WaveSpendingPointIncrement","DescriptionName"],
 "skills":["SkillName","SkillDescription","SkillIconImage"],
 "projectiles":["BaseDamage","SplashDamage","SplashRadius","DamageType","CollisionFlags","InitialVelocity"]
}
HAN=re.compile(r"[\u3400-\u9fff]")

def category(cls:str):
    if cls in CATEGORIES:
        return CATEGORIES[cls]
    if cls.startswith("PlantType"):
        return "plant_types"
    return None

def build(root:Path,out:Path)->dict:
    files=sorted(root.rglob("*.json"))
    out.mkdir(parents=True,exist_ok=True)
    con=sqlite3.connect(out/"pvz2_chs428_gameplay.sqlite")
    con.executescript("""
CREATE TABLE IF NOT EXISTS source_json(path TEXT PRIMARY KEY, sample_version TEXT, json_bytes INTEGER);
CREATE TABLE IF NOT EXISTS game_objects(category TEXT NOT NULL, source_file TEXT NOT NULL, object_index INTEGER NOT NULL, objclass TEXT NOT NULL, aliases_json TEXT NOT NULL, objdata_json TEXT NOT NULL, PRIMARY KEY(source_file,object_index));
CREATE INDEX IF NOT EXISTS ix_game_objects_cat ON game_objects(category);
CREATE INDEX IF NOT EXISTS ix_game_objects_class ON game_objects(objclass);
CREATE TABLE IF NOT EXISTS localized_text_candidates(source_file TEXT, object_index INTEGER, objclass TEXT, field_name TEXT, text_value TEXT, status TEXT);
""")
    categories={}
    writers={}
    handles=[]
    for cat,fields in FIELDS.items():
        f=(out/(cat+".csv")).open("w",encoding="utf-8-sig",newline="")
        handles.append(f)
        cols=["source_file","object_index","objclass","aliases_json"]+fields
        w=csv.DictWriter(f,fieldnames=cols)
        w.writeheader()
        writers[cat]=w
    counts=Counter()
    examples={}
    errors=[]
    for path in files:
        relative=path.relative_to(root).as_posix()
        try:
            with path.open("r",encoding="utf-8") as stream:
                raw=json.load(stream)
            counts["files_valid"]+=1
            rows=raw.get("objects") if isinstance(raw,dict) else None
            if not isinstance(rows,list):
                continue
            con.execute("INSERT INTO source_json VALUES (?,?,?)",(relative,"CHN 4.2.8",path.stat().st_size))
            for i,item in enumerate(rows):
                if not isinstance(item,dict):
                    continue
                cls=item.get("objclass")
                if not isinstance(cls,str):
                    continue
                cat=category(cls)
                if not cat:
                    continue
                obj=item.get("objdata")
                if not isinstance(obj,dict):
                    obj={}
                aliases=json.dumps(item.get("aliases",[]),ensure_ascii=False,separators=(",",":"))
                record={"source_file":relative,"object_index":i,"objclass":cls,"aliases_json":aliases}
                for field in FIELDS[cat]:
                    if field in obj:
                        record[field]=json.dumps(obj[field],ensure_ascii=False,separators=(",",":"))
                writers[cat].writerow(record)
                con.execute("INSERT INTO game_objects VALUES (?,?,?,?,?,?)",(cat,relative,i,cls,aliases,json.dumps(obj,ensure_ascii=False,separators=(",",":"))))
                counts[cat]+=1
                if cls in CATEGORIES:
                    counts["exact_"+cls]+=1
                if cat not in examples:
                    examples[cat]={"source":relative,"objclass":cls,"aliases":item.get("aliases",[]),
                                   "field_names":list(obj)[:50]}
                for field,value in obj.items():
                    if isinstance(value,str) and HAN.search(value):
                        con.execute("INSERT INTO localized_text_candidates VALUES (?,?,?,?,?,?)",
                                    (relative,i,cls,field,value,"source-string-unverified-as-UI-name"))
                        counts["chinese_text_candidates"]+=1
            con.commit()
        except (OSError,ValueError,UnicodeError,sqlite3.Error) as exc:
            errors.append({"file":relative,"error":str(exc)[:350]})
            continue
    for f in handles:
        f.close()
    con.commit()
    con.close()
    report={"scope":"exact objclass game configs; values copied without level scaling or guessed units",
            "source_apk_sha256":APK_SHA,"source_actions_run_id":42259266531,
            "files_scanned":len(files),"counts":dict(counts),
            "field_lists":FIELDS,"examples":examples,"errors":errors[:100],
            "limitations":[
                "PlantType and ZombieType records are not proven distinct species",
                "PropertySheet values and type references are not resolved/merged yet",
                "WaveManagerProperties Waves are original arrays, not resolved event spawns",
                "Chinese-text candidates are not verified official display-name mappings",
                "Combat runtime formulas require separate program validation"
            ]}
    (out/"SUMMARY.json").write_text(json.dumps(report,indent=2,ensure_ascii=False),
                                     encoding="utf-8")
    print(json.dumps({"files_scanned":len(files),"counts":dict(counts),"errors":len(errors)},
                     ensure_ascii=False),flush=True)
    return report

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--zip",type=Path,required=True)
    a=p.parse_args()
    result=build(a.source,a.out)
    a.zip.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(a.zip,"w",zipfile.ZIP_DEFLATED,compresslevel=7) as z:
        for file in a.out.iterdir():
            if file.is_file():
                z.write(file,file.name)
    if a.zip.stat().st_size >= 95_000_000:
        raise ValueError("gameplay database ZIP exceeds safe Git blob size; split before committing")
if __name__=="__main__":
    main()
