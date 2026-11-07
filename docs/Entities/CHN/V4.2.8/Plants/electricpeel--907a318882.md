---
title: electricpeel 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# electricpeel

候选中文名：电鳗香蕉。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 308 | plant:28d0c2da3fa0cce9dc | TypeName-string-candidate-matched | 3 | "POPANIM_PLANT_ELECTRICPEEL" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ElectricPeelDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTEMPEA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantEMPea_1200/ATLASES/PLANTEMPEA_1200_00.png) | $.PlantResourceGroups[2] | resource-group-name-candidate |
| [PLANTELECTRICPEEL_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantElectricPeel_1200/ATLASES/PLANTELECTRICPEEL_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |
| [PLANTELECTRICPEEL_1200_01.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantElectricPeel_1200/ATLASES/PLANTELECTRICPEEL_1200_01.png) | $.TypeName | filename-exact-normalized-candidate |
| [PLANTELECTRICPEEL_1200_02.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantElectricPeel_1200/ATLASES/PLANTELECTRICPEEL_1200_02.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantEMPea_Common/IMAGES/1200/PLANT2/EFFECTS/EMPEACH_BLAST/EMPEACH_BLAST.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantEMPea_Common/IMAGES/1200/PLANT2/PLANT/EMPEACH/EMPEACH.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant1/PlantElectricPeel_Common/IMAGES/1200/PLANT1/EFFECTS/ELECTRICPEEL_FX/ELECTRICPEEL_FX.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantElectricPeel_Common/IMAGES/1200/PLANT1/EFFECTS/ELECTRICPEEL_PROJECTILE/ELECTRICPEEL_PROJECTILE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantElectricPeel_Common/IMAGES/1200/PLANT1/EFFECTS/ELECTRICPEEL_PROJECTILE1/ELECTRICPEEL_PROJECTILE1.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantElectricPeel_Common/IMAGES/1200/PLANT1/EFFECTS/ELECTRICPEEL_TILE_FX/ELECTRICPEEL_TILE_FX.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantElectricPeel_Common/IMAGES/1200/PLANT1/PLANT/ELECTRICPEEL/ELECTRICPEEL.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantElectricPeel_Common/IMAGES/1200/PLANT1/PLANT/ELECTRICPEEL1/ELECTRICPEEL1.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：3 条；外围配件原生类候选关联：2 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_011","custom_012"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02A","custom_02B","custom_02C","custom_02D"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":[],"AvatarType":"none"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantElectricPeel |  | unresolved-group-id |
| PlantElectricPeelAudio |  | unresolved-group-id |
| PlantEMPea | PlantEMPea | exact-resource-group-id |
| FrostbiteHeatGroup |  | unresolved-group-id |
| PlantCitron |  | unresolved-group-id |
| PlantPowerVineAudio |  | unresolved-group-id |
| PlantCitronAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
