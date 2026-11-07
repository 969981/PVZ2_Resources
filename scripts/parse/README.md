# PvZ2 CHN 4.2.8 asset batch parser

Processes the 26,774 SHA256-indexed original and derived file records in 15
available Internal/Media Git shards. Missing Media-06 is not an empty shard.

## Quick start

Prerequisites: Python 3.10+, zstd, tar, optional Pillow for PNG pixel loading.

~~~bash
python3 scripts/archive/restore_git_shard.py \
  Unpack/CHN/V4.2.8/Media/shard-00 --out audit/local/restored-media-00

python3 scripts/parse/parse_shard.py \
  --root audit/local/restored-media-00 \
  --catalog Catalog/CHN/V4.2.8/shards/Media-00/files.csv \
  --out audit/local/parsed-media-00 \
  --workers 2 --max-refs-per-json 24
~~~

Produces files.csv, classes.csv, references.csv, SUMMARY.json. Source SHA256
discrepancies are fatal. Native PTX/PAM/POPFX with no deep parser are marked
opaque-preserved. WEM RIFF structure does not imply PCM playback.

All 15 shards: .github/workflows/pvz2-deep-parse-full.yml. Its merge job
produces Catalog/CHN/V4.2.8/parsed/assets.sqlite, assets.csv,
object_classes.csv, rtid_samples.csv and SUMMARY.json.

Full Obsidian usage guide:
docs/Unpack/13-26774素材全量解析与使用说明.md.
