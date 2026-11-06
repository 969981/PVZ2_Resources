#!/usr/bin/env python3
"""Audit Resource_Tool stages, converted JSON and unconverted binary members (no assumptions)."""
from __future__ import annotations
import argparse
from collections import Counter
from datetime import datetime, timezone
import json
from pathlib import Path

def summarize(root: Path) -> dict:
    result={"root":str(root),"generated_utc":datetime.now(timezone.utc).isoformat(),
            "stages":[],"final_json_valid":0,"final_json_invalid":0,
            "final_json_unchecked_large":0,"remaining_rton":[],
            "errors":[]}
    if not root.is_dir():
        raise ValueError("missing output directory: " + str(root))
    directories=sorted(p for p in root.iterdir() if p.is_dir())
    for directory in directories:
        files=[x for x in directory.rglob("*") if x.is_file()]
        types=Counter(x.suffix.lower() or "(no extension)" for x in files)
        result["stages"].append({"name":directory.name,"files":len(files),
                                  "bytes":sum(x.stat().st_size for x in files),
                                  "extensions":dict(sorted(types.items()))})
    final=next((x for x in directories if x.name.endswith("_JSON")),None)
    if final is None:
        result["errors"].append("final JSON stage not found")
        return result
    for file in final.rglob("*"):
        if not file.is_file():
            continue
        relative=file.relative_to(final).as_posix()
        if file.suffix.lower()==".json":
            if file.stat().st_size > 64*1024*1024:
                result["final_json_unchecked_large"]+=1
                continue
            try:
                with file.open("r",encoding="utf-8") as stream:
                    json.load(stream)
                result["final_json_valid"]+=1
            except Exception as exc:
                result["final_json_invalid"]+=1
                if len(result["errors"])<200:
                    result["errors"].append(relative+": "+str(exc))
        elif file.suffix.lower() in (".rton",".rtom"):
            result["remaining_rton"].append(relative)
    return result

def main() -> None:
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("root",type=Path)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    result=summarize(a.root)
    a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(result,ensure_ascii=False,indent=2),encoding="utf-8")
    print("SUMMARY",json.dumps({
        "stages":[(s["name"],s["files"],s["bytes"]) for s in result["stages"]],
        "json_valid":result["final_json_valid"],
        "json_invalid":result["final_json_invalid"],
        "json_unchecked_large":result["final_json_unchecked_large"],
        "remaining_rton":len(result["remaining_rton"]),
        "errors":len(result["errors"])},ensure_ascii=False),flush=True)
    if not result["stages"] or any("final JSON stage not found" in e for e in result["errors"]):
        raise SystemExit(1)
if __name__=="__main__":
    main()
