---
title: wintermelon 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# wintermelon

候选中文名：冰西瓜投手。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 56 | plant:1f8cd717da9556ba58 | TypeName-string-candidate-matched | 5 | "POPANIM_PLANT_WINTERMELON" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | WinterMelonDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTWINTERMELON_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantWinterMelon_1200/ATLASES/PLANTWINTERMELON_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant1/PlantWinterMelon_Common/IMAGES/1200/PLANT1/EFFECTS/SPLAT_WINTERMELON/SPLAT_WINTERMELON.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantWinterMelon_Common/IMAGES/1200/PLANT1/EFFECTS/WINTERMELON_EXPLODE/WINTERMELON_EXPLODE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantWinterMelon_Common/IMAGES/1200/PLANT1/EFFECTS/WINTERMELON_EXPLODE_2/WINTERMELON_EXPLODE_2.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantWinterMelon_Common/IMAGES/1200/PLANT1/EFFECTS/WINTERMELON_EXPLODE_5/WINTERMELON_EXPLODE_5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantWinterMelon_Common/IMAGES/1200/PLANT1/EFFECTS/WINTERMELON_PLANTFOOD2/WINTERMELON_PLANTFOOD2.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantWinterMelon_Common/IMAGES/1200/PLANT1/EFFECTS/WINTERMELON_PROJECTILE_5/WINTERMELON_PROJECTILE_5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantWinterMelon_Common/IMAGES/1200/PLANT1/PLANT/WINTERMELON/WINTERMELON.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：5 条；外围配件原生类候选关联：5 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_04"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_05acolor1","custom_05bcolor1","custom_05ccolor1","custom_05dcolor1","custom_05ecolor1","custom_05fcolor1","custom_05gcolor1","custom_05hcolor1","custom_05hcolor1base","custom_05icolor1"],"AvatarType":"norm | explicit-PlantType.Avatar-array-membership |
| $.Avatars[4] | {"AvatarLayers":["custom_05acolor2","custom_05bcolor2","custom_05ccolor2","custom_05dcolor2","custom_05ecolor2","custom_05fcolor2","custom_05gcolor2","custom_05hcolor2","custom_05hcolor2base","custom_05icolor2"],"AvatarType":"norm | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantWinterMelonAudio |  | unresolved-group-id |
| FreezonEffectGroup |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
