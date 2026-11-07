#!/usr/bin/env python3
"""Extract source-backed combat fields for two PvZ2 CHN 4.2.8 plants.

Does not infer game runtime formulas, damage units, chance rolls, or animation behavior.
"""
from __future__ import annotations
import argparse
import csv
import hashlib
import json
from pathlib import Path
import re

STEMS = ("PLANTTYPES", "PROPERTYSHEETS", "PROJECTILETYPES", "SKILLTYPES")
NEEDLES = ("mulberry", "convallariachemist", "giantgasgrenade",
           "giantflashgrenade", "giantplasmagrenade")
STAT = re.compile(
    r"damage|poison|venom|gas|flash|plasma|grenade|attack|health|hitpoint|"
    r"percent|ratio|duration|interval|chance|probab|frequency|cooldown|"
    r"speed|count|radius|splash|buff|debuff|level|stack|times|ticks|"
    r"recharge|explode|stun|velocity|trigger|projectile|range|cost",
    re.I
)

def as_tokens(value):
    if isinstance(value, str):
        return [value]
    if isinstance(value, list):
        return [t for x in value for t in as_tokens(x)]
    if isinstance(value, dict):
        return [t for k, v in value.items()
                if k.lower() in ("alias","name","id","rtid","value")
                for t in as_tokens(v)]
    return []

def leaves(value, path="$", depth=0):
    if depth > 25:
        return
    if isinstance(value, dict):
        for k, v in value.items():
            yield from leaves(v, f"{path}.{k}", depth + 1)
    elif isinstance(value, list):
        for i, v in enumerate(value):
            yield from leaves(v, f"{path}[{i}]", depth + 1)
    else:
        yield path, value

def sha256(p: Path):
    h = hashlib.sha256()
    with p.open("rb") as fd:
        for chunk in iter(lambda: fd.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--raw-root", type=Path, required=True)
    ap.add_argument("--source-index", type=Path, required=True)
    ap.add_argument("--out", type=Path, required=True)
    args = ap.parse_args()
    with args.source_index.open(encoding="utf-8-sig", newline="") as fd:
        inventory = {r["original_path"]: r for r in csv.DictReader(fd)}
    rows, origins = [], []
    for stem in STEMS:
        relative = "04_JSON/dynamic/Packages/PACKAGES/" + stem + ".json"
        path = args.raw_root / relative
        if not path.is_file():
            raise SystemExit(f"Missing source {relative}")
        indexed = inventory.get(relative)
        if indexed is None or sha256(path) != indexed["sha256"]:
            raise SystemExit(f"Source SHA256 mismatch or absent inventory: {relative}")
        if path.stat().st_size != int(indexed["size_bytes"]):
            raise SystemExit(f"Source length mismatch: {relative}")
        data = json.loads(path.read_text(encoding="utf-8-sig"))
        objects = data.get("objects")
        if not isinstance(objects, list):
            raise SystemExit(f"Invalid object root: {relative}")
        origins.append({"file": relative, "sha256": indexed["sha256"],
                        "bytes": path.stat().st_size, "objects": len(objects)})
        for i, obj in enumerate(objects):
            if not isinstance(obj, dict):
                continue
            body = obj.get("objdata")
            if not isinstance(body, dict):
                continue
            aliases = as_tokens(obj.get("aliases", []))
            kind = obj.get("objclass", "")
            name = " ".join(aliases + [str(kind),
                str(body.get("TypeName", "")), str(body.get("Name", ""))]).casefold()
            if not any(n in name for n in NEEDLES):
                continue
            selected = []
            for key, value in leaves(body):
                if STAT.search(key) or any(n in str(value).casefold() for n in NEEDLES):
                    if isinstance(value, str) and len(value) > 400:
                        value = value[:400] + "...[truncated]"
                    selected.append({"path": key, "value": value})
            rows.append({"source": relative, "object_index": i, "objclass": kind,
                         "aliases": aliases, "matching_name": name[:400],
                         "combat_fields": selected, "source_field_count": len(list(leaves(body)))})
    if not rows:
        raise SystemExit("No targeted original records matched")
    args.out.mkdir(parents=True, exist_ok=True)
    result = {
        "scope": "Original source config fields only; not observed runtime damage or DPS",
        "version": "CHN 4.2.8",
        "source_verification": "individual SHA256 and byte count against Internal-05 inventory; restored archive manifest also verified",
        "source_files": origins,
        "records": rows,
    }
    target = args.out / "focused_combat_source.json"
    target.write_text(json.dumps(result, indent=2, ensure_ascii=False) + "\n", encoding="utf-8")
    md = ["# 芦藜药师与桑葚爆破手：CHN 4.2.8 原生伤害字段审计", "",
          "> 状态：原始字段已核验；实际战斗结算、叠毒上限、概率抽样及单位仍待运行时验证。", "",
          "## 核验过的原始源文件", "",
          "| 文件 | SHA256 | 对象数 |", "|---|---|---:|"]
    for o in origins:
        md.append(f'| `{Path(o["file"]).name}` | `{o["sha256"]}` | {o["objects"]} |')
    for r in rows:
        md.extend(["", f'## {Path(r["source"]).name}: {r["objclass"]} / index {r["object_index"]}',
                   "", "Aliases: " + ", ".join("`"+str(a)+"`" for a in r["aliases"]), "",
                   "| 原始字段路径 | 原值 |", "|---|---|"])
        for field in r["combat_fields"]:
            val = json.dumps(field["value"], ensure_ascii=False)
            if len(val) > 180:
                val = val[:180] + "…"
            val = val.replace("|", "\\|").replace("\n", " ")
            md.append(f'| `{field["path"]}` | `{val}` |')
    (args.out / "focused_combat_source.md").write_text("\n".join(md) + "\n", encoding="utf-8")
    print("AUDIT_SOURCE_SHA_VERIFIED", len(origins), "TARGET_OBJECTS", len(rows))
    for r in rows:
        print("OBJECT", Path(r["source"]).name, r["object_index"], r["objclass"],
              ",".join(r["aliases"]), "FIELDS", len(r["combat_fields"]))
        for x in r["combat_fields"]:
            if re.search(r"damage|poison|chance|percent|probab|duration|interval|stack", x["path"], re.I):
                print("FIELD", x["path"], json.dumps(x["value"], ensure_ascii=False)[:160])

if __name__ == "__main__":
    main()
