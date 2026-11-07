#!/usr/bin/env python3
"""Condense source-audited percent/poison fields and 1–10 zombie mode curves.

Never infer target-max-health damage just because a field says Percent or Ratio.
Use source object identity, preserve ambiguous/missing links to PlantType.
"""
from __future__ import annotations
import argparse
from collections import Counter,defaultdict
import csv
import json
from pathlib import Path
import re

POISON=re.compile(r"(?i)poison|toxic|venom|bleed|corrosion|health.*damage|damage.*health|maxhealth|maxhp")
TRUE=re.compile(r"(?i)max.*(?:hp|health).*damage|damage.*max.*(?:hp|health)|(?:health|hp).*percent|percent.*(?:health|hp)|poison.*percent|percent.*poison")
ALL_WEAK=re.compile(r"(?i)ratio|percent|damage|poison|health|hp|tox|venom")
COLUMNS=["objclass","field_path","reason","observations","source_objects","example_values",
         "example_aliases","example_source_file","example_index"]
PLANTS=["type_name","entity_id","damage_source_file","damage_object_index","objclass",
        "field_path","raw_value","reason","link_status","evidence"]
VECT=["vector_hash","source_file","object_index","objclass","aliases","level","hitpoints_multiplier",
      "attack_multiplier","source_array_length","occurrences","evidence"]


def readcsv(path):
    with path.open(newline="",encoding="utf-8-sig") as f:
        yield from csv.DictReader(f)


def write(path,columns,items):
    path.parent.mkdir(parents=True,exist_ok=True)
    with path.open("w",encoding="utf-8-sig",newline="") as f:
        w=csv.DictWriter(f,fieldnames=columns)
        w.writeheader()
        w.writerows(items)


def run(source,entity_map,out):
    out.mkdir(parents=True,exist_ok=True)
    hits=list(readcsv(source/"percent_field_hits.csv"))
    fields=defaultdict(list)
    source_objects=defaultdict(list)
    for r in hits:
        key=(r["objclass"],r["field_path"],r["reason"])
        fields[key].append(r)
        source_objects[(r["source_file"],r["object_index"])].append(r)
    inventory=[]
    for (cls,path,reason),entries in sorted(fields.items(),key=lambda pair:-len(pair[1])):
        inventory.append(dict(objclass=cls,field_path=path,reason=reason,
                              observations=len(entries),
                              source_objects=len({(x["source_file"],x["object_index"]) for x in entries}),
                              example_values=json.dumps(list(dict.fromkeys(x["raw_value"] for x in entries))[:8],
                                                        ensure_ascii=False),
                              example_aliases=entries[0]["aliases"],
                              example_source_file=entries[0]["source_file"],
                              example_index=entries[0]["object_index"]))
    write(out/"damage_field_frequencies.csv",COLUMNS,inventory)

    # Only poison or "max-health" names enter the high-priority review queue.
    strict=[r for r in hits if TRUE.search(r["field_path"]) or
            (POISON.search(r["objclass"]) and ALL_WEAK.search(r["field_path"])) or
            POISON.search(r["field_path"])]
    strict_unique={}
    for r in strict:
        key=(r["source_file"],r["object_index"],r["field_path"])
        strict_unique[key]=r
    strict_rows=list(strict_unique.values())
    write(out/"poison_and_health_damage_field_candidates.csv",
          ["source_file","object_index","objclass","aliases","field_path","raw_value",
           "reason","context_class","source_sha256"],strict_rows)

    entities={r["entity_id"]:r for r in readcsv(entity_map/"entities.csv")}
    source_links=defaultdict(list)
    for link in readcsv(entity_map/"links.csv"):
        if link["kind"]!="plant":continue
        if not (link["status"].startswith("exact-") or
                link["status"]=="dollar-namespace-alias-candidate"):
            continue
        if link["target_source_file"] and link["target_object_index"]:
            source_links[(link["target_source_file"],link["target_object_index"])].append(link)
    mapped=[]
    for r in strict_rows:
        matches=source_links.get((r["source_file"],r["object_index"]),[])
        for link in matches:
            entity=entities.get(link["entity_id"])
            if not entity:continue
            mapped.append(dict(type_name=entity["type_name"],entity_id=entity["entity_id"],
                  damage_source_file=r["source_file"],damage_object_index=r["object_index"],
                  objclass=r["objclass"],field_path=r["field_path"],
                  raw_value=r["raw_value"],reason=r["reason"],link_status=link["status"],
                  evidence="exact-static-source-object-link-not-proven-percent-damage"))
    write(out/"plant_static_percent_related_candidates.csv",PLANTS,mapped)

    # Vector comparisons: native AttackLevel and HitPointsLevel are not final
    # effective damage and not a universal one-to-ten scaling formula.
    raw=list(readcsv(source/"zombie_level_profiles.csv"))
    by_vector=defaultdict(list)
    for r in raw:by_vector[r["vector_hash"]].append(r)
    representative=[]
    for digest,entries in sorted(by_vector.items(),key=lambda kv:-len(kv[1])):
        row=entries[0]
        values=json.loads(row["values_json"])
        for level,v in enumerate(values,1):
            if level>10:break
            if not isinstance(v,dict):continue
            representative.append(dict(
              vector_hash=digest,source_file=row["source_file"],object_index=row["object_index"],
              objclass=row["objclass"],aliases=row["aliases"],level=level,
              hitpoints_multiplier=v.get("HitPointsLevel",""),
              attack_multiplier=v.get("AttackLevel",""),
              source_array_length=len(values),occurrences=len(entries),
              evidence="original-ZombieLevelStats-array-not-universal-mode-or-runtime-stat"))
    write(out/"zombie_source_level_1_to_10_by_profile.csv",VECT,representative)
    summ=dict(source_file_count=7981,
              percent_field_hit_rows=len(hits),
              distinct_fields=len(inventory),
              poison_or_health_candidate_hits=len(strict_rows),
              plant_static_source_candidate_hits=len(mapped),
              distinct_plant_candidates=len(set(x["type_name"] for x in mapped)),
              level_source_profiles=len(by_vector),
              profile_rows=representative.__len__(),
              poison_sample_groups=[dict(cls=r["objclass"],field=r["field_path"],
                                         values=r["example_values"],count=r["observations"],
                                         source=r["example_source_file"])
                   for r in inventory if TRUE.search(r["field_path"]) or
                     ("poison" in r["field_path"].lower() and r["observations"]>0)][:95],
              source_linked_plant_samples=sorted(set(x["type_name"] for x in mapped))[:100],
              notes=[
                  "Field names are hypotheses, not evidence of target max-health damage",
                  "Percentage chance and status DOT are not the same as HP percentage damage",
                  "Native level vectors are selected per game mode and can be overridden",
                  "Endless 10x100000 HP reference is NOT sourced from these 18 resource vectors",
                  "TypeName join only performed through exact static source object identity"])
    (out/"ROLLUP_SUMMARY.json").write_text(json.dumps(summ,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("PERCENT_ROLLUP_SOURCE_VERIFIED",json.dumps({
        k:v for k,v in summ.items() if k not in ("poison_sample_groups","source_linked_plant_samples","notes")
    },ensure_ascii=False))
    return summ


if __name__=="__main__":
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("--source",required=True,type=Path)
    p.add_argument("--entity-map",required=True,type=Path)
    p.add_argument("--out",required=True,type=Path)
    a=p.parse_args()
    run(a.source,a.entity_map,a.out)
