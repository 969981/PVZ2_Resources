# PVZ2 CHN 4.2.8 — file-by-file SHA256 catalog

A **metadata-only** inventory of original and derived game resources. No additional image/audio bytes are published through the catalog.

- [Deep-parsed format, JSON classes, RTID SQLite](CHN/V4.2.8/parsed/assets.sqlite)
- [Deep-parsed evidence summary](CHN/V4.2.8/parsed/SUMMARY.json)
- [Full file search database (SQLite)](CHN/V4.2.8/summary/assets.sqlite)
- [Flat CSV index](CHN/V4.2.8/summary/assets.csv)
- [Coverage and missing-shard report](CHN/V4.2.8/summary/SUMMARY.json)
- [Obsidian documentation](../docs/Unpack/10-独立素材清单与Git体积规则.md)

## Verified snapshot (2026-11-07)

| Stage | Indexed Git archives | Source files | Files under 95 MiB | Files above 50 MiB |
|---|---:|---:|---:|---:|
| Internal | 8/8 | 14,869 | 14,869 | 0 |
| Media | 7/8 | 11,905 | 11,905 | 5 |
| **Combined** | **15** | **26,774** | **26,774** | **5** |

Media/shard-06 is **not indexed** because its original Git archival has no committed manifest yet. It contains 501 files in the original Actions artifact, but **do not count those as verified Git-backed individual entries** until the archive has been fully saved and restored. The prior archive push was interrupted by concurrent branch updates, not a >100 MiB size rejection.

A per-file record preserves region, version, stage, shard, archive SHA256, original relative filename, real size, file SHA256, category and format. The legacy small_file_candidate field is only a <=512 KiB selected-text filter. git_size_eligible is a conservative under-95-MiB technical-size test; publication rights are separate.

## SQLite search examples

~~~sql
SELECT stage, format, count(*) AS file_count,
       round(sum(size_bytes)/1048576.0, 1) AS source_mib
FROM assets
GROUP BY stage, format
ORDER BY stage, file_count DESC;

SELECT stage, shard, original_path, size_bytes, sha256
FROM assets
WHERE lower(filename) LIKE '%peashooter%'
ORDER BY stage, original_path;

SELECT stage, count(*) AS over_50mib
FROM assets
WHERE git_warning_over_50mib = 1
GROUP BY stage;
~~~

The SQLite table is named assets; primary key is (stage, shard, original_path). More than one record can represent an original PTX and its converted PNG, or original PAM and its JSON; it does not follow that the file count represents distinct gameplay assets.

## Reproduce the metadata

~~~bash
python3 scripts/catalog/index_git_shard.py \
  Unpack/CHN/V4.2.8/Media/shard-00 \
  --out Catalog/CHN/V4.2.8/shards/Media-00

python3 scripts/catalog/merge_asset_catalog.py \
  Catalog/CHN/V4.2.8/shards \
  --out Catalog/CHN/V4.2.8/summary
~~~

To retrieve single files locally and verify their SHA256, use scripts/archive/restore_git_shard.py followed by scripts/catalog/materialize_readable.py --copy, detailed in the Obsidian manual. The output Readable/ folder is Git-ignored. The scripts do not publish the game's proprietary media files automatically.
