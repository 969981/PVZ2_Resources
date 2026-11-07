---
title: wiregelsemium 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# wiregelsemium

候选中文名：电击钩吻。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 341 | plant:9e7427cd41b4937875 | TypeName-string-candidate-matched | 5 | "POPANIM_PLANT_WIREGELSEMIUM" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(WireGelsemium_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(WireGelsemium_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(WireGelsemium_Skill_Level5@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage4"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"area","Value":"3BY3"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 150 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | WireGelsemiumDefault@PropertySheets | WireGelsemiumProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | WireGelsemiumDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | WireGelsemiumLightiningDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | WireGelsemium_Skill_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | WireGelsemium_Skill_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | WireGelsemium_Skill_Level5@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTWIREGELSEMIUM_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantWireGelsemium_1200/ATLASES/PLANTWIREGELSEMIUM_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |
| [PLANTBANANA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantBanana_1200/ATLASES/PLANTBANANA_1200_00.png) | $.PlantResourceGroups[4] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantWireGelsemium_Common/IMAGES/1200/PLANT2/EFFECTS/WIREGELSEMIUM_PROJECTILE/WIREGELSEMIUM_PROJECTILE.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWireGelsemium_Common/IMAGES/1200/PLANT2/PLANT/WIREGELSEMIUM/WIREGELSEMIUM.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantWireGelsemium_Common/IMAGES/1200/PLANT2/PLANT/WIREGELSEMIUM1/WIREGELSEMIUM1.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_EXPLOSION/BANANA_EXPLOSION.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_LV5_PROJECTILE/BANANA_LV5_PROJECTILE.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_PROJECTILE/BANANA_PROJECTILE.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_RETICLE/BANANA_RETICLE.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/PLANT/BANANA/BANANA.pam.json | $.PlantResourceGroups[4] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：5 条；外围配件原生类候选关联：4 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_qszb01a","custom_qszb02a","custom_qszb03a","custom_qszb04a","custom_qszb05a","custom_qszb06a","custom_qszb07a","custom_qszb08a","custom_qszb09a","custom_qszb10a","custom_qszb11a","custom_qszb12a","custom_q | explicit-PlantType.Avatar-array-membership |
| $.Avatars[4] | {"AvatarLayers":["custom_qszb01b","custom_qszb02b","custom_qszb03b","custom_qszb04b","custom_qszb05b","custom_qszb06b","custom_qszb07b","custom_qszb08b","custom_qszb09b","custom_qszb10b","custom_qszb11b","custom_qszb12b","custom_q | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| Effects_Artifact |  | unresolved-group-id |
| PlantWireGelsemium | PlantWireGelsemium | exact-resource-group-id |
| PlantWireGelsemiumAudio | PlantWireGelsemiumAudio | exact-resource-group-id |
| PlantBananaAudio | PlantBananaAudio | exact-resource-group-id |
| PlantBanana | PlantBanana | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
