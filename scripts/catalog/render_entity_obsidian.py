#!/usr/bin/env python3
"""Per-TypeName Obsidian pages built from entity crosswalk SQLite, not conjecture."""
from __future__ import annotations
import argparse
from collections import defaultdict, Counter
import hashlib
import json
from pathlib import Path
import re
import sqlite3

BASE = "https://github.com/969981/PVZ2_Resources/blob/master/"
VAULT = "Entities/CHN/V4.2.8"

def cleaned(value):
    return str(value if value is not None else "").replace("|","/").replace("\n"," ").replace("\r"," ")[:230]

def slug(text,kind):
    safe=re.sub("[^a-z0-9_-]+","-",text.lower()).strip("-")[:64] or "unnamed"
    return safe+"--"+hashlib.sha256((kind+"\x00"+text).encode()).hexdigest()[:10]

def rows(con,table):
    con.row_factory=sqlite3.Row
    return [dict(row) for row in con.execute("SELECT * FROM "+table)]

def mk_table(records,columns,limit=20):
    text=["| "+" | ".join(columns)+" |","| "+" | ".join("---" for _ in columns)+" |"]
    for row in records[:limit]:
        text.append("| "+" | ".join(cleaned(row.get(c,"")) for c in columns)+" |")
    if len(records)>limit:
        text.append("")
        text.append("本页仅展示前 "+str(limit)+" 条；完整 "+str(len(records))+" 条请查看 SQLite/CSV。")
    return "\n".join(text)

