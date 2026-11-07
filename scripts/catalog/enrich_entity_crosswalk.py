#!/usr/bin/env python3
"""Expand source-audited Plant/Zombie rows into per-tier skill and costume detail.
Static evidence only; array indices are not runtime upgrade requirements.
"""
import argparse
from collections import Counter,defaultdict
import csv
import hashlib
import json
from pathlib import Path
import re
import sqlite3

START="<!-- AUTO ENTITY DETAIL START -->"
END="<!-- AUTO ENTITY DETAIL END -->"
SKILL=re.compile(r"^RTID\(([^()]+)@SkillTypes\)$",re.I)
TABLES={
 "entity_level_skills":["entity_id","kind","type_name","source_file","object_index",
  "level_index","attack_level_raw","hitpoints_level_raw","advanced_rtid",
  "advanced_skill_id","advanced_skill_name_key","advanced_skill_icon","advanced_status",
  "property_rtid","property_skill_id","property_skill_name_key","property_status","raw_level_json"],
 "entity_avatar_details":["entity_id","type_name","avatar_index","avatar_type",
  "layers_json","raw_avatar_json","status"],
 "entity_item_costume_candidates":["entity_id","kind","type_name","objclass",
  "source_file","object_index","matched_field","matched_token","status"],
 "entity_media_summary":["entity_id","kind","type_name","png_count","pam_count",
  "first_png_path","first_pam_path","exact_group_ids","missing_group_ids",
  "verified_image_ids","missing_image_ids","status"],
}

def read(con,name):
 con.row_factory=sqlite3.Row
 return [dict(x) for x in con.execute('SELECT * FROM "'+name+'"')]

def js(v):
 try:return json.loads(v)
 except (ValueError,TypeError):return v

def txt(v):
 if v is None:return ""
 return json.dumps(v,ensure_ascii=False,separators=(",",":")) if isinstance(v,(dict,list)) else str(v)

def ref(v,index):
 if not isinstance(v,str) or not v:return ("","","","no-explicit-skill-ref")
 m=SKILL.fullmatch(v.strip())
 if not m:return ("","","","invalid-or-non-SkillTypes-ref")
 hits=index.get(m.group(1),[])
 if len(hits)!=1:return ("","","","ambiguous-SkillTypes-ref" if hits else "unresolved-SkillTypes-ref")
 x=hits[0]
 return (x["skill_id"],txt(js(x["skill_name_json"])),txt(js(x["skill_icon_json"])),"exact-static-SkillTypes-alias")

def slug(name,kind):
 clean=re.sub("[^a-z0-9_-]+","-",name.lower()).strip("-")[:64] or "unnamed"
 return clean+"--"+hashlib.sha256((kind+"\x00"+name).encode()).hexdigest()[:10]

def md(v):
 return txt(v).replace("|","/").replace("\r"," ").replace("\n"," ")[:240]

def mdtable(items,pairs,limit=32):
 lines=["| "+" | ".join(x[0] for x in pairs)+" |","| "+" | ".join("---" for _ in pairs)+" |"]
 for r in items[:limit]:lines.append("| "+" | ".join(md(r.get(field,"")) for _,field in pairs)+" |")
 if len(items)>limit:lines.append("另有 "+str(len(items)-limit)+" 条，详见 CSV/SQLite。")
 return "\n".join(lines)

def write(con,out,table,records):
 cols=TABLES[table]
 con.execute('DROP TABLE IF EXISTS "'+table+'"')
 con.execute('CREATE TABLE "'+table+'" ('+",".join('"'+x+'" TEXT' for x in cols)+')')
 if records:
  con.executemany('INSERT INTO "'+table+'" VALUES ('+",".join("?" for _ in cols)+')',
    ([txt(row.get(k,"")) for k in cols] for row in records))
 con.execute('CREATE INDEX ix_'+table+'_entity ON "'+table+'" (entity_id)')
 with (out/(table+".csv")).open("w",encoding="utf-8-sig",newline="") as fp:
  w=csv.DictWriter(fp,fieldnames=cols,extrasaction="raise")
  w.writeheader();w.writerows(records)

