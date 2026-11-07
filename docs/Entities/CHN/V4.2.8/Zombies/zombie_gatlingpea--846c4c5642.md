---
title: zombie_gatlingpea 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# zombie_gatlingpea

候选中文名：尚未可靠关联。原始配置条目：9。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_1.json | 25 | zombie:12f7522ec9f54a1a85 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_IZOMBIE_GATLINGPEA" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_1.json | 26 | zombie:7d3c9cb0f20633ed37 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_IZOMBIE_WALLNUT" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_2.json | 45 | zombie:8e3a3bf74c230be4f9 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_IZOMBIE_GATLINGPEA" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_2.json | 46 | zombie:bc894f57fbeea59564 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_IZOMBIE_WALLNUT" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_2.json | 47 | zombie:9e210ac4222001f696 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_IZOMBIE_FARMER" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_2.json | 48 | zombie:4cf38895b2628dab71 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_IZOMBIE_TUTORIAL_GARGANTUAR" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_2.json | 49 | zombie:77181487a5c4194b32 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_IZOMBIE_LOSTCITY_DOCTOR" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_61_N.json | 30 | zombie:f298f4a9a970398990 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_GATLINGPEA" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 566 | zombie:0c1e8afefd11f20c63 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_GATLINGPEA" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness1"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed1"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 300 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.1 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 120 | source-exact-property-alias-no-runtime-formula |
| AttackDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness1"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed2"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 4000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.15 | source-exact-property-alias-no-runtime-formula |

本页仅展示前 20 条；完整 85 条请查看 SQLite/CSV。

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieIZombieGatlingPeaDefault@PropertySheets | ZombieShooterProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | ZombieGatlingPeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-reference | ZombieIZombieWallnutDefault@PropertySheets | ZombieWallnutProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-reference | ZombieIZombieGatlingPeaDefault@PropertySheets | ZombieShooterProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | ZombieGatlingPeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-reference | ZombieIZombieWallnutDefault@PropertySheets | ZombieWallnutProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-reference | ZombieIZombieChickenFarmerDefault@CurrentLevel | ZombieChickenFarmerProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_2.json | exact-source-property-alias |
| property-reference | ZombieIZombieTutorialGargantuar@PropertySheets | ZombieGargantuarProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | ambiguous-alias |
| property-reference | ZombieIZombieTutorialGargantuar@PropertySheets | ZombieGargantuarProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | ambiguous-alias |
| property-reference | ZombieIZombiePVPNurse@PropertySheets | ZombiePVPNurseProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | PVPNurseDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-reference | ZombieGatlingPeaDefault@CurrentLevel | ZombieShooterProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_61_N.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | ZombieGatlingPeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |
| property-reference | ZombieGatlingPeaDefault@PropertySheets | ZombieShooterProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | ZombieGatlingPeaDefault@ProjectileTypes | ProjectilePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROJECTILETYPES.json | exact-static-ability-or-projectile-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEPVPNURSEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombiePVPNurseGroup_1200/ATLASES/ZOMBIEPVPNURSEGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEPVPSKILLRAGEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombiePVPSkillRageGroup_1200/ATLASES/ZOMBIEPVPSKILLRAGEGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIEPVPSKILLAIDGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombiePVPSkillAidGroup_1200/ATLASES/ZOMBIEPVPSKILLAIDGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIEGATLINGPEAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieGatlingPeaGroup_1200/ATLASES/ZOMBIEGATLINGPEAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEGATLINGPEAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieGatlingPeaGroup_1200/ATLASES/ZOMBIEGATLINGPEAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie2/ZombiePVPNurseGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/NURSE_SYRINGE_HIT/NURSE_SYRINGE_HIT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombiePVPNurseGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/NURSE_ZOMBIE_EFFECT/NURSE_ZOMBIE_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombiePVPNurseGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_PVPSKILL_NURSE/ZOMBIE_PVPSKILL_NURSE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombiePVPSkillRageGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_PVPSKILL_RAGE/ZOMBIE_PVPSKILL_RAGE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombiePVPSkillRageGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_PVPSKILL_RAGE/ZOMBIE_PVPSKILL_RAGE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombiePVPSkillAidGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_PVPSKILL_AID/ZOMBIE_PVPSKILL_AID.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieGatlingPeaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_GATLINGPEA/ZOMBIE_GATLINGPEA.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieGatlingPeaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_GATLINGPEA/ZOMBIE_GATLINGPEA.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieIZombieGroup |  | unresolved-group-id |
| ZombieIZombieGroup |  | unresolved-group-id |
| ZombieIZombieGroup |  | unresolved-group-id |
| ZombieIZombieGroup |  | unresolved-group-id |
| ZombieWestChickenFarmerGroup |  | unresolved-group-id |
| ZombieIZombieGroup |  | unresolved-group-id |
| ZombieTutorialGargantuarGroup |  | unresolved-group-id |
| ZombieTutorialImpGroup |  | unresolved-group-id |
| ZombieGargantuarEffects |  | unresolved-group-id |
| ZombieIZombieGroup |  | unresolved-group-id |
| ZombiePVPNurseGroup | ZombiePVPNurseGroup | exact-resource-group-id |
| ZombiePVPSkillRageGroup | ZombiePVPSkillRageGroup | exact-resource-group-id |
| ZombiePVPSkillAidGroup | ZombiePVPSkillAidGroup | exact-resource-group-id |
| ZombieIZombieGroup |  | unresolved-group-id |
| ZombieGatlingPeaGroup | ZombieGatlingPeaGroup | exact-resource-group-id |
| ZombieGatlingPeaGroup | ZombieGatlingPeaGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
