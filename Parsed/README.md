# Parsed — independent, browseable PVZ2 4.2.8 analysis records

This directory contains **derived, source-backed JSON parsing records**, not
another copy of commercial-game image/audio/animation bytes.

For each row in Catalog/CHN/V4.2.8/parsed/assets.csv, the export tool generates
one JSON named after a stable hash of its full source identity. Each has:
source path, stage/shard, file size, SHA256, format, real parser status,
structured metadata, observed object classes and capped RTID samples.

The per-file outputs live under CHN/V4.2.8/{Internal,Media}/shard-NN/<format>/.
Use [INDEX.csv](CHN/V4.2.8/INDEX.csv) to map any original asset path to its
independently viewable JSON. See [MANIFEST.json](CHN/V4.2.8/MANIFEST.json)
for total records, coverage and per-format counts.

Generate locally with:

~~~bash
python3 scripts/catalog/split_parsed_records.py \
  --src Catalog/CHN/V4.2.8/parsed \
  --out Parsed/CHN/V4.2.8 --expected 26774
~~~

Missing source shard Media-06 is explicit; the available 15 shards total
26,774 records and not 26,774 unique in-game assets. To retrieve real PNG,
WEM, PTX or PAM bytes for local study, restore the source Git archives under
Unpack/ and follow docs/Unpack/11-全量文件恢复与格式验收.md.

For a fully guided workflow:
[Obsidian documentation](../docs/Unpack/14-独立解析文件导出与Git管理.md).
