#!/usr/bin/env python3
"""Source-attributed CHN 4.2.8 PlantType/ZombieType crosswalk.

Never equate an image group-name match with a verified runtime resource edge.
Builds separate source-exact, candidate, ambiguous and unresolved relationships.
Reads existing gameplay/resource/localization ZIPs, visual index and optionally
original SHA256-checked Internal-05 JSON files (collectables/avatars/etc).
"""
from __future__ import annotations
import argparse
from collections import Counter, defaultdict
import csv
import hashlib
import json
from pathlib import Path
import re
import shutil
import sqlite3
import tempfile
import zipfile

APK_SHA = "64b0f2cddb6221baf35fb32d4a0f6e64153428edf5ee5922beddb9726bedbda4"
VERSION = "4.2.8"
REL = "CHN"
REQUIRED_RAW = {"PLANTTYPES.json","PROPERTYSHEETS.json","SKILLTYPES.json","PLANTNEWAVATARS.json","COLLECTABLETYPES.json"}
TARGET_FILES = [
    "PLANTTYPES.json", "PROPERTYSHEETS.json", "SKILLTYPES.json",
    "ZOMBIETYPES.json", "PLANTNEWAVATARS.json", "COLLECTABLETYPES.json",
    "PVPUPGRADE.json", "ARTIFACT.json", "ARTIFACTIMPROVEDPROPERTIES.json",
    "ARTIFACTCULTIVATION.json", "ARTIFACTDISPLAYACTIONS.json",
    "PROJECTILETYPES.json",
]
ANCILLARY_CLASS = re.compile(
    r"Accessory|Avatar|Collectable|Artifact|Upgrade|Advanced|Skill|PlantLevel|Plantfood|Projectile", re.I
)
REF_RE = re.compile(r"^RTID\((.+)\)$", re.I)
FIELDS = {
    "entities": ["entity_id","kind","type_name","chinese_candidate","chinese_status",
                 "source_file","object_index","objclass","aliases_json","property_ref_json",
                 "resource_groups_json","popanim_json","avatar_items","avatar_refs_json",
                 "avatar_piece_image","plant_piece_image","quality_json","rare_json",
                 "profession_json","zombie_class_json","status","apk_sha256"],
    "links": ["entity_id","kind","relation","field_path","source_reference","target_type",
              "target_id","target_source_file","target_object_index","status","evidence"],
    "assets": ["entity_id","kind","source_field","format","shard","source_path",
               "published_png_path","sha256","association_status","evidence"],
    "level_rows": ["entity_id","kind","property_entity_id","field","ordinal","raw_value_json",
                   "source_field_path","status"],
    "avatars": ["entity_id","type_name","ordinal","raw_avatar_json","source_field_path",
                "reference_tokens_json","status"],
    "ancillary": ["ancillary_id","source_file","object_index","objclass","aliases_json",
                  "interesting_fields_json","reference_tokens_json","status"],
    "ancillary_links": ["entity_id","ancillary_id","matched_token","source_field",
                         "match_status","explanation"],
    "resource_groups": ["entity_id","source_field","requested_group","resource_source_file",
                        "group_id","group_type","group_index","match_status"],
    "skill_records": ["skill_id","source_file","object_index","aliases_json","skill_name_json",
                      "skill_description_json","skill_icon_json","status"],
    "image_refs": ["owner_id","owner_kind","source_field","raw_reference",
                   "resource_id","resource_source_file","resource_path","atlas_parent_id",
                   "ax","ay","aw","ah","match_status","evidence"],
}
TABLE_KEYS = {
    "entities": "entity_id", "ancillary": "ancillary_id", "skill_records": "skill_id",
}


def j(value) -> str:
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(",", ":"))


def read_csv(path: Path):
    if not path.is_file():
        raise ValueError(f"Missing required source index: {path}")
    with path.open(encoding="utf-8-sig", newline="") as f:
        yield from csv.DictReader(f)


def sha256(path: Path) -> str:
    digest=hashlib.sha256()
    with path.open("rb") as f:
        for block in iter(lambda: f.read(4*1024*1024), b""):
            digest.update(block)
    return digest.hexdigest()


def normalized(value) -> str:
    return re.sub(r"[^a-z0-9]", "", str(value).casefold())


def symbol(value) -> str:
    if not isinstance(value, str):
        return ""
    s=value.strip().strip("\"'")
    m=REF_RE.fullmatch(s)
    if m:
        s=m.group(1).strip().strip("\"'")
    return s


