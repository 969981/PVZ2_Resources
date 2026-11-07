---
title: mulberry 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# mulberry

候选中文名：桑葚爆破手。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 206 | plant:7a1322cfd876925025 | TypeName-string-candidate-matched | 5 | "POPANIM_PLANT_MULBERRY" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Mulberry_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Mulberry_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(Mulberry_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 5 | {"AdvancedSkillType":"RTID(plant_wakeup_level2@SkillTypes)","AttackLevel":1,"HitPointsLevel":1,"PropertySkillType":"RTID(SunflowerLevel5Avatar@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"area","Value":"square"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"lobbed"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 150 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 20 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | MulberryDefault@PropertySheets | MulberryProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | MulberryDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | MulberryAdvancedDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | GiantPlasmaGrenade@ProjectileTypes | MulberryPlasmaGrenadeProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | GiantFlashGrenade@ProjectileTypes | MulberryFlashGrenadeProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | GiantGasGrenade@ProjectileTypes | MulberryGasGrenadeProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | MulberryPlantfoodDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | MulberryAvatarDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Mulberry_Skill_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Mulberry_Skill_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Mulberry_SuperSkill@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | SunflowerLevel5Avatar@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTMULBERRY_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantMulberry_1200/ATLASES/PLANTMULBERRY_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_ADV_PROJECTILE/MULBERRY_ADV_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_ADV_PROJECTILE1/MULBERRY_ADV_PROJECTILE1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_ALL_HIT/MULBERRY_ALL_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_ALL_HIT1/MULBERRY_ALL_HIT1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_AVATAR_PROJECTILE/MULBERRY_AVATAR_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_AVATAR_PROJECTILE1/MULBERRY_AVATAR_PROJECTILE1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_FLASH/MULBERRY_FLASH.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_FLASH1/MULBERRY_FLASH1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_GAS/MULBERRY_GAS.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_GAS1/MULBERRY_GAS1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_PLASMA/MULBERRY_PLASMA.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_PLASMA1/MULBERRY_PLASMA1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_PLASMA_SHOCK/MULBERRY_PLASMA_SHOCK.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_PROJECTILE/MULBERRY_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/EFFECTS/MULBERRY_PROJECTILE1/MULBERRY_PROJECTILE1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/PLANT/MULBERRY/MULBERRY.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantMulberry_Common/IMAGES/1200/PLANT3/PLANT/MULBERRY1/MULBERRY1.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：5 条；外围配件原生类候选关联：6 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_03"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[3] | {"AvatarLayers":["custom_04a","custom_04b","custom_04g"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[4] | {"AvatarLayers":[],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantMulberry | PlantMulberry | exact-resource-group-id |
| PlantMulberryAudio | PlantMulberryAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
