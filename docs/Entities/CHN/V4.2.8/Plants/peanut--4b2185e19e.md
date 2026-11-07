---
title: peanut 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# peanut

候选中文名：花生射手。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 80 | plant:37e9ba400a32cfc319 | TypeName-string-candidate-matched | 2 | "POPANIM_PLANT_PEANUT" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PeanutDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPEANUT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPeanut_1200/ATLASES/PLANTPEANUT_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_BLUEFIRE/PEANUT_BULLET_BLUEFIRE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_BLUEFIRE_LV5/PEANUT_BULLET_BLUEFIRE_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_FIRE/PEANUT_BULLET_FIRE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_FIRE_LV5/PEANUT_BULLET_FIRE_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_FIRE_TX/PEANUT_BULLET_FIRE_TX.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_GHOSTFIRE/PEANUT_BULLET_GHOSTFIRE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_GHOSTFIRE_LV5/PEANUT_BULLET_GHOSTFIRE_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_LV5/PEANUT_BULLET_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/PEANUT_BULLET_LV5_HIT/PEANUT_BULLET_LV5_HIT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/EFFECTS/SPLAT_PEANUT/SPLAT_PEANUT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/PLANT/PEANUT/PEANUT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant2/PlantPeanut_Common/IMAGES/1200/PLANT2/PLANT/PEANUT_LV5/PEANUT_LV5.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：2 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_03a","custom_03b"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPeanutAudio | PlantPeanutAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
