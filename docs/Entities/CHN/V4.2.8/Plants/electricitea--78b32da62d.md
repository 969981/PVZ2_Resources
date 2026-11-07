---
title: electricitea 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# electricitea

候选中文名：电力绿茶。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 207 | plant:1b0650c10d7f7711b4 | TypeName-string-candidate-matched | 1 | "POPANIM_PLANT_ELECTRICITEA" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 1 | {"AdvancedSkillType":"RTID(Electricitea_Skill_Level1@SkillTypes)","AttackLevel":1.5,"HitPointsLevel":1.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level1@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 2 | {"AdvancedSkillType":"RTID(Electricitea_Skill_Level2@SkillTypes)","AttackLevel":2,"HitPointsLevel":2,"PropertySkillType":"RTID(Plant_PropertyUp_Level2@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 3 | {"AdvancedSkillType":"RTID(plant_wakeup_level1@SkillTypes)","AttackLevel":2.5,"HitPointsLevel":2.5,"PropertySkillType":"RTID(Plant_PropertyUp_Level3@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 4 | {"AdvancedSkillType":"RTID(Electricitea_SuperSkill@SkillTypes)","AttackLevel":3,"HitPointsLevel":3,"PropertySkillType":"RTID(Plant_PropertyUp_Level4@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantLevelStats | 5 | {"AdvancedSkillType":"RTID(plant_wakeup_level2@SkillTypes)","AttackLevel":1,"HitPointsLevel":1,"PropertySkillType":"RTID(SunflowerLevel5Avatar@SkillTypes)"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage2"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"range","Value":"3by3"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge4"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 5 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 150.0 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 125 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 15.0 | source-exact-property-alias-no-runtime-formula |
| PowerCost | 0 | 7 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ElectriciteaDefault@PropertySheets | ElectriciteaProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Electricitea_Skill_Level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Electricitea_Skill_Level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level3@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level1@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Plant_PropertyUp_Level4@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | Electricitea_SuperSkill@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | SunflowerLevel5Avatar@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |
| property-nested-skill-or-projectile-RTID | plant_wakeup_level2@SkillTypes | SkillPropertySheet | 04_JSON/dynamic/Packages/PACKAGES/SKILLTYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTELECTRICITEA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantElectricitea_1200/ATLASES/PLANTELECTRICITEA_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTELECTRICPEASHOOTER_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-04/PNG/plant3/PlantElectricPeashooter_1200/ATLASES/PLANTELECTRICPEASHOOTER_1200_00.png) | $.PlantResourceGroups[1] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_ATTACK_BOTTOM_EFFECTS/ELECTRICI_TEA_ATTACK_BOTTOM_EFFECTS.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_ATTACK_TOP_EFFECTS/ELECTRICI_TEA_ATTACK_TOP_EFFECTS.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_AVATAR_EFFECTS/ELECTRICI_TEA_AVATAR_EFFECTS.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_BOLT/ELECTRICI_TEA_BOLT.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_CLOUD/ELECTRICI_TEA_CLOUD.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_CLOUD_ATTACK/ELECTRICI_TEA_CLOUD_ATTACK.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_SUPER_BOTTOM_EFFECTS/ELECTRICI_TEA_SUPER_BOTTOM_EFFECTS.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICI_TEA_SUPER_TOP_EFFECTS/ELECTRICI_TEA_SUPER_TOP_EFFECTS.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricitea_Common/IMAGES/1200/PLANT3/PLANT/ELECTRICITEA/ELECTRICITEA.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICBALL/ELECTRICBALL.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICBALL_HIT/ELECTRICBALL_HIT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRICSTORM/ELECTRICSTORM.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRIC_LIGHTNINGREED_HIT/ELECTRIC_LIGHTNINGREED_HIT.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRIC_PEASHOOTER_ELECTROBALL/ELECTRIC_PEASHOOTER_ELECTROBALL.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRIC_PEASHOOTER_ELECTROBALL99/ELECTRIC_PEASHOOTER_ELECTROBALL99.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/ELECTRIC_PEASHOOTER_ELECTROBALL_EFFECTS/ELECTRIC_PEASHOOTER_ELECTROBALL_EFFECTS.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/EFFECTS/T_PEA_PROJECTILE/T_PEA_PROJECTILE.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/plant3/PlantElectricPeashooter_Common/IMAGES/1200/PLANT3/PLANT/ELECTRICPEASHOOTER/ELECTRICPEASHOOTER.pam.json | $.PlantResourceGroups[1] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：1 条；外围配件原生类候选关联：2 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal"} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantElectricitea | PlantElectricitea | exact-resource-group-id |
| PlantElectricPeashooter | PlantElectricPeashooter | exact-resource-group-id |
| PlantLightningReed |  | unresolved-group-id |
| PlantElectriciteaAudio | PlantElectriciteaAudio | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 207 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 207 | 1 | 1.5 | 1.5 | RTID(Electricitea_Skill_Level1@SkillTypes) | [ELECTRICITEA_SKILL_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level1@SkillTypes) | exact-static-SkillTypes-alias |
| 207 | 2 | 2 | 2 | RTID(Electricitea_Skill_Level2@SkillTypes) | [ELECTRICITEA_SKILL_LEVEL2] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level2@SkillTypes) | exact-static-SkillTypes-alias |
| 207 | 3 | 2.5 | 2.5 | RTID(plant_wakeup_level1@SkillTypes) | [PLANT_WAKEUP_LEVEL1] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level3@SkillTypes) | exact-static-SkillTypes-alias |
| 207 | 4 | 3 | 3 | RTID(Electricitea_SuperSkill@SkillTypes) | [ELECTRICITEA_SKILL_LEVEL5] | exact-static-SkillTypes-alias | RTID(Plant_PropertyUp_Level4@SkillTypes) | exact-static-SkillTypes-alias |
| 207 | 5 | 1 | 1 | RTID(plant_wakeup_level2@SkillTypes) | [PLANT_WAKEUP_LEVEL2] | exact-static-SkillTypes-alias | RTID(SunflowerLevel5Avatar@SkillTypes) | exact-static-SkillTypes-alias |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |
| 0 | normal | ["custom_01"] | source-PlantType-avatar-array-not-runtime-equipped |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |
| CollectablePlantPieceType | 04_JSON/dynamic/Packages/PACKAGES/COLLECTABLETYPES.json | 542 | PlantName | typed-field-exact-name-candidate |
| CollectableAvatarPieceType | 04_JSON/dynamic/Packages/PACKAGES/COLLECTABLETYPES.json | 669 | PlantName | typed-field-exact-name-candidate |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 2 | 18 | 3 | 1 | 0 | 2 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