def values_in(value):
    if isinstance(value, str):
        if value.strip():
            yield value
    elif isinstance(value, (list, tuple)):
        for item in value:
            yield from values_in(item)
    elif isinstance(value, dict):
        for key, val in value.items():
            if str(key).lower() in ("rtid", "id", "alias", "resource", "resourceid",
                                    "name", "type", "group", "groupid") and isinstance(val, str):
                yield val
            elif isinstance(val, (dict, list)):
                yield from values_in(val)


def alias_tokens(value):
    if isinstance(value, str):
        return [symbol(value)] if symbol(value) else []
    if isinstance(value, list):
        return list(dict.fromkeys(v for item in value for v in alias_tokens(item)))
    if isinstance(value, dict):
        return list(dict.fromkeys(v for key, item in value.items()
                                 if key.lower() in ("id","name","alias","rtid","value")
                                 for v in alias_tokens(item)))
    return []


def references(value, path="$", *, include_plain=False, depth=0):
    if depth > 18:
        return
    if isinstance(value, str):
        s=symbol(value)
        if s and (include_plain or REF_RE.fullmatch(value.strip())):
            yield path, s
    elif isinstance(value, list):
        for i, v in enumerate(value):
            yield from references(v, f"{path}[{i}]", include_plain=include_plain, depth=depth+1)
    elif isinstance(value, dict):
        for k,v in value.items():
            simple=str(k).lower() in ("rtid","resourceid","resourcegroup","ref","reference","alias")
            yield from references(v, f"{path}.{k}",include_plain=include_plain or simple,depth=depth+1)


def source_token_index(records):
    """Index original alias and scoped alias@ResourceFile without name-only shortcuts."""
    ids=defaultdict(list)
    for rec in records:
        stem=Path(rec["source"]).stem.upper()
        for token in alias_tokens(rec["aliases"]):
            ids[token].append(rec)
            if stem in ("PROPERTYSHEETS","SKILLTYPES","PLANTTYPES","ZOMBIETYPES","PROJECTILETYPES"):
                scope={"PROPERTYSHEETS":"PropertySheets","SKILLTYPES":"SkillTypes",
                       "PLANTTYPES":"PlantTypes","ZOMBIETYPES":"ZombieTypes",
                       "PROJECTILETYPES":"ProjectileTypes"}[stem]
                ids[token+"@"+scope].append(rec)
                ids[token+"@$"+scope].append(rec)
    return ids


def read_database(zip_file: Path, member: str, temp: Path) -> sqlite3.Connection:
    with zipfile.ZipFile(zip_file) as z:
        if member not in z.namelist():
            raise ValueError(f"{zip_file}: required {member} missing")
        destination=temp / (hashlib.sha256(str(zip_file).encode()).hexdigest()[:10] + ".sqlite")
        with z.open(member) as inp,destination.open("wb") as out:
            shutil.copyfileobj(inp,out)
    con=sqlite3.connect(destination)
    return con


def load_gameplay(con):
    rows=[]
    for category, src, index, cls, aliases, obj in con.execute(
        "SELECT category,source_file,object_index,objclass,aliases_json,objdata_json FROM game_objects"):
        rows.append({"category":category,"source":src,"index":int(index),"class":cls,
                     "aliases":json.loads(aliases),"data":json.loads(obj)})
    return rows


def load_localization(con):
    # This is only a candidate for plant/zombie names, unlike explicit skill tokens.
    result={}
    try:
        for kind,src,index,chinese,status in con.execute(
            "SELECT category,source_file,object_index,zh_cn_name,match_status FROM entities"):
            result[(kind,src,int(index))]=(chinese,status)
    except sqlite3.Error as exc:
        raise ValueError("localization schema inconsistent") from exc
    return result


def load_resources(con):
    groups=defaultdict(list)
    resources=defaultdict(list)
    for file,idx,gid,gtype in con.execute(
        "SELECT source_file,group_index,group_id,group_type FROM groups"):
        if isinstance(gid,str) and gid:
            groups[gid].append((file,int(idx),gid,gtype))
    for file,rid,path,parent,ax,ay,aw,ah in con.execute(
        "SELECT source_file,resource_id,resource_path,atlas_parent_id,ax,ay,aw,ah FROM resources"):
        if rid:
            resources[str(rid)].append((file,str(path or ""),str(parent or ""),
                                        ax,ay,aw,ah))
    return groups,resources


