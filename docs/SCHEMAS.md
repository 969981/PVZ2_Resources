---
title: 数据结构与来源审计
type: schema
tags: [pvz2, provenance, export]
updated: 2026-11-07
---

# Data provenance and audit schema

## Mandatory resource evidence fields
game, region, version_label, source_apk_sha256, apk_member, container_chain, internal_member, observed_magic, parser_name, parser_version, source_bytes, source_sha256, output_path, output_sha256, status, warnings, error.

Statuses: inventory-only, header-identified, synthetic-tested, real-sample-tested, decoded, validated, unresolved. Unknown values stay null; do not invent counts or names. Preserve original case and numeric IDs. No cross-version join without verifying keys and content.

## Proposed output tables (not yet actual extracted records)
- plants.csv: version, plant_id, internal_name, zh_cn_name, sun_cost, cooldown, health, damage, attack_interval, source_path, source_field, status
- zombies.csv: version, zombie_id, internal_name, zh_cn_name, health, speed, defense, behavior_id, source_path, source_field, status
- levels.csv: version, world_id, level_id, game_mode, config_path, source_path, status
- waves.csv: version, level_id, wave_id, spawn_id, zombie_id, count, weight, source_path, status
- abilities.csv: version, owner_type, owner_id, ability_id, raw_fields_json, source_path, status
- localization.csv: version, language, text_key, text_value, source_path, status
- assets.csv: version, apk_member, rsb_bundle, rsgp_group, internal_path, format, decoded_path, sha256, status, error

These table names are an extraction design, not verified original game field names. Document units (ticks/ms/frames/damage scale) only after source evidence.

## Report contract
Write UTF-8 JSON plus optional CSV. Keep source hash, tool commit, UTC generated_at, per-stage totals, per-item status and errors. Do not use percentages without exact numerator and denominator. Keep full generated reports in ignored audit/local/, publish only reviewed summaries. Treat run output from synthetic tests separately from results on actual APK bytes.

---

Obsidian 导航：[[00-知识库首页]] · [[研究证据规范]] · [[项目工作台]]
