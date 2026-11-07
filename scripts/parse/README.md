# PvZ2 CHN 4.2.8 asset batch parser

Processes the 26,774 SHA256-indexed original and derived file records in 15
available Internal/Media Git shards. Missing Media-06 is not an empty shard.

## One-command all-indexed-file parsing

~~~bash
python3 scripts/parse/parse_all.py --workers 2 --max-refs-per-json 24 --resume
~~~

Outputs checkpointed per-shard reports and a merged local SQLite/CSV under
audit/local/CHN-4.2.8/deep-parse/. Existing Media-06 remains marked missing.

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

## Verified real-data run

The full 15-shard Actions run succeeded and committed 26,774 parsed file rows
to Catalog/CHN/V4.2.8/parsed/. Results:
12,259 parsed JSON; 1,345 PNG pixel decoded; 6,941 RIFF-structured WEM;
245 RIFF partial; 508 standard BNK; 1 BNK partial; 1 XML partial;
4 sfnt; 89 text structures; 5,379 opaque PTX/PAM/POPFX originals;
2 unresolved non-BKHD copies; 0 parse errors.

Found 754,178 actual RTID references and exported 153,939 bounded samples.
There is still no Media-06 in source Git, and parsing cannot imply gameplay
rendering or audio PCM playback. See SUMMARY.json and Obsidian runbook.
