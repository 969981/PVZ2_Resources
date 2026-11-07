---
title: happyleek 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# happyleek

候选中文名：阳光韭菜。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 316 | plant:b173bbbc481a9c9f6f | TypeName-string-candidate-matched | 1 | "POPANIM_PLANT_HAPPYLEEK" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | HappyLeekDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTSTUNION_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantStunion_1200/ATLASES/PLANTSTUNION_1200_00.png) | $.PlantResourceGroups[3] | resource-group-name-candidate |
| [PLANTHAPPYLEEK_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantHappyLeek_1200/ATLASES/PLANTHAPPYLEEK_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantStunion_Common/IMAGES/1200/PLANT2/EFFECTS/STUNION_PF_BURPCLOUD_PROJECTILE/STUNION_PF_BURPCLOUD_PROJECTILE.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantStunion_Common/IMAGES/1200/PLANT2/PLANT/STUNION/STUNION.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant1/PlantHappyLeek_Common/IMAGES/1200/PLANT1/EFFECTS/HAPPYLEEK_EFFECT/HAPPYLEEK_EFFECT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantHappyLeek_Common/IMAGES/1200/PLANT1/PLANT/HAPPYLEEK/HAPPYLEEK.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantHappyLeek |  | unresolved-group-id |
| PlantSunflowerAudio |  | unresolved-group-id |
| PlantStunionAudio | PlantStunionAudio | exact-resource-group-id |
| PlantStunion | PlantStunion | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