def main_build(db_path,root):
    root.mkdir(parents=True,exist_ok=True)
    con=sqlite3.connect(db_path)
    try:
        entities=rows(con,"entities")
        related={}
        for name in ("assets","links","level_rows","avatars","ancillary_links","resource_groups"):
            grouped=defaultdict(list)
            for record in rows(con,name):
                grouped[record["entity_id"]].append(record)
            related[name]=grouped
    finally:
        con.close()
    groups=defaultdict(list)
    for e in entities:
        key=(e["kind"],(e["type_name"] or ("unidentified-"+e["entity_id"])).casefold())
        groups[key].append(e)
    produced=Counter()
    for kind in ("plant","zombie"):
        folder=root/("Plants" if kind=="plant" else "Zombies")
        folder.mkdir(parents=True,exist_ok=True)
        nav=[]
        for (cat,typ), variants in sorted(groups.items()):
            if cat!=kind: continue
            name=variants[0]["type_name"] or typ
            file=slug(typ,kind)+".md"
            ids=[e["entity_id"] for e in variants]
            arts=[r for eid in ids for r in related["assets"][eid]]
            links=[r for eid in ids for r in related["links"][eid]]
            grades=[r for eid in ids for r in related["level_rows"][eid]]
            avatars=[r for eid in ids for r in related["avatars"][eid]]
            accessories=[r for eid in ids for r in related["ancillary_links"][eid]]
            resources=[r for eid in ids for r in related["resource_groups"][eid]]
            zhnames=sorted(set(e["chinese_candidate"] for e in variants if e["chinese_candidate"]))
            png=[r for r in arts if r["format"]=="PNG"]
            pam=[r for r in arts if r["format"]=="PAM_JSON"]
            rows_png=[]
            for r in png:
                path=r["published_png_path"]
                href="["+Path(path).name+"]("+BASE+path+")" if path else ""
                rows_png.append({"图集":href,"来源":r["source_field"],"证据状态":r["association_status"]})
            rows_pam=[{"源动画":r["source_path"],"来源":r["source_field"],
                       "证据状态":r["association_status"]} for r in pam]
            intro=[
                "---",
                "title: "+cleaned(name)+" 原始对象关联",
                "type: entity-mapping",
                "region: CHN",
                "version: 4.2.8",
                "tags: [PVZ2, "+kind+", mapping]",
                "status: static-source-mapping-runtime-unverified",
                "---",
                "",
                "# "+cleaned(name),
                "",
                "候选中文名："+("、".join(zhnames) if zhnames else "尚未可靠关联")+"。原始配置条目："+str(len(variants))+"。",
                "",
                "> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。",
                "",
                "## 原始配置记录",
                "",
                mk_table([{"源文件":e["source_file"],"序号":e["object_index"],
                           "对象 ID":e["entity_id"],"名称来源":e["chinese_status"],
                           "Avatars 数":e["avatar_items"],"PopAnim":e["popanim_json"]} for e in variants],
                         ["源文件","序号","对象 ID","名称来源","Avatars 数","PopAnim"]),
                "",
                "## 属性与等级明细",
                "",
                mk_table([{"原字段":r["field"],"索引":r["ordinal"],
                           "原始值":r["raw_value_json"],"证据状态":r["status"]} for r in grades],
                         ["原字段","索引","原始值","证据状态"]),
                "",
                "## 直接源引用与未闭合的外键",
                "",
                mk_table([{"关系":r["relation"],"原值":r["source_reference"],
                           "目标类型":r["target_type"],"目标路径":r["target_source_file"],
                           "证据状态":r["status"]} for r in links],
                         ["关系","原值","目标类型","目标路径","证据状态"]),
                "",
                "## 已公开 PNG 图集候选（可点击）",
                "",
                mk_table(rows_png,["图集","来源","证据状态"]),
                "",
                "## PAM JSON 动画候选（尚未渲染）",
                "",
                mk_table(rows_pam,["源动画","来源","证据状态"]),
                "",
                "## Avatar 装扮数组与配件配置候选",
                "",
                "Avatars 明细："+str(len(avatars))+" 条；外围配件原生类候选关联："+str(len(accessories))+" 条。",
                "",
                mk_table([{"原字段":r["source_field_path"],"原始 Avatar JSON":r["raw_avatar_json"],
                           "证据状态":r["status"]} for r in avatars],
                         ["原字段","原始 Avatar JSON","证据状态"]),
                "",
                "## RTON 资源组外键",
                "",
                mk_table([{"要求资源组":r["requested_group"],"匹配组":r["group_id"],
                           "状态":r["match_status"]} for r in resources],
                         ["要求资源组","匹配组","状态"]),
                "",
                "返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV]("+BASE+"Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。",
                ""
            ]
            (folder/file).write_text("\n".join(intro),encoding="utf-8")
            nav.append((name,file,len(variants),len(png),len(pam),"、".join(zhnames)))
            produced[kind]+=1
        index=[
            "---", "title: "+("植物" if kind=="plant" else "僵尸")+"原始对象索引",
            "type: moc","region: CHN","version: 4.2.8",
            "status: source-records-not-unique-species","---","",
            "# "+("植物" if kind=="plant" else "僵尸")+"静态对象浏览",
            "",
            "不同 TypeName："+str(len(nav))+"，原生配置："+str(sum(x[2] for x in nav))+" 条。",
            "",
            "| TypeName | 候选中文名 | 源记录 | PNG候选 | PAM候选 |",
            "|---|---|---:|---:|---:|"
        ]
        kindfolder="Plants" if kind=="plant" else "Zombies"
        for name,file,n,png,pam,zh in nav:
            index.append("| [["+VAULT+"/"+kindfolder+"/"+file[:-3]+"|"+cleaned(name)+"]] | "+cleaned(zh)+
                         " | "+str(n)+" | "+str(png)+" | "+str(pam)+" |")
        index+=["","[[Unpack/18-植物僵尸跨格式关联数据库]]",""]
        (folder/"INDEX.md").write_text("\n".join(index),encoding="utf-8")
    summary={"source_records":len(entities),"pages_by_distinct_typename":dict(produced)}
    (root/"SUMMARY.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("OBSIDIAN_SOURCE_ENTITY_PAGES",json.dumps(summary,ensure_ascii=False))
    return summary

def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--db",required=True,type=Path)
    p.add_argument("--docs",default=Path("docs/Entities/CHN/V4.2.8"),type=Path)
    a=p.parse_args()
    main_build(a.db,a.docs)

if __name__=="__main__":
    main()
