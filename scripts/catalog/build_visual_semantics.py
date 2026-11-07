#!/usr/bin/env python3
"""Source-backed visual asset locator for PvZ2 CHN 4.2.8.

Indexes actual published PNG manifests, decoded PAM JSON inventories,
original PAM catalogs, gameplay SQLite, and the source objclass audit.
Names are discovery hints; group-name matches are NOT verified runtime links.
Standard-library-only; no commercial source payloads are reproduced.
"""
from __future__ import annotations
import argparse
from collections import Counter, defaultdict
import csv
import json
from pathlib import Path
import re
import sqlite3
import tempfile
import zipfile

SHARDS = tuple(f"{i:02d}" for i in range(8))
ASSET_COLUMNS = ["format","stage","shard","family","bundle","asset_group","group_key",
                 "source_path","published_png_path","source_sha256","evidence"]
KEYWORDS = {
    "skill_effect": r"skill|ability|plantfood|projectile|bullet|attack|_pf_|_pf$",
    "upgrade_ui": r"upgrad|levelup|level_up|evol|advanc|rankup|starup|plantlevel",
    "costume_candidate": r"costume|accessor|outfit|dress|decorat|ornament|headwear|cosmetic|skin",
    "item_or_artifact": r"artifact|\bitem\b|powerup|plantfood|seedpacket|fragment|reward|equipment|treasure",
}
PATTERNS = {label: re.compile(expr,re.I) for label,expr in KEYWORDS.items()}
OBJCLASS = re.compile("costume|accessor|outfit|decor|dress|ornament|skin|equipment|item|artifact|plantlevel|plantstats|levelstat|skill|ability|projectile|plantfood|evol|upgrad", re.I)


def csv_rows(path: Path):
    with path.open(encoding="utf-8-sig",newline="") as source:
        reader=csv.DictReader(source)
        if not reader.fieldnames:
            raise ValueError("empty source CSV: "+str(path))
        yield from reader


def family_of(bundle: str) -> str:
    b=bundle.lower()
    if re.fullmatch(r"plant[123]",b): return "plant"
    if re.fullmatch(r"zombie[123]",b): return "zombie"
    if b.startswith("ui") or b in ("update","luaact","init"): return "ui_or_shared"
    return "world_or_effect"


def normalized_group(name: str) -> str:
    return re.sub(r"(?i)_(?:1200|common)$","",name).lower()


def identify(path: str):
    parts=path.split("/")
    if len(parts)<3:
        raise ValueError("unexpected source path: "+path)
    return parts[1], parts[2]


def write_csv(path: Path, fields: list[str], rows: list[dict]):
    path.parent.mkdir(parents=True,exist_ok=True)
    with path.open("w",encoding="utf-8-sig",newline="") as target:
        writer=csv.DictWriter(target,fieldnames=fields)
        writer.writeheader()
        writer.writerows(rows)


