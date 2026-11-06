#!/usr/bin/env python3
"""Move validated RSB files into size-balanced artifact shards; no data duplication."""
import argparse
import json
import os
from pathlib import Path

p = argparse.ArgumentParser(description=__doc__)
p.add_argument("source", type=Path)
p.add_argument("--out", required=True, type=Path)
p.add_argument("--shards", type=int, default=8)
a = p.parse_args()
if not 1 <= a.shards <= 32:
    p.error("shards must be 1..32")
files = sorted((a.source / "RSB").glob("*.rsb"), key=lambda x: -x.stat().st_size)
sizes = [0] * a.shards
index = []
for f in files:
    i = sizes.index(min(sizes))
    dest = a.out / ("shard-" + str(i)) / f.name
    dest.parent.mkdir(parents=True, exist_ok=True)
    os.replace(f, dest)
    sizes[i] += dest.stat().st_size
    index.append({"file": f.name, "artifact": "pvz2-chn-4.2.8-rsb-" + str(i), "bytes": dest.stat().st_size})
a.out.mkdir(parents=True, exist_ok=True)
(a.out / "index.json").write_text(json.dumps({"sizes": sizes, "files": index}, indent=2), encoding="utf-8")
print("PARTITION", json.dumps({"file_count": len(files), "shard_sizes_bytes": sizes}))
