#!/usr/bin/env python3
"""Export real CHN 4.2.8 direct RTON manifest resources into SQLite and CSV.

No numerical gameplay statistics are inferred: these are assets and references.
"""
from __future__ import annotations
import argparse
from collections import Counter
import csv
import hashlib
import json
from pathlib import Path
import sqlite3
import zipfile

APK_HASH="64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"

def build(source: Path, output: Path)->dict:
    files=sorted(x for x in source.rglob("resources*.json") if x.is_file())
    if not files:
        raise ValueError("No resources*.json files found")
    output.mkdir(parents=True,exist_ok=True)
    db=sqlite3.connect(output/"pvz2_chs428_resources.sqlite")
    db.executescript("""
CREATE TABLE IF NOT EXISTS sources(source_file TEXT PRIMARY KEY, region TEXT, version TEXT, apk_sha256 TEXT, json_sha256 TEXT, groups INTEGER, resources INTEGER);
CREATE TABLE IF NOT EXISTS groups(source_file TEXT, group_index INTEGER, group_id TEXT, group_type TEXT, parent_id TEXT, res TEXT, subgroups_json TEXT, PRIMARY KEY(source_file,group_index));
CREATE TABLE IF NOT EXISTS resources(source_file TEXT, group_index INTEGER, resource_index INTEGER, type TEXT, resource_id TEXT, resource_path TEXT, atlas_parent_id TEXT, atlas INTEGER, width INTEGER, height INTEGER, ax INTEGER, ay INTEGER, aw INTEGER, ah INTEGER, slot INTEGER, raw_json TEXT NOT NULL, PRIMARY KEY(source_file,group_index,resource_index));
CREATE TABLE IF NOT EXISTS resource_links(source_file TEXT, from_id TEXT, to_id TEXT, relation TEXT, group_id TEXT);
CREATE INDEX IF NOT EXISTS ix_resources_id ON resources(resource_id);
CREATE INDEX IF NOT EXISTS ix_resources_type ON resources(type);
CREATE INDEX IF NOT EXISTS ix_resource_links_parent ON resource_links(to_id);
""")
    resource_cols=["source_file","group_id","group_type","resource_type","resource_id","resource_path","atlas_parent_id","atlas","width","height","ax","ay","aw","ah","slot"]
    group_cols=["source_file","group_index","group_id","group_type","parent_id","res","subgroup_count","resource_count"]
    summary=Counter()
    with (output/"resources.csv").open("w",encoding="utf-8-sig",newline="") as rstream, (output/"groups.csv").open("w",encoding="utf-8-sig",newline="") as gstream:
        rw=csv.DictWriter(rstream,fieldnames=resource_cols);rw.writeheader()
        gw=csv.DictWriter(gstream,fieldnames=group_cols);gw.writeheader()
        for path in files:
            content=path.read_bytes()
            data=json.loads(content)
            groups=data.get("groups")
            if not isinstance(groups,list):
                raise ValueError(f"{path}: missing groups array")
            n=0
            for gi,g in enumerate(groups):
                gid=g.get("id");type_=g.get("type")
                members=g.get("resources",[])
                db.execute("INSERT INTO groups VALUES (?,?,?,?,?,?,?)",(path.name,gi,gid,type_,g.get("parent"),g.get("res"),json.dumps(g.get("subgroups",[]),ensure_ascii=False)))
                gw.writerow({"source_file":path.name,"group_index":gi,"group_id":gid,"group_type":type_,"parent_id":g.get("parent"),"res":g.get("res"),"subgroup_count":len(g.get("subgroups",[])),"resource_count":len(members)})
                for sg in g.get("subgroups",[]):
                    if isinstance(sg,dict) and sg.get("id") and gid:
                        db.execute("INSERT INTO resource_links VALUES (?,?,?,?,?)",(path.name,gid,sg["id"],"subgroup",gid))
                for ri,r in enumerate(members):
                    pathparts=r.get("path",[])
                    resourcepath="/".join(map(str,pathparts)) if isinstance(pathparts,list) else str(pathparts)
                    rid=r.get("id");parent=r.get("parent")
                    vals=(path.name,gi,ri,r.get("type"),rid,resourcepath,parent,int(bool(r.get("atlas"))),r.get("width"),r.get("height"),r.get("ax"),r.get("ay"),r.get("aw"),r.get("ah"),r.get("slot"),json.dumps(r,ensure_ascii=False,separators=(",",":")))
                    db.execute("INSERT INTO resources VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)",vals)
                    rw.writerow(dict(zip(resource_cols,(path.name,gid,type_,r.get("type"),rid,resourcepath,parent,int(bool(r.get("atlas"))),r.get("width"),r.get("height"),r.get("ax"),r.get("ay"),r.get("aw"),r.get("ah"),r.get("slot")))))
                    if rid and parent:
                        db.execute("INSERT INTO resource_links VALUES (?,?,?,?,?)",(path.name,rid,parent,"atlas_parent",gid))
                    summary["type_"+str(r.get("type"))]+=1
                    n+=1
            db.execute("INSERT INTO sources VALUES (?,?,?,?,?,?,?)",(path.name,"CHN","4.2.8",APK_HASH,hashlib.sha256(content).hexdigest(),len(groups),n))
            db.commit()
            summary["source_json_files"]+=1
            summary["groups"]+=len(groups)
            summary["resources"]+=n
    db.close()
    result={"game":"PvZ2","region":"CHN","version":"4.2.8","source_apk_sha256":APK_HASH,
            "source_actions_run_id":42259518014,"scope":"resource manifests only; no validated combat stats, level waves, or Chinese display names",
            "counts":dict(summary)}
    (output/"SUMMARY.json").write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding="utf-8")
    (output/"README.md").write_text("# PvZ2 CHN 4.2.8 resource catalog\n\n18 RTON manifests from the authentic APK. Includes sources, groups, resources and atlas/subgroup references with original JSON per resource.\n\nThis is NOT a verified plant/zombie combat stat, skill, level-wave, or Chinese-display-name database. Those require in-game configuration schemas and localization sources. Every row retains its source filename.\n",encoding="utf-8")
    return result

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("source",type=Path)
    p.add_argument("--out",type=Path,required=True)
    p.add_argument("--zip",type=Path)
    a=p.parse_args()
    result=build(a.source,a.out)
    if a.zip:
        a.zip.parent.mkdir(parents=True,exist_ok=True)
        with zipfile.ZipFile(a.zip,"w",zipfile.ZIP_DEFLATED,compresslevel=7) as archive:
            for path in a.out.iterdir():
                if path.is_file():
                    archive.write(path,path.name)
    print(json.dumps(result,ensure_ascii=False),flush=True)
if __name__=="__main__":
    main()
