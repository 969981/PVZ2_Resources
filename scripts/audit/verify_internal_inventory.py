#!/usr/bin/env python3
"""Verify all 8 stage-3 actual internal-file audit reports (not inferred totals)."""
import argparse
from collections import Counter
import json
from pathlib import Path

EXPECTED={
    ".json":8091, ".ptx":1522, ".pam":3847, ".bnk":510,
    ".wem":795, ".popfx":10, ".lua":43, ".ini":39,
    ".txt":6, ".ttf":4, ".xml":2
}
def main():
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("root",type=Path)
    p.add_argument("--out",type=Path,required=True)
    a=p.parse_args()
    files=sorted(a.root.rglob("secondary-audit.json"))
    if len(files)!=8:
        raise ValueError("Expected 8 unique stage-3 audits, got "+str(len(files)))
    extensions=Counter()
    subgroup_count=0
    validity=Counter()
    records=[]
    for path in files:
        report=json.loads(path.read_text(encoding="utf-8"))
        stages={s["name"]:s for s in report["stages"]}
        final=next((s for s in report["stages"] if s["name"].endswith("_JSON")),None)
        groups=next((s for s in report["stages"] if s["name"].endswith("_RSG")),None)
        if not final or not groups:raise ValueError("Missing mandatory stage in "+str(path))
        extensions.update(final["extensions"])
        subgroup_count+=groups["files"]
        validity["json_valid"]+=report["final_json_valid"]
        validity["json_invalid"]+=report["final_json_invalid"]
        validity["large_unchecked"]+=report["final_json_unchecked_large"]
        validity["remaining_rton"]+=len(report["remaining_rton"])
        records.append({"input":path.parent.name,"rsg_groups":groups["files"],
            "members":final["files"],"bytes":final["bytes"],
            "extension_counts":final["extensions"]})
    if dict(extensions)!=EXPECTED:
        raise ValueError(f"Original format counts changed: {dict(extensions)} != {EXPECTED}")
    if subgroup_count!=2964 or sum(extensions.values())!=14869:
        raise ValueError("Mismatch original RSGP/member totals")
    if validity["json_valid"]!=8091 or any(validity[k] for k in ("json_invalid","large_unchecked","remaining_rton")):
        raise ValueError("JSON validation coverage incomplete: "+str(validity))
    result={"game":"Plants vs Zombies 2","region":"CHN","version":"4.2.8",
        "source":"Eight successful GitHub Actions 42259266531 secondary-audit.json files",
        "rsbp_groups":subgroup_count,"members":sum(extensions.values()),
        "extensions":dict(sorted(extensions.items())),
        "validation":dict(validity),"files_by_shard":records,
        "media_converted_external":{
            "ptx_png":1522,"pam_animation_json":3847,
            "wwise_bnk_parse_ok":509,"wwise_bnk_unresolved":1,
            "embedded_wem_extracted":6480,"original_wem_not_pcm_converted":795
        },
        "not_proven_complete":[
            "Sound PCM/WAV decode and playback",
            "POPFX binary effect playback and scene compositing",
            "43 Lua scripts semantic recovery",
            "Native gameplay code, network-only live content and gameplay runtime",
            "Sprite-atlas semantic regions and playable animation rendering",
            "Reference disambiguation across all level spawn events"
        ]}
    a.out.parent.mkdir(parents=True,exist_ok=True)
    a.out.write_text(json.dumps(result,ensure_ascii=False,indent=2)+"\n",encoding="utf-8")
    print("AUDIT_VERIFIED",json.dumps({"members":result["members"],
        "rsg_groups":subgroup_count,"extensions":dict(extensions)},ensure_ascii=False),flush=True)
if __name__=="__main__":
    main()
