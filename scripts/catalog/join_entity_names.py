#!/usr/bin/env python3
"""Source-backed PvZ2 CN entity/localization exact-token joins.

For levels and skills, the game config explicitly contains [STRING_ID].
For plants/zombies, uppercase(TypeName) is only an identifier-matching hint.
Conflicting duplicate localization strings are never silently chosen.
"""
from __future__ import annotations
import argparse,csv,json,re,sqlite3,tempfile,zipfile
from collections import defaultdict,Counter
from pathlib import Path

CATS={"plant_types":("plants","TypeName",False),
      "zombie_types":("zombies","TypeName",False),
      "skills":("skills","SkillName",True),
      "levels":("levels","Name",True)}
FIELDS=["category","source_file","object_index","objclass","aliases_json",
        "internal_type","string_id","zh_cn_name","match_method","match_status",
        "description_id","zh_cn_description","description_status","objdata_json"]

def build(root,out):
    out.mkdir(parents=True,exist_ok=True)
    with tempfile.TemporaryDirectory() as temp:
        def open_db(archive,name):
            with zipfile.ZipFile(root/archive) as z:
                if name not in z.namelist():raise ValueError("Missing "+name)
                p=Path(z.extract(name,temp))
            return sqlite3.connect(p)
        game=open_db("pvz2_chs428_gameplay_shard05.zip","pvz2_chs428_gameplay.sqlite")
        lang=open_db("pvz2_chs428_lawnstrings.zip","pvz2_chs428_lawnstrings.sqlite")
        keys=defaultdict(set)
        for k,v in lang.execute("SELECT string_id,text_zh_cn FROM strings"):
            keys[k].add(v)
        def resolve(token,explicit):
            if not isinstance(token,str) or not token:return ("","","no-key")
            if explicit:
                if not(token.startswith("[") and token.endswith("]")):return ("","","no-bracket")
                key=token[1:-1]
            elif re.fullmatch(r"[A-Za-z0-9_.-]+",token):
                key=token.upper()
            else:return ("","","invalid-identifier")
            candidates=keys.get(key,set())
            if not candidates:return (key,"","not-found")
            if len(candidates)>1:return (key,"","ambiguous-duplicate")
            return (key,next(iter(candidates)),"matched")
        db=sqlite3.connect(out/"pvz2_chs428_localized_entities.sqlite")
        db.execute("CREATE TABLE entities(category TEXT,source_file TEXT,object_index INTEGER,objclass TEXT,aliases_json TEXT,internal_type TEXT,string_id TEXT,zh_cn_name TEXT,match_method TEXT,match_status TEXT,description_id TEXT,zh_cn_description TEXT,description_status TEXT,objdata_json TEXT,PRIMARY KEY(category,source_file,object_index))")
        db.execute("CREATE INDEX ix_entities_key ON entities(string_id)")
        files={}
        csvwriters={}
        for _cat,(filename,_,_) in CATS.items():
            f=(out/(filename+".csv")).open("w",encoding="utf-8-sig",newline="")
            w=csv.DictWriter(f,fieldnames=FIELDS)
            w.writeheader()
            files[filename]=f;csvwriters[filename]=w
        counts=Counter()
        for cat,source,index,cls,aliases,raw in game.execute(
                "SELECT category,source_file,object_index,objclass,aliases_json,objdata_json FROM game_objects"):
            if cat not in CATS:continue
            file,keyfield,explicit=CATS[cat]
            obj=json.loads(raw)
            key,name,status=resolve(obj.get(keyfield),explicit)
            if file in ("skills","levels"):
                descfield="SkillDescription" if file=="skills" else "Description"
                dkey,description,dstatus=resolve(obj.get(descfield),True)
            else:
                dkey=description=""
                dstatus="not-applicable"
            method="explicit-string-token" if explicit else "casefolded-TypeName-candidate"
            row=dict(zip(FIELDS,(file,source,index,cls,aliases,
                                obj.get("TypeName",""),key,name,method,status,
                                dkey,description,dstatus,raw)))
            csvwriters[file].writerow(row)
            db.execute("INSERT INTO entities VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)",tuple(row[k] for k in FIELDS))
            counts[file+"_records"]+=1
            counts[file+"_"+status]+=1
            if dstatus=="matched":counts[file+"_description_matched"]+=1
        for f in files.values():f.close()
        db.commit();db.close();lang.close();game.close()
    info={"source_gameplay":"pvz2_chs428_gameplay_shard05.zip",
          "source_chinese":"pvz2_chs428_lawnstrings.zip","version":"CHN 4.2.8",
          "counts":dict(counts),
          "method":"Exact bracket token for level/skill; type-name uppercase lookup only a candidate for plant/zombie",
          "warnings":["Do not assume TypeName matching is confirmed display behavior",
                      "Duplicate conflicting source string IDs remain unresolved",
                      "No game stat scaling or semantic values invented"]}
    (out/"SUMMARY.json").write_text(json.dumps(info,ensure_ascii=False,indent=2),encoding="utf-8")
    print("SUMMARY",json.dumps(info,ensure_ascii=False),flush=True)
    return info

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("root",type=Path);p.add_argument("--out",type=Path,required=True)
    p.add_argument("--zip",type=Path,required=True)
    a=p.parse_args();build(a.root,a.out)
    a.zip.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(a.zip,"w",zipfile.ZIP_DEFLATED,compresslevel=7) as z:
        for f in a.out.iterdir():
            if f.is_file():z.write(f,f.name)
    if a.zip.stat().st_size>=95000000:raise ValueError("Git blob > 95MB; must chunk")
if __name__=="__main__":main()
