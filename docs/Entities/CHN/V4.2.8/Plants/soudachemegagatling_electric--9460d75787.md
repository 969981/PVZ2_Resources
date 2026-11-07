---
title: soudacheMegagatling_Electric 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# soudacheMegagatling_Electric

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 326 | plant:dde624d5cbc336999c | TypeName-string-candidate-not-found | 1 | "POPANIM_PLANT_MEGAGATLING_SOUDACHE" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantStats | 0 | {"Type":"damage","Value":"damage5"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"straight"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 400 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5.0 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantSoudacheMegaGatlingDefault@PropertySheets | PlantSoudacheMegaGatlingProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | SoudacheMegaGatlingNormalDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | SoudacheMegaGatlingFireDefault@ProjectileTypes | SoudacheMegaGatlingFireProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | SoudacheMegaGatlingElectricDefault@ProjectileTypes | SoudacheMegaGatlingElectricProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPEPPERPULT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPepperpult_1200/ATLASES/PLANTPEPPERPULT_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTFIREPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantFirePeashooter_1200/ATLASES/PLANTFIREPEASHOOTER_1200_00.png) | $.PlantResourceGroups[2] | resource-group-name-candidate |
| [PLANTELECTRICPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantElectricPeashooter_1200/ATLASES/PLANTELECTRICPEASHOOTER_1200_00.png) | $.PlantResourceGroups[3] | resource-group-name-candidate |
| [PLANTGATLINGPEA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantGatlingPea_1200/ATLASES/PLANTGATLINGPEA_1200_00.png) | $.PlantResourceGroups[5] | resource-group-name-candidate |
| [PLANTICYCURRANT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantIcyCurrant_1200/ATLASES/PLANTICYCURRANT_1200_00.png) | $.PlantResourceGroups[6] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_BLUE_BURN/PEPPERPULT_BLUE_BURN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_BURN/PEPPERPULT_BURN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE/PEPPERPULT_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE2/PEPPERPULT_PROJECTILE2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_PF_SPLAT/PEPPERPULT_PROJECTILE_PF_SPLAT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_PF_SPLAT2/PEPPERPULT_PROJECTILE_PF_SPLAT2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SMALL/PEPPERPULT_PROJECTILE_SMALL.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SMALL2/PEPPERPULT_PROJECTILE_SMALL2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SPLAT/PEPPERPULT_PROJECTILE_SPLAT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PROJECTILE_SPLAT2/PEPPERPULT_PROJECTILE_SPLAT2.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/EFFECTS/PEPPERPULT_PURPLE_BURN/PEPPERPULT_PURPLE_BURN.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPepperpult_Common/IMAGES/1200/PLANT2/PLANT/PEPPERPULT/PEPPERPULT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/FIREPEASHOOTER_FIRE/FIREPEASHOOTER_FIRE.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/FIREPEASHOOTER_LV5_PROJECTILE/FIREPEASHOOTER_LV5_PROJECTILE.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/FIREPEASHOOTER_POWERRAGE/FIREPEASHOOTER_POWERRAGE.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/PLANT/FIREPEASHOOTER/FIREPEASHOOTER.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICBALL/ELECTRICBALL.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICBALL_HIT/ELECTRICBALL_HIT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICSTORM/ELECTRICSTORM.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRIC_LIGHTNINGREED_HIT/ELECTRIC_LIGHTNINGREED_HIT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |

本页仅展示前 20 条；完整 33 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":[],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPepperpult | PlantPepperpult | exact-resource-group-id |
| PlantPeashooter |  | unresolved-group-id |
| PlantFirePeashooter | PlantFirePeashooter | exact-resource-group-id |
| PlantElectricPeashooter | PlantElectricPeashooter | exact-resource-group-id |
| PlantLightningReed |  | unresolved-group-id |
| PlantGatlingPea | PlantGatlingPea | exact-resource-group-id |
| PlantIcyCurrant | PlantIcyCurrant | exact-resource-group-id |
| PlantMegaGatling |  | unresolved-group-id |
| PlantMegagatlingAudio | PlantMegagatlingAudio | exact-resource-group-id |
| FreezonEffectGroup |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