def exact_alias_matches(key, alias_map):
    s=symbol(key)
    if not s:return []
    return list({(r["source"],r["index"]):r for r in alias_map.get(s,[])}.values())


def original_audit(root: Path):
    path=root/"Catalog/CHN/V4.2.8/shards/Internal-05/files.csv"
    indexed={}
    for r in read_csv(path):
        if r["format"]!="JSON":continue
        indexed[r["original_path"]]=(r["sha256"],int(r["size_bytes"]))
    return indexed


def verified_source_objects(raw_root:Path,index,relative:str):
    """Read one original Internal-05 JSON member only after SHA256 and size checks."""
    if relative not in index:
        raise ValueError("CurrentLevel source not in Internal-05 inventory: "+relative)
    expected_sha,size=index[relative]
    path=raw_root/relative
    if path.is_symlink() or not path.is_file() or path.stat().st_size!=size:
        raise ValueError("Missing/untrusted CurrentLevel JSON: "+relative)
    if sha256(path)!=expected_sha:
        raise ValueError("CurrentLevel source SHA256 mismatch: "+relative)
    root=json.loads(path.read_text(encoding="utf-8-sig"))
    if not isinstance(root,dict) or not isinstance(root.get("objects"),list):
        raise ValueError("Invalid original CurrentLevel objects: "+relative)
    entries=[]
    for i,o in enumerate(root["objects"]):
        if isinstance(o,dict) and isinstance(o.get("objclass"),str) and isinstance(o.get("objdata"),dict):
            entries.append({"source":relative,"index":i,"class":o["objclass"],
                            "aliases":o.get("aliases",[]),"data":o["objdata"],
                            "category":"raw_current_level"})
    return entries,expected_sha


def current_level_scope(raw_root:Path,index,entities):
    """RTID(foo@CurrentLevel) resolves ONLY in same original level JSON."""
    wanted=sorted({e["source"] for e in entities if isinstance(e["data"].get("Properties"),str)
                   and re.search(r"@\$?CurrentLevel\)",e["data"]["Properties"],re.I)})
    scopes=defaultdict(list)
    verified={}
    for relative in wanted:
        entries,digest=verified_source_objects(raw_root,index,relative)
        verified[relative]=digest
        for row in entries:
            for alias in alias_tokens(row["aliases"]):
                scopes[(relative,alias+"@CurrentLevel")].append(row)
                scopes[(relative,alias+"@$CurrentLevel")].append(row)
    return scopes,verified


def get_ancillary(raw_root: Path, index, *, require_raw=True):
    # A full Internal-05 source recovery is read-only and archive SHA verified by the caller.
    prefix="04_JSON/dynamic/Packages/PACKAGES/"
    selected=[]
    hashes={}
    missing=[]
    absent=[]
    for fname in TARGET_FILES:
        rel=prefix+fname
        path=raw_root/rel
        if rel not in index:
            absent.append(rel)
            if fname in REQUIRED_RAW:missing.append(rel)
            continue
        if not path.is_file():
            missing.append(rel)
            continue
        expected_hash,expected_size=index[rel]
        if path.is_symlink() or path.stat().st_size!=expected_size or sha256(path)!=expected_hash:
            raise ValueError(f"Internal-05 source file hash mismatch: {rel}")
        hashes[rel]=expected_hash
        obj=json.loads(path.read_text(encoding="utf-8-sig"))
        items=obj.get("objects") if isinstance(obj,dict) else None
        if not isinstance(items,list):
            raise ValueError(f"Missing objects list in {rel}")
        for i,item in enumerate(items):
            if not isinstance(item,dict):continue
            cls=item.get("objclass")
            data=item.get("objdata")
            if not isinstance(cls,str) or not isinstance(data,dict):continue
            selected.append({"source":rel,"index":i,"class":cls,
                             "aliases":item.get("aliases",[]),"data":data})
    if require_raw and missing:
        raise ValueError("Missing raw Internal-05 JSON files: "+str(missing))
    return selected,hashes,missing,absent


