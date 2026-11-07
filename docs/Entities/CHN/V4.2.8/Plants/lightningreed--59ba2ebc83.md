---
title: lightningreed 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# lightningreed

候选中文名：闪电芦苇。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 32 | plant:c2acdede97c416787e | TypeName-string-candidate-matched | 4 | "POPANIM_PLANT_LIGHTNINGREED" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | LightningReedDefault@PropertySheets | PropertySheet |  | unresolved |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_BOLT/LIGHTNINGREED_BOLT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_BOLT_DEFAULT/LIGHTNINGREED_BOLT_DEFAULT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_BOLT_DEFAULT_GOLD/LIGHTNINGREED_BOLT_DEFAULT_GOLD.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_BOLT_DEFAULT_LEVEL5/LIGHTNINGREED_BOLT_DEFAULT_LEVEL5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_BOLT_DEFAULT_RED/LIGHTNINGREED_BOLT_DEFAULT_RED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_BOLT_LEVEL5/LIGHTNINGREED_BOLT_LEVEL5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_BOLT_RED/LIGHTNINGREED_BOLT_RED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_HIT/LIGHTNINGREED_HIT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_HIT_LEVEL5/LIGHTNINGREED_HIT_LEVEL5.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_HIT_RED/LIGHTNINGREED_HIT_RED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_PLANTFOOD2_CLOUD_ATTACK/LIGHTNINGREED_PLANTFOOD2_CLOUD_ATTACK.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_PLANTFOOD_BOLT/LIGHTNINGREED_PLANTFOOD_BOLT.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_PLANTFOOD_BOLT_RED/LIGHTNINGREED_PLANTFOOD_BOLT_RED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_PLANTFOOD_CLOUD/LIGHTNINGREED_PLANTFOOD_CLOUD.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/plant1/PlantLightningReed_Common/IMAGES/1200/PLANT1/EFFECTS/LIGHTNINGREED_PLANTFOOD_CLOUD2/LIGHTNINGREED_PLANTFOOD_CLOUD2.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：4 条；外围配件原生类候选关联：5 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_04"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantLightningReedAudio |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