def build(root: Path, out: Path, *, expected_png: int = 1520,
          expected_pam_json: int = 3847, expected_pam: int = 3847) -> dict:
    rows=[]
    seen=set()
    totals=Counter()
    def add(fmt,stage,shard,original,sha):
        if not isinstance(original,str) or ".." in original.split("/") or "\\" in original:
            raise ValueError("unsafe source relative path")
        b,group=identify(original)
        key=(fmt,stage,shard,original)
        if key in seen: raise ValueError("duplicate source file: "+repr(key))
        seen.add(key)
        if fmt=="PNG":
            if not original.lower().endswith(".png"): raise ValueError("unexpected PNG path")
            published=f"Images/CHN/V4.2.8/Media/shard-{shard}/{original}"
        elif fmt=="PAM_JSON":
            if not original.lower().endswith(".pam.json"):raise ValueError("unexpected PAM JSON path")
            published=""
        elif fmt=="PAM":
            if not original.lower().endswith(".pam"):raise ValueError("unexpected native PAM path")
            published=""
        else: raise ValueError("unexpected format")
        row=dict(format=fmt,stage=stage,shard=shard,family=family_of(b),
                 bundle=b,asset_group=group,group_key=normalized_group(group),
                 source_path=original,published_png_path=published,
                 source_sha256=sha,evidence="source-path-and-sha256-inventory")
        rows.append(row)
        totals[fmt]+=1

    for sh in SHARDS:
        p=root/f"Images/CHN/V4.2.8/Media/shard-{sh}/PNG-MANIFEST.csv"
        for r in csv_rows(p):
            if r["shard"]!=sh or r["decode_status"]!="pillow-verified-and-loaded":
                raise ValueError("unverified source PNG: "+r["original_path"])
            add("PNG","Media",sh,r["original_path"],r["sha256"])

    for sh in SHARDS:
        if sh=="06":
            p=root/"Catalog/CHN/V4.2.8/recovery/Media-06/files.csv"
            for r in csv_rows(p):
                if r["stage"]!="Media" or r["shard"]!="06":raise ValueError("bad Media-06 source")
                if r["path"].lower().endswith(".pam.json"):
                    add("PAM_JSON","Media",sh,r["path"],r["sha256"])
        else:
            p=root/f"Catalog/CHN/V4.2.8/shards/Media-{sh}/files.csv"
            for r in csv_rows(p):
                if r["stage"]!="Media" or r["shard"]!=sh:raise ValueError("bad Media catalog")
                if r["format"]=="PAM_JSON":
                    add("PAM_JSON","Media",sh,r["original_path"],r["sha256"])

    for sh in SHARDS:
        p=root/f"Catalog/CHN/V4.2.8/shards/Internal-{sh}/files.csv"
        for r in csv_rows(p):
            if r["stage"]!="Internal" or r["shard"]!=sh:raise ValueError("bad Internal catalog")
            if r["format"]=="PAM":
                # Original PAM files can have a different source tree layout than Media/PAM_JSON.
                orig=r["original_path"]
                parts=orig.split("/")
                if len(parts)<3:continue
                add("PAM","Internal",sh,orig,r["sha256"])

    expected={"PNG":expected_png,"PAM_JSON":expected_pam_json,"PAM":expected_pam}
    if any(totals[f]!=n for f,n in expected.items()):
        raise ValueError("source format counts differ: "+str(dict(totals))+" != "+str(expected))
    rows.sort(key=lambda x:(x["format"],x["shard"],x["source_path"]))
    write_csv(out/"asset_paths.csv",ASSET_COLUMNS,rows)

    candidates=[]
    for row in rows:
        if row["format"]=="PAM":continue
        text=row["source_path"]
        tags=[tag for tag,rx in PATTERNS.items() if rx.search(text)]
        if tags:
            candidates.append({**{k:row[k] for k in
                            ("format","shard","family","bundle","asset_group","source_path","published_png_path")},
                               "name_based_tags":";".join(tags),"status":"filename-candidate-only"})
    write_csv(out/"skill_item_costume_candidates.csv",
              ["format","shard","family","bundle","asset_group","source_path",
               "published_png_path","name_based_tags","status"],candidates)

    groups=defaultdict(lambda:{"PNG":[],"PAM_JSON":[]})
    for r in rows:
        if r["format"] in ("PNG","PAM_JSON"):
            groups[(r["bundle"].lower(),r["group_key"])][r["format"]].append(r["source_path"])
    matched=[]
    for (bundle,key),entry in sorted(groups.items()):
        matched.append({"bundle":bundle,"normalized_group":key,
                        "png_count":len(entry["PNG"]),"pam_json_count":len(entry["PAM_JSON"]),
                        "png_example":entry["PNG"][0] if entry["PNG"] else "",
                        "pam_json_example":entry["PAM_JSON"][0] if entry["PAM_JSON"] else "",
                        "link_status":"name-only-candidate" if entry["PNG"] and entry["PAM_JSON"]
                        else "unpaired-name-in-source-inventory"})
    write_csv(out/"animation_atlas_group_candidates.csv",
              ["bundle","normalized_group","png_count","pam_json_count",
               "png_example","pam_json_example","link_status"],matched)

    # Retain objclass descriptions as source evidence; never claim that a keyword proves a mechanic.
    class_summaries=defaultdict(lambda:{"occurrences":0,"examples":[]})
    path=root/"Catalog/CHN/V4.2.8/parsed/object_classes.csv"
    for r in csv_rows(path):
        name=r.get("objclass","")
        if not OBJCLASS.search(name):continue
        e=class_summaries[name]
        e["occurrences"]+=int(r.get("object_count",0))
        if len(e["examples"])<2:
            e["examples"].append(f"{r.get('stage','')}/{r.get('shard','')}/{r.get('original_path','')}")
    class_rows=[{"objclass":cls,"object_count":val["occurrences"],
                 "source_example":val["examples"][0],"status":"name-based-config-candidate"}
                for cls,val in class_summaries.items()]
    class_rows.sort(key=lambda x:(-x["object_count"],x["objclass"]))
    write_csv(out/"config_class_candidates.csv",
              ["objclass","object_count","source_example","status"],class_rows)

    # Game config ZIP is the previously exported *source backed* gameplay database.
    gamezip=root/"Database/CHN/V4.2.8/pvz2_chs428_gameplay_shard05.zip"
    values=Counter()
    field_source={}
    sample={"plant_types":[],"zombie_types":[],"skills":[],"plant_properties":[]}
    with tempfile.TemporaryDirectory() as td, zipfile.ZipFile(gamezip) as archive:
        name="pvz2_chs428_gameplay.sqlite"
        if name not in archive.namelist():raise ValueError("gameplay DB missing in ZIP")
        dest=Path(td)/name
        with archive.open(name) as source, dest.open("wb") as target:
            import shutil
            shutil.copyfileobj(source,target)
        db=sqlite3.connect(dest)
        try:
            for cat,source,index,cls,objdata in db.execute(
                    "SELECT category,source_file,object_index,objclass,objdata_json FROM game_objects"):
                obj=json.loads(objdata)
                totals["gameplay_"+cat]+=1
                for field,val in obj.items():
                    values[(cat,field)]+=1
                    field_source.setdefault((cat,field),(source,index,type(val).__name__))
                if cat in sample and len(sample[cat])<5:
                    sample[cat].append({"objclass":cls,"source_file":source,"object_index":index,
                                        "type_name":obj.get("TypeName",""),
                                        "present_fields":sorted(obj.keys())[:35]})
        finally:db.close()

    fields=[]
    for (cat,key),n in sorted(values.items()):
        source,index,typ=field_source[(cat,key)]
        fields.append({"category":cat,"raw_field":key,"objects_with_field":n,
                       "example_source_file":source,"example_object_index":index,
                       "example_value_type":typ,"status":"source-field-present-not-runtime-proven"})
    write_csv(out/"gameplay_raw_fields.csv",
              ["category","raw_field","objects_with_field","example_source_file",
               "example_object_index","example_value_type","status"],fields)

    fam=defaultdict(Counter)
    for r in rows:fam[r["family"]][r["format"]]+=1
    summary={
        "schema":"pvz2-chn428-visual-entity-research-v1",
        "version":"CHN 4.2.8",
        "source_png_and_media_catalogs":"Git master source SHA256 and 8 published PNG manifests",
        "source_gameplay_zip":"Database/CHN/V4.2.8/pvz2_chs428_gameplay_shard05.zip",
        "format_counts":{k:totals[k] for k in ("PNG","PAM_JSON","PAM")},
        "gameplay_categories":{k[9:]:v for k,v in totals.items() if k.startswith("gameplay_")},
        "family_format_counts":{k:dict(sorted(v.items())) for k,v in sorted(fam.items())},
        "image_animation_name_matched_groups":sum(1 for x in matched if x["png_count"] and x["pam_json_count"]),
        "image_animation_unmatched_groups":sum(1 for x in matched if not x["png_count"] or not x["pam_json_count"]),
        "skill_item_costume_filename_candidates":len(candidates),
        "potential_config_classes":len(class_rows),
        "raw_field_evidence":len(fields),
        "gameplay_examples":sample,
        "caveats":[
            "A plant/zombie-themed folder or filename is not a verified game entity mapping",
            "PNG atlas pixels, PAM animation JSON, native PAM, resource RTON and gameplay properties are distinct representations",
            "Name-based atlas/PAM grouping is only an unvalidated join candidate",
            "Costumes and advancement require concrete configuration references and runtime verification",
            "PlantLevelStats and SkillPropertySheet do not establish actual upgrade formulas without runtime data",
            "Media-06's decoded PAM JSON is in an Actions source artifact; it still lacks a complete Git source archive"]
    }
    out.mkdir(parents=True,exist_ok=True)
    (out/"SUMMARY.json").write_text(json.dumps(summary,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({k:v for k,v in summary.items() if k not in ("gameplay_examples","caveats")},ensure_ascii=False))
    return summary


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--repo-root",type=Path,default=Path("."))
    p.add_argument("--out",type=Path,default=Path("Catalog/CHN/V4.2.8/semantic_assets"))
    p.add_argument("--expected-png",type=int,default=1520)
    p.add_argument("--expected-pam-json",type=int,default=3847)
    p.add_argument("--expected-pam",type=int,default=3847)
    a=p.parse_args()
    build(a.repo_root,a.out,expected_png=a.expected_png,
          expected_pam_json=a.expected_pam_json,expected_pam=a.expected_pam)


if __name__=="__main__":main()