def safe_csv_sqlite(out: Path, table_rows: dict[str,list[dict]]):
    out.mkdir(parents=True,exist_ok=True)
    target=out/"pvz2_chs428_entities.sqlite"
    temp=out/"pvz2_chs428_entities.sqlite.partial"
    temp.unlink(missing_ok=True)
    conn=sqlite3.connect(temp)
    try:
        for table,columns in FIELDS.items():
            rows=table_rows[table]
            with (out/(table+".csv")).open("w",newline="",encoding="utf-8-sig") as f:
                writer=csv.DictWriter(f,fieldnames=columns,extrasaction="raise")
                writer.writeheader()
                writer.writerows(rows)
            fields=",".join('"'+col+'" TEXT' for col in columns)
            conn.execute(f'CREATE TABLE "{table}" ({fields})')
            if rows:
                placeholders=",".join("?" for _ in columns)
                conn.executemany(f'INSERT INTO "{table}" VALUES ({placeholders})',
                                 ([str(r.get(x,"")) for x in columns] for r in rows))
        for t,key in TABLE_KEYS.items():
            conn.execute(f'CREATE UNIQUE INDEX "ix_{t}_key" ON "{t}" ("{key}")')
        for t in ("links","assets","level_rows","avatars","ancillary_links","resource_groups"):
            conn.execute(f'CREATE INDEX "ix_{t}_entity" ON "{t}" (entity_id)')
        conn.commit()
        db_check=conn.execute("PRAGMA integrity_check").fetchone()[0]
        if db_check!="ok":raise ValueError(f"SQLite integrity_check: {db_check}")
    finally:
        conn.close()
    temp.replace(target)


def entity_key(kind,src,index):
    token=src+"\\0"+str(index)
    return kind+":"+hashlib.sha256(token.encode()).hexdigest()[:18]


def trim_json(value,limit=8192):
    s=j(value)
    # Do not falsely claim a complete source value when a field exceeds the report cell.
    return s if len(s)<=limit else j({"truncated":True,"original_chars":len(s),
                                         "sha256":hashlib.sha256(s.encode()).hexdigest()})


