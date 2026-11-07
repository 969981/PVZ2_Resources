---
title: megagatling 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# megagatling

候选中文名：超级机枪射手。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 323 | plant:17b7ace2b999d7f9e4 | TypeName-string-candidate-matched | 3 | "POPANIM_PLANT_MEGAGATLING" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(megagatling_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(megagatling_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(megagatling_Skill_Level5@SkillTypes)","AttackLevel":4,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage5"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"straight"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 400 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5.0 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PlantMegaGatlingDefault@PropertySheets | MegaGatlingProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTPEPPERPULT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPepperpult_1200/ATLASES/PLANTPEPPERPULT_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTPRIMALPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantPrimalPeashooter_1200/ATLASES/PLANTPRIMALPEASHOOTER_1200_00.png) | $.PlantResourceGroups[2] | resource-group-name-candidate |
| [PLANTFIREPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantFirePeashooter_1200/ATLASES/PLANTFIREPEASHOOTER_1200_00.png) | $.PlantResourceGroups[4] | resource-group-name-candidate |
| [PLANTPOISONPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantPoisonPeashooter_1200/ATLASES/PLANTPOISONPEASHOOTER_1200_00.png) | $.PlantResourceGroups[6] | resource-group-name-candidate |
| [PLANTELECTRICPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantElectricPeashooter_1200/ATLASES/PLANTELECTRICPEASHOOTER_1200_00.png) | $.PlantResourceGroups[7] | resource-group-name-candidate |
| [PLANTGATLINGPEA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantGatlingPea_1200/ATLASES/PLANTGATLINGPEA_1200_00.png) | $.PlantResourceGroups[9] | resource-group-name-candidate |
| [PLANTICYCURRANT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantIcyCurrant_1200/ATLASES/PLANTICYCURRANT_1200_00.png) | $.PlantResourceGroups[10] | resource-group-name-candidate |
| [PLANTMEGAGATLING_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-02/PNG/plant1/PlantMegaGatling_1200/ATLASES/PLANTMEGAGATLING_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

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
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/PEA_ROCK_PROJECTILE/PEA_ROCK_PROJECTILE.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/PEA_ROCK_PROJECTILE_SPLIT/PEA_ROCK_PROJECTILE_SPLIT.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/SPLAT_ROCK_PEA/SPLAT_ROCK_PEA.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantPrimalPeashooter_Common/IMAGES/1200/PLANT2/PLANT/PRIMALPEASHOOTER/PRIMALPEASHOOTER.pam.json | $.PlantResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/FIREPEASHOOTER_FIRE/FIREPEASHOOTER_FIRE.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/FIREPEASHOOTER_LV5_PROJECTILE/FIREPEASHOOTER_LV5_PROJECTILE.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/EFFECTS/FIREPEASHOOTER_POWERRAGE/FIREPEASHOOTER_POWERRAGE.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantFirePeashooter_Common/IMAGES/1200/PLANT2/PLANT/FIREPEASHOOTER/FIREPEASHOOTER.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |

本页仅展示前 20 条；完整 53 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：3 条；外围配件原生类候选关联：2 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01ele","custom_01fire","custom_01goo","custom_01ice","custom_01pri","custom_01super","custom_01thr"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":[],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":[],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantPepperpult | PlantPepperpult | exact-resource-group-id |
| PlantPyreVine |  | unresolved-group-id |
| PlantPrimalPeashooter | PlantPrimalPeashooter | exact-resource-group-id |
| PlantPeashooter |  | unresolved-group-id |
| PlantFirePeashooter | PlantFirePeashooter | exact-resource-group-id |
| PlantSnowPea |  | unresolved-group-id |
| PlantPoisonPeashooter | PlantPoisonPeashooter | exact-resource-group-id |
| PlantElectricPeashooter | PlantElectricPeashooter | exact-resource-group-id |
| PlantLightningReed |  | unresolved-group-id |
| PlantGatlingPea | PlantGatlingPea | exact-resource-group-id |
| PlantIcyCurrant | PlantIcyCurrant | exact-resource-group-id |
| PlantMegagatlingAudio | PlantMegagatlingAudio | exact-resource-group-id |
| FreezonEffectGroup |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