def build(db,out,docs):
 out.mkdir(parents=True,exist_ok=True)
 con=sqlite3.connect(db)
 try:
  entities=read(con,"entities")
  if Counter(x["kind"] for x in entities)!=Counter({"plant":381,"zombie":1265}):
   raise ValueError("Unexpected original PlantType/ZombieType source counts")
  idx={e["entity_id"]:e for e in entities}
  skills=defaultdict(list)
  for r in read(con,"skill_records"):
   for alias in js(r["aliases_json"]):
    if isinstance(alias,str):skills[alias].append(r)
  results={k:[] for k in TABLES}
  statuses=Counter()
  for r in read(con,"level_rows"):
   if r["field"] not in ("PlantLevelStats","ZombieLevelStats"):continue
   e=idx[r["entity_id"]];v=js(r["raw_value_json"])
   if not isinstance(v,dict):v={}
   a=ref(v.get("AdvancedSkillType"),skills)
   b=ref(v.get("PropertySkillType"),skills)
   statuses["advanced/"+a[3]]+=1;statuses["property/"+b[3]]+=1
   results["entity_level_skills"].append(dict(
    entity_id=r["entity_id"],kind=e["kind"],type_name=e["type_name"],
    source_file=e["source_file"],object_index=e["object_index"],level_index=r["ordinal"],
    attack_level_raw=txt(v.get("AttackLevel")),hitpoints_level_raw=txt(v.get("HitPointsLevel")),
    advanced_rtid=txt(v.get("AdvancedSkillType")),advanced_skill_id=a[0],
    advanced_skill_name_key=a[1],advanced_skill_icon=a[2],advanced_status=a[3],
    property_rtid=txt(v.get("PropertySkillType")),property_skill_id=b[0],
    property_skill_name_key=b[1],property_status=b[3],raw_level_json=r["raw_value_json"]))
  for r in read(con,"avatars"):
   v=js(r["raw_avatar_json"])
   if not isinstance(v,dict):v={}
   results["entity_avatar_details"].append(dict(
    entity_id=r["entity_id"],type_name=r["type_name"],avatar_index=r["ordinal"],
    avatar_type=txt(v.get("AvatarType")),layers_json=txt(v.get("AvatarLayers",[])),
    raw_avatar_json=r["raw_avatar_json"],
    status="source-PlantType-avatar-array-not-runtime-equipped"))
  ancillary={r["ancillary_id"]:r for r in read(con,"ancillary")}
  for r in read(con,"ancillary_links"):
   e=idx[r["entity_id"]]
   if r["ancillary_id"] not in ancillary:raise ValueError("Missing ancillary source key")
   a=ancillary[r["ancillary_id"]]
   results["entity_item_costume_candidates"].append(dict(
    entity_id=r["entity_id"],kind=e["kind"],type_name=e["type_name"],
    objclass=a["objclass"],source_file=a["source_file"],object_index=a["object_index"],
    matched_field=r["source_field"],matched_token=r["matched_token"],status=r["match_status"]))
  assets=defaultdict(list);groups=defaultdict(list);image=defaultdict(list)
  for r in read(con,"assets"):assets[r["entity_id"]].append(r)
  for r in read(con,"resource_groups"):groups[r["entity_id"]].append(r)
  for r in read(con,"image_refs"):
   if r["owner_kind"] in ("plant","zombie"):image[r["owner_id"]].append(r)
  for e in entities:
   eid=e["entity_id"];p=[x for x in assets[eid] if x["format"]=="PNG"]
   a=[x for x in assets[eid] if x["format"]=="PAM_JSON"]
   g=groups[eid];im=image[eid]
   results["entity_media_summary"].append(dict(
    entity_id=eid,kind=e["kind"],type_name=e["type_name"],png_count=len(p),pam_count=len(a),
    first_png_path=p[0]["published_png_path"] if p else "",
    first_pam_path=a[0]["source_path"] if a else "",
    exact_group_ids=sum(x["match_status"]=="exact-resource-group-id" for x in g),
    missing_group_ids=sum(x["match_status"]!="exact-resource-group-id" for x in g),
    verified_image_ids=sum(x["match_status"]=="exact-RTON-resource-id" for x in im),
    missing_image_ids=sum(x["match_status"]!="exact-RTON-resource-id" for x in im),
    status="name-only-media-candidates-not-render-verified"))
  for tab,recs in results.items():write(con,out,tab,recs)
  con.commit()
  if con.execute("PRAGMA integrity_check").fetchone()[0]!="ok":
   raise ValueError("SQLite integrity check failed")
 finally:con.close()
 by_type=defaultdict(list)
 for e in entities:
  key=(e["kind"],(e["type_name"] or "unidentified-"+e["entity_id"]).casefold())
  by_type[key].append(e)
 indexed={}
 for table_name,recs in results.items():
  g=defaultdict(list)
  for row in recs:g[row["entity_id"]].append(row)
  indexed[table_name]=g
 count=0
 for (kind,name),es in sorted(by_type.items()):
  file=docs/("Plants" if kind=="plant" else "Zombies")/(slug(name,kind)+".md")
  if not file.is_file():raise ValueError("Obsidian entity page missing: "+str(file))
  ids=[e["entity_id"] for e in es]
  levels=[x for i in ids for x in indexed["entity_level_skills"][i]]
  avatar=[x for i in ids for x in indexed["entity_avatar_details"][i]]
  item=[x for i in ids for x in indexed["entity_item_costume_candidates"][i]]
  media=[x for i in ids for x in indexed["entity_media_summary"][i]]
  data=[
   "## 逐级技能、Avatar、升级道具及素材映射",
   "",
   "> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。",
   "",
   "### 原始等级系数、进阶技能与属性技能",
   "",
   mdtable(levels,[("对象index","object_index"),("等级数组index","level_index"),
     ("攻击系数","attack_level_raw"),("生命系数","hitpoints_level_raw"),
     ("进阶技能RTID","advanced_rtid"),("技能名称键","advanced_skill_name_key"),
     ("RTID状态","advanced_status"),("属性技能RTID","property_rtid"),("状态","property_status")],42),
   "",
   "### AvatarLayers 装扮层",
   "",
   mdtable(avatar,[("元素","avatar_index"),("类型","avatar_type"),("层名","layers_json"),
                   ("状态","status")],40),
   "",
   "### 配件、道具和装扮属性配置候选",
   "",
   mdtable(item,[("类型","objclass"),("源JSON","source_file"),("对象index","object_index"),
                 ("字段","matched_field"),("证据","status")],32),
   "",
   "### 图片、动画以及资源 ID 缺口",
   "",
   mdtable(media,[("PNG候选","png_count"),("PAM JSON候选","pam_count"),
                  ("RTON组精确","exact_group_ids"),("RTON组未解","missing_group_ids"),
                  ("图片ID精确","verified_image_ids"),("图片ID未解","missing_image_ids")],10),
   "",
   "完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · "
   "[AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · "
   "[装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)",
  ]
  old=file.read_text(encoding="utf-8")
  block=START+"\n"+"\n".join(data)+"\n"+END
  if START in old and END in old:
   prefix,rest=old.split(START,1)
   suffix=rest.split(END,1)[1]
   final=prefix+block+suffix
  elif START in old or END in old:raise ValueError("Partial Obsidian detail marker")
  else:final=old.rstrip()+"\n\n"+block+"\n"
  file.write_text(final,encoding="utf-8")
  count+=1
 summary={"schema":"entity-details-1","records":{k:len(v) for k,v in results.items()},
          "obsidian_pages_updated":count,"skill_resolution":dict(sorted(statuses.items())),
          "limits":["source-array-index-not-player-level","static-SkillTypes-alias-not-runtime-skill",
                    "costume-links-are-candidates","image-group-not-validated-sprite-mapping"]}
 (out/"DETAIL_SUMMARY.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
 print("ENTITY_DETAILS_FROM_REAL_CROSSWALK",json.dumps(summary,ensure_ascii=False))
 return summary

def main():
 p=argparse.ArgumentParser(description=__doc__)
 p.add_argument("--db",type=Path,required=True)
 p.add_argument("--out",type=Path,required=True)
 p.add_argument("--docs",type=Path,required=True)
 a=p.parse_args()
 build(a.db,a.out,a.docs)

if __name__=="__main__":main()