def build(root:Path,out:Path,raw_root:Path,*,require_raw:bool=True,
          expected_plants:int=381, expected_zombies:int=1265):
    tables={k:[] for k in FIELDS}
    counts=Counter()
    root=root.resolve(strict=True)
    raw_root=raw_root.resolve(strict=True)
    with tempfile.TemporaryDirectory() as td:
        folder=Path(td)
        game=read_database(root/"Database/CHN/V4.2.8/pvz2_chs428_gameplay_shard05.zip",
                           "pvz2_chs428_gameplay.sqlite",folder)
        resource=read_database(root/"Database/CHN/V4.2.8/pvz2_chs428_resource_catalog.zip",
                               "pvz2_chs428_resources.sqlite",folder)
        loc=read_database(root/"Database/CHN/V4.2.8/pvz2_chs428_localized_entities.zip",
                          "pvz2_chs428_localized_entities.sqlite",folder)
        try:
            gameplay=load_gameplay(game)
            groups,resource_ids=load_resources(resource)
            localization=load_localization(loc)
        finally:
            game.close();resource.close();loc.close()

    raw_index=original_audit(root)
    native,verified,missing,not_in_source=get_ancillary(raw_root,raw_index,require_raw=require_raw)
    merged={(x["source"],x["index"]):x for x in native}
    merged.update({(x["source"],x["index"]):x for x in gameplay})
    refs=source_token_index(merged.values())
    # Scope CurrentLevel aliases to the *same level source file*, never a global match.
    preliminary_entities=[x for x in gameplay if x["category"] in ("plant_types","zombie_types")]
    level_scopes,current_verified=current_level_scope(raw_root,raw_index,preliminary_entities)
    asset_list=list(read_csv(root/"Catalog/CHN/V4.2.8/semantic_assets/asset_paths.csv"))
    assets_by_group=defaultdict(list)
    assets_by_group_key=defaultdict(list)
    for x in asset_list:
        if x["format"] not in ("PNG","PAM_JSON"):continue
        assets_by_group[(x["bundle"].casefold(),x["group_key"])].append(x)
        assets_by_group_key[normalized(x["group_key"])].append(x)

    entities=[r for r in gameplay if r["category"] in ("plant_types","zombie_types")]
    if Counter(x["category"] for x in entities)!=Counter({"plant_types":expected_plants,"zombie_types":expected_zombies}):
        raise ValueError("unexpected source entity coverage")
    entity_token=defaultdict(set)
    for r in entities:
        kind="plant" if r["category"]=="plant_types" else "zombie"
        eid=entity_key(kind,r["source"],r["index"])
        r["_eid"]=eid
        for token in alias_tokens(r["aliases"]):
            entity_token[token].add(eid)
        if isinstance(r["data"].get("TypeName"),str):
            entity_token[r["data"]["TypeName"]].add(eid)

    ancillary_index=defaultdict(list)
    for r in native:
        if not ANCILLARY_CLASS.search(r["class"]):continue
        aid="raw:"+hashlib.sha256((r["source"]+"\\0"+str(r["index"])).encode()).hexdigest()[:18]
        r["_aid"]=aid
        tokens=sorted(set(s for _,s in references(r["data"],include_plain=False)))
        fields=sorted(r["data"])
        tables["ancillary"].append({
            "ancillary_id":aid,"source_file":r["source"],"object_index":r["index"],
            "objclass":r["class"],"aliases_json":j(r["aliases"]),
            "interesting_fields_json":j(fields),"reference_tokens_json":j(tokens),
            "status":"source-objclass-record"})
        # Only explicitly typed identifiers / RTIDs are treated as potential semantic links.
        for field,token in references(r["data"]):
            for eid in entity_token.get(token,()):
                ancillary_index[eid].append((aid,token,field,"rtid-exact-alias-candidate"))
        # Plain TypeName ties are text candidates; cannot imply in-game ownership.
        for key in ("PlantType","PlantTypeName","PlantName","ZombieType","ZombieTypeName"):
            raw=r["data"].get(key)
            if isinstance(raw,str):
                for eid in entity_token.get(raw,()):
                    ancillary_index[eid].append((aid,raw,key,"typed-field-exact-name-candidate"))

    def add_image_ref(owner_id,owner_kind,field,value):
        tokens=list(dict.fromkeys(token for _,token in references(value,path=field,include_plain=True)))
        for token in tokens:
            hit=resource_ids.get(symbol(token),[])
            if not hit:
                tables["image_refs"].append({
                    "owner_id":owner_id,"owner_kind":owner_kind,"source_field":field,
                    "raw_reference":token,"resource_id":"","resource_source_file":"",
                    "resource_path":"","atlas_parent_id":"","ax":"","ay":"","aw":"","ah":"",
                    "match_status":"unresolved-resource-id",
                    "evidence":"exact-ID-not-present-in-exported-resources"})
            for file,path,parent,ax,ay,aw,ah in hit:
                tables["image_refs"].append({
                    "owner_id":owner_id,"owner_kind":owner_kind,"source_field":field,
                    "raw_reference":token,"resource_id":symbol(token),
                    "resource_source_file":file,"resource_path":path,
                    "atlas_parent_id":parent,"ax":ax,"ay":ay,"aw":aw,"ah":ah,
                    "match_status":"exact-RTON-resource-id" if len(hit)==1 else "ambiguous-resource-id",
                    "evidence":"resource-manifest-id-and-raw-atlas-fields-not-PNG-pixel-validated"})

    for r in gameplay:
        if r["category"]=="skills":
            skill_id="skill:"+hashlib.sha256((r["source"]+"\\0"+str(r["index"])).encode()).hexdigest()[:18]
            add_image_ref(skill_id,"skill","$.SkillIconImage",r["data"].get("SkillIconImage"))
            tables["skill_records"].append({
                "skill_id":"skill:"+hashlib.sha256((r["source"]+"\\0"+str(r["index"])).encode()).hexdigest()[:18],
                "source_file":r["source"],"object_index":r["index"],
                "aliases_json":j(r["aliases"]),"skill_name_json":trim_json(r["data"].get("SkillName")),
                "skill_description_json":trim_json(r["data"].get("SkillDescription")),
                "skill_icon_json":trim_json(r["data"].get("SkillIconImage")),
                "status":"real-SkillPropertySheet"})
    expected=set()
    # Following links use exact original symbolic references, not token similarity.
    for r in entities:
        kind="plant" if r["category"]=="plant_types" else "zombie"
        data=r["data"]
        eid=r["_eid"]
        expected.add(eid)
        name=str(data.get("TypeName") or "")
        alias=r["aliases"]
        zh,status=localization.get(("plants" if kind=="plant" else "zombies",
                                     r["source"],r["index"]),("","not-found"))
        group_field="PlantResourceGroups" if kind=="plant" else "ResourceGroups"
        avatar=data.get("Avatars",[])
        avatar_list=avatar if isinstance(avatar,list) else []
        tables["entities"].append({
            "entity_id":eid,"kind":kind,"type_name":name,"chinese_candidate":zh,
            "chinese_status":"TypeName-string-candidate-"+status,
            "source_file":r["source"],"object_index":r["index"],"objclass":r["class"],
            "aliases_json":trim_json(alias),"property_ref_json":trim_json(data.get("Properties")),
            "resource_groups_json":trim_json(data.get(group_field)),
            "popanim_json":trim_json(data.get("PopAnim")),
            "avatar_items":len(avatar_list),"avatar_refs_json":trim_json(avatar_list),
            "avatar_piece_image":str(data.get("AvatarPieceImageName") or ""),
            "plant_piece_image":str(data.get("PlantPieceImageName") or ""),
            "quality_json":trim_json(data.get("Quality")),"rare_json":trim_json(data.get("Rare")),
            "profession_json":trim_json(data.get("Profession")),
            "zombie_class_json":trim_json(data.get("ZombieClass")),
            "status":"source-PlantType" if kind=="plant" else "source-ZombieType",
            "apk_sha256":APK_SHA,
        })
        if kind=="plant":
            add_image_ref(eid,kind,"$.PlantPieceImageName",data.get("PlantPieceImageName"))
            add_image_ref(eid,kind,"$.AvatarPieceImageName",data.get("AvatarPieceImageName"))
        for i,item in enumerate(avatar_list):
            toks=list(dict.fromkeys(token for _,token in references(item,include_plain=True)))
            tables["avatars"].append({
                "entity_id":eid,"type_name":name,"ordinal":i,
                "raw_avatar_json":trim_json(item),"source_field_path":f"$.Avatars[{i}]",
                "reference_tokens_json":j(toks),"status":"explicit-PlantType.Avatar-array-membership"})
        for aid,token,field,match in ancillary_index.get(eid,()):
            tables["ancillary_links"].append({
                "entity_id":eid,"ancillary_id":aid,"matched_token":token,
                "source_field":field,"match_status":match,
                "explanation":"Original data contained a candidate reference; runtime semantic ownership unverified"})

        # Properties direct reference (the value may be one RTID or a list of RTIDs).
        properties=data.get("Properties")
        properties_resolved=[]
        for field,token in references(properties,path="$.Properties",include_plain=True):
            matched=(list({(x["source"],x["index"]):x for x in level_scopes.get((r["source"],token),[])}.values())
                     if token.endswith(("@CurrentLevel","@$CurrentLevel"))
                     else exact_alias_matches(token,refs))
            if not matched:
                tables["links"].append({
                    "entity_id":eid,"kind":kind,"relation":"property-reference","field_path":field,
                    "source_reference":token,"target_type":"PropertySheet","target_id":"",
                    "target_source_file":"","target_object_index":"",
                    "status":"unresolved","evidence":"literal-PlantType-or-ZombieType.Properties"})
            for target in matched:
                # A source-scoped alias is a static graph edge, not a proved runtime value.
                same_scope=(target["source"].endswith("/PROPERTYSHEETS.json")
                            if token.endswith(("@PropertySheets","@$PropertySheets"))
                            else target["source"]==r["source"])
                ambiguous=len(matched)!=1
                is_dollar="@$" in token
                status=("ambiguous-alias" if ambiguous else
                        "source-scope-mismatch" if not same_scope else
                        "dollar-namespace-alias-candidate" if is_dollar else
                        "exact-source-property-alias")
                tid=entity_key("property",target["source"],target["index"])
                tables["links"].append({
                    "entity_id":eid,"kind":kind,"relation":"property-reference","field_path":field,
                    "source_reference":token,"target_type":target["class"],"target_id":tid,
                    "target_source_file":target["source"],"target_object_index":target["index"],
                    "status":status,"evidence":"source-token-exact-alias-comparison"})
                if status in ("exact-source-property-alias","dollar-namespace-alias-candidate"):
                    properties_resolved.append((tid,target))
        if not list(references(properties,path="$.Properties",include_plain=True)):
            tables["links"].append({"entity_id":eid,"kind":kind,"relation":"property-reference",
                 "field_path":"$.Properties","source_reference":trim_json(properties),
                 "target_type":"","target_id":"","target_source_file":"","target_object_index":"",
                 "status":"no-extractable-reference","evidence":"original-field-unresolved"})

        for tid,t in properties_resolved:
            values=t["data"]
            for key in (("PlantLevelStats","PlantStats","MinLevel","MaxLevel",
                         "Hitpoints","Cost","PacketCooldown","PowerCost")
                        if kind=="plant" else
                        ("ZombieLevelStats","ZombieStats","Hitpoints","Speed","EatDPS","AttackDPS",
                         "Helm","HelmHitpoints")):
                if key not in values:continue
                raw=values[key]
                seq=raw if isinstance(raw,list) else [raw]
                for i,v in enumerate(seq):
                    tables["level_rows"].append({
                        "entity_id":eid,"kind":kind,"property_entity_id":tid,
                        "field":key,"ordinal":i,"raw_value_json":trim_json(v),
                        "source_field_path":f"$.{key}[{i}]" if isinstance(raw,list) else f"$.{key}",
                        "status":"source-exact-property-alias-no-runtime-formula"})
            # Skill and projectile references must exist as explicit nested RTIDs.
            # A mere matching name or property action type is NOT a skill foreign key.
            for path,token in references(values,path="$.Properties"):
                scope=symbol(token).split("@")[-1].lstrip("$")
                if scope not in ("SkillTypes","ProjectileTypes"):
                    continue
                target=[v for v in exact_alias_matches(token,refs)
                        if v.get("category") in ("skills","projectiles") or
                           v["source"].endswith(("/SKILLTYPES.json","/PROJECTILETYPES.json"))]
                if not target:
                    tables["links"].append({
                        "entity_id":eid,"kind":kind,"relation":"property-nested-skill-or-projectile-RTID",
                        "field_path":path,"source_reference":token,"target_type":"",
                        "target_id":"","target_source_file":"","target_object_index":"",
                        "status":"unresolved-static-ability-or-projectile-ref",
                        "evidence":"original-nested-property-RTID-no-target"})
                for v in target:
                    tables["links"].append({
                        "entity_id":eid,"kind":kind,"relation":"property-nested-skill-or-projectile-RTID",
                        "field_path":path,"source_reference":token,"target_type":v["class"],
                        "target_id":entity_key("skill_or_projectile",v["source"],v["index"]),
                        "target_source_file":v["source"],"target_object_index":v["index"],
                        "status":"exact-static-ability-or-projectile-ref" if len(target)==1 else "ambiguous-static-ability-or-projectile-ref",
                        "evidence":"original-RTID-and-exact-source-alias-no-runtime-activation"})

        # Resource groups are resolved using exported RTON group ID, preserving ambiguous IDs.
        group_refs=list(references(data.get(group_field),path="$."+group_field,include_plain=True))
        seen_assets=set()
        for field,token in group_refs:
            match=groups.get(symbol(token),[])
            if not match:
                tables["resource_groups"].append({"entity_id":eid,"source_field":field,
                    "requested_group":token,"resource_source_file":"","group_id":"",
                    "group_type":"","group_index":"","match_status":"unresolved-group-id"})
            else:
                for file,idx,gid,gtype in match:
                    tables["resource_groups"].append({"entity_id":eid,"source_field":field,
                        "requested_group":token,"resource_source_file":file,"group_id":gid,
                        "group_type":gtype,"group_index":idx,
                        "match_status":"exact-resource-group-id" if len(match)==1 else "ambiguous-group-id"})
                    # Group names can align with atlas filenames, but this is NOT a verified image_id.
                    norm=re.sub(r"(?i)_(?:common|1200)$","",gid).casefold()
                    for asset in assets_by_group_key.get(normalized(norm),()):
                        if asset["family"]!=kind:continue
                        k=(asset["format"],asset["source_path"],asset["shard"])
                        if k in seen_assets:continue
                        seen_assets.add(k)
                        tables["assets"].append({
                            "entity_id":eid,"kind":kind,"source_field":field,
                            "format":asset["format"],"shard":asset["shard"],
                            "source_path":asset["source_path"],
                            "published_png_path":asset["published_png_path"],
                            "sha256":asset["source_sha256"],
                            "association_status":"resource-group-name-candidate",
                            "evidence":"original-RTON-group-id-and-visual-group-name-equal"})
        if not group_refs:
            tables["resource_groups"].append({"entity_id":eid,"source_field":"$."+group_field,
                "requested_group":trim_json(data.get(group_field)),"resource_source_file":"",
                "group_id":"","group_type":"","group_index":"",
                "match_status":"no-extractable-group-reference"})

        # A weak, separately marked fallback from explicit PopAnim and type naming.
        candidate_names=[(str(data.get("PopAnim") or ""),"$.PopAnim")]
        if name:
            candidate_names.append((("Plant" if kind=="plant" else "Zombie")+name,"$.TypeName"))
        for v,field in candidate_names:
            terms=[normalized(symbol(v))]
            if kind=="zombie":terms.append(normalized(symbol(v)+"Group"))
            for term in filter(None,terms):
                found=[x for x in assets_by_group_key.get(term,[]) if x["family"]==kind]
                for asset in found[:15]:
                    k=(asset["format"],asset["source_path"],asset["shard"])
                    if k in seen_assets:continue
                    seen_assets.add(k)
                    tables["assets"].append({
                        "entity_id":eid,"kind":kind,"source_field":field,
                        "format":asset["format"],"shard":asset["shard"],
                        "source_path":asset["source_path"],
                        "published_png_path":asset["published_png_path"],
                        "sha256":asset["source_sha256"],
                        "association_status":"filename-exact-normalized-candidate",
                        "evidence":"normalized-display-name-only-not-runtime-foreign-key"})
        # Explicit RTID references nested in raw source config (Actions etc) to skills/projectiles.
        for field,token in references(data):
            if not (field.startswith("$.Properties") or field.startswith("$.Avatars") or
                    field.startswith("$.PopAnim")):
                continue
            matched=[t for t in exact_alias_matches(token,refs)
                     if t.get("category") in ("skills","projectiles")]
            if len(matched)>10:continue
            for t in matched:
                tables["links"].append({
                    "entity_id":eid,"kind":kind,"relation":"ability-or-projectile-reference",
                    "field_path":field,"source_reference":token,"target_type":t["class"],
                    "target_id":entity_key(t["category"],t["source"],t["index"]),
                    "target_source_file":t["source"],"target_object_index":t["index"],
                    "status":"exact-static-alias-reference" if len(matched)==1 else "ambiguous-alias",
                    "evidence":"explicit-RTID-reference-in-original-entity-structure"})
    # An entity can have no art mapping; do not force matches to satisfy counts.
    if len(expected)!=len(entities):
        raise ValueError("colliding source entity identities")

    safe_csv_sqlite(out,tables)
    metrics={
        "schema":"pvz2-entity-crosswalk-1","region":REL,"version":VERSION,
        "apk_sha256":APK_SHA,"entity_source":"original gameplay SQLite ZIP",
        "raw_json_root":"SHA256-verified Internal-05 source archive",
        "verified_raw_json_sha256":verified,"verified_current_level_json_sha256":current_verified,
        "missing_requested_raw":missing,
        "optional_not_in_source_inventory":not_in_source,
        "records":{k:len(v) for k,v in tables.items()},
        "kinds":dict(Counter(r["kind"] for r in tables["entities"])),
        "link_status_counts":dict(Counter(r["status"] for r in tables["links"])),
        "resource_group_status_counts":dict(Counter(r["match_status"] for r in tables["resource_groups"])),
        "asset_candidate_status_counts":dict(Counter(r["association_status"] for r in tables["assets"])),
        "ancillary_link_status_counts":dict(Counter(r["match_status"] for r in tables["ancillary_links"])),
        "image_reference_status_counts":dict(Counter(r["match_status"] for r in tables["image_refs"])),
        "sqlite_integrity_check":"ok",
        "evidence_limits":[
            "Plant/Zombie 381/1265 rows count source records, not unique species",
            "Property references only exact alias matches; unresolved rows retained",
            "Raw plant/zombie stats are not calibrated in-game damage or upgrade formulas",
            "Avatars list membership and costume accessory objclass do not prove equipment slot",
            "Resource-group ID matching does not prove PNG atlas pixel or PAM animation frame linkage",
            "One entity can share a property sheet and contain multiple avatar references",
            "Names in Chinese are source-string candidates unless display usage is runtime-confirmed"
        ]
    }
    (out/"SUMMARY.json").write_text(json.dumps(metrics,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print(json.dumps({k:metrics[k] for k in ("records","kinds","link_status_counts",
                                             "resource_group_status_counts",
                                             "asset_candidate_status_counts")},ensure_ascii=False))
    return metrics


def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--repo-root",type=Path,default=Path("."))
    p.add_argument("--raw-root",type=Path,required=True)
    p.add_argument("--out",type=Path,default=Path("Catalog/CHN/V4.2.8/entity_map"))
    p.add_argument("--allow-missing-raw",action="store_true")
    p.add_argument("--expected-plants",type=int,default=381)
    p.add_argument("--expected-zombies",type=int,default=1265)
    a=p.parse_args()
    build(a.repo_root,a.out,a.raw_root,require_raw=not a.allow_missing_raw,
          expected_plants=a.expected_plants,expected_zombies=a.expected_zombies)


if __name__=="__main__":
    main()
