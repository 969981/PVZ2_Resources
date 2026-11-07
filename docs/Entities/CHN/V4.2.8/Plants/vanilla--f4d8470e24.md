---
title: vanilla 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# vanilla

候选中文名：吹风荚兰。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 242 | plant:8764a3e3fff18d4cf4 | TypeName-string-candidate-matched | 2 | "POPANIM_PLANT_VANILLA" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Vanilla_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Vanilla_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(Vanilla_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"area","Value":"fullboard"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"recharge","Value":"recharge2"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300.0 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 75 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 20.0 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 6 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | vanillaDefault@PropertySheets | VanillaProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | VanillaTornadoProjectile@ProjectileTypes | VanillaTornadoProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | VanillaSkillProjectile@ProjectileTypes | VanillaProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | VanillaTornadoProjectile@ProjectileTypes | VanillaTornadoProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | VanillaPlantFoodProjectile@ProjectileTypes | VanillaPlantFoodProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | VanillaAvatarPlantFoodProjectile@ProjectileTypes | VanillaPlantFoodProjectileProps | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Vanilla_Skill_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Vanilla_Skill_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Vanilla_SuperSkill@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTVANILLA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantVanilla_1200/ATLASES/PLANTVANILLA_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTHURRIKALE_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantHurrikale_1200/ATLASES/PLANTHURRIKALE_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/EFFECTS/VANILLA_AVATARPLANTPROJECTILE/VANILLA_AVATARPLANTPROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/EFFECTS/VANILLA_FOODPLANTPROJECTILE/VANILLA_FOODPLANTPROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/EFFECTS/VANILLA_NORMALPROJECTILE/VANILLA_NORMALPROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/EFFECTS/VANILLA_NORMALPROJECTILE_HIT/VANILLA_NORMALPROJECTILE_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/EFFECTS/VANILLA_SKILLPROJECTILE/VANILLA_SKILLPROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/EFFECTS/VANILLA_SKILLPROJECTILE_HIT/VANILLA_SKILLPROJECTILE_HIT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/EFFECTS/VANILLA_TROPROJECTILE/VANILLA_TROPROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantVanilla_Common/IMAGES/1200/PLANT3/PLANT/VANILLA/VANILLA.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHurrikale_Common/IMAGES/1200/PLANT2/EFFECTS/HURRIKALE_BACK_EFFECT/HURRIKALE_BACK_EFFECT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHurrikale_Common/IMAGES/1200/PLANT2/EFFECTS/HURRIKALE_EFFECT/HURRIKALE_EFFECT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantHurrikale_Common/IMAGES/1200/PLANT2/PLANT/HURRIKALE/HURRIKALE.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：2 条；外围配件原生类候选关联：3 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantVanilla | PlantVanilla | exact-resource-group-id |
| PlantHurrikale | PlantHurrikale | exact-resource-group-id |
| FreezonEffectGroup |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
