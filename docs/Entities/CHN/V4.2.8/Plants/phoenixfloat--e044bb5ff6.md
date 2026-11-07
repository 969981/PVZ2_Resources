---
title: phoenixfloat 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# phoenixfloat

候选中文名：凤凰木花车。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 172 | plant:7d5f93cdde01891903 | TypeName-string-candidate-matched | 1 | "POPANIM_PLANT_PHOENIXFLOAT" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(PhoenixFloat_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(PhoenixFloat_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(PhoenixFloat_Skill_Level5@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"recharge","Value":"recharge3"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 200 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | PhoenixFloatDefault@PropertySheets | PlantPhoenixFloatProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | PhoenixFloat_Skill_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | PhoenixFloat_Skill_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |
| property-nested-skill-or-projectile-RTID | PhoenixFloat_Skill_Level5@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-skill-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTAQUAWEED_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantAquaWeed_1200/ATLASES/PLANTAQUAWEED_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTHATMUSHROOM_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantHatMushroom_1200/ATLASES/PLANTHATMUSHROOM_1200_00.png) | $.PlantResourceGroups[3] | resource-group-name-candidate |
| [PLANTHYDROCOTYLEDRUMMER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantHydrocotyledrummer_1200/ATLASES/PLANTHYDROCOTYLEDRUMMER_1200_00.png) | $.PlantResourceGroups[5] | resource-group-name-candidate |
| [PLANTPHOENIXFLOAT_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantPhoenixFloat_1200/ATLASES/PLANTPHOENIXFLOAT_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/NORMAL_SHARK/NORMAL_SHARK.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/NORMAL_SHARK_PLANTFOOD/NORMAL_SHARK_PLANTFOOD.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/REDWATER_SHARK/REDWATER_SHARK.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/RED_SHARK/RED_SHARK.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/WATER_SHARK/WATER_SHARK.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/EFFECTS/SHARK/WATER_SHARK_PLANTFOOD/WATER_SHARK_PLANTFOOD.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantAquaWeed_Common/IMAGES/1200/PLANT3/PLANT/AQUAWEED/AQUAWEED.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_1/HATMUSHROOM_BULLET_1.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_2/HATMUSHROOM_BULLET_2.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_3/HATMUSHROOM_BULLET_3.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_BULLET_4/HATMUSHROOM_BULLET_4.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_FLOOR_EFFECT/HATMUSHROOM_FLOOR_EFFECT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_HIT/HATMUSHROOM_HIT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_TRANSPORT_EFFECT/HATMUSHROOM_TRANSPORT_EFFECT.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_TRANSPORT_NORMAL/HATMUSHROOM_TRANSPORT_NORMAL.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/EFFECTS/HATMUSHROOM_TRANSPORT_SPECIAL/HATMUSHROOM_TRANSPORT_SPECIAL.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHatMushroom_Common/IMAGES/1200/PLANT2/PLANT/HATMUSHROOM/HATMUSHROOM.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantHydrocotyledrummer_Common/IMAGES/1200/PLANT3/EFFECTS/HYDROCOTYLEDRUMMER_EFFECT/HYDROCOTYLEDRUMMER_EFFECT.pam.json | $.PlantResourceGroups[5] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantHydrocotyledrummer_Common/IMAGES/1200/PLANT3/PLANT/HYDROCOTYLEDRUMMER/HYDROCOTYLEDRUMMER.pam.json | $.PlantResourceGroups[5] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantPhoenixFloat_Common/IMAGES/1200/PLANT3/EFFECTS/PHOENIXFLOAT_ATTACK_HIT/PHOENIXFLOAT_ATTACK_HIT.pam.json | $.TypeName | filename-exact-normalized-candidate |

本页仅展示前 20 条；完整 30 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantHeavenDatura |  | unresolved-group-id |
| PlantAquaWeed | PlantAquaWeed | exact-resource-group-id |
| PlantMorningGlory |  | unresolved-group-id |
| PlantHatMushroom | PlantHatMushroom | exact-resource-group-id |
| PlantBirthSunflower |  | unresolved-group-id |
| PlantHydrocotyledrummer | PlantHydrocotyledrummer | exact-resource-group-id |
| PlantPhoenixFloatAudio | PlantPhoenixFloatAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
