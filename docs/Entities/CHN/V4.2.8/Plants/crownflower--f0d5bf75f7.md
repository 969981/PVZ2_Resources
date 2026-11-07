---
title: crownflower 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# crownflower

候选中文名：激光皇冠花。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 225 | plant:c510483692d32972ff | TypeName-string-candidate-matched | 5 | "POPANIM_PLANT_CROWNFLOWER" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | CrownFlowerDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTCROWNFLOWER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantCrownFlower_1200/ATLASES/PLANTCROWNFLOWER_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_AVATAR_PROJECTILE/CROWNFLOWER_AVATAR_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_AVATAR_PROJECTILE1/CROWNFLOWER_AVATAR_PROJECTILE1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_AVATAR_PROJECTILE_HIT/CROWNFLOWER_AVATAR_PROJECTILE_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_AVATAR_PROJECTILE_HIT1/CROWNFLOWER_AVATAR_PROJECTILE_HIT1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_PLANTFOOD_PROJECTILE/CROWNFLOWER_PLANTFOOD_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_PLANTFOOD_PROJECTILE_HIT/CROWNFLOWER_PLANTFOOD_PROJECTILE_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY/CROWNFLOWER_RAY.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY1/CROWNFLOWER_RAY1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY_HIT/CROWNFLOWER_RAY_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY_HIT1/CROWNFLOWER_RAY_HIT1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY_LV5_START/CROWNFLOWER_RAY_LV5_START.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY_LV5_START1/CROWNFLOWER_RAY_LV5_START1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY_START/CROWNFLOWER_RAY_START.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/EFFECTS/CROWNFLOWER_RAY_START1/CROWNFLOWER_RAY_START1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/PLANT/CROWNFLOWER/CROWNFLOWER.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantCrownFlower_Common/IMAGES/1200/PLANT2/PLANT/CROWNFLOWER1/CROWNFLOWER1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：5 条；外围配件原生类候选关联：5 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_04A","custom_04B","custom_04C","custom_04D"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[4] | {"AvatarLayers":[],"AvatarType":"none"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantCrownFlower | PlantCrownFlower | exact-resource-group-id |
| PlantCitron |  | unresolved-group-id |
| PlantCrownFlowerAudio | PlantCrownFlowerAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
