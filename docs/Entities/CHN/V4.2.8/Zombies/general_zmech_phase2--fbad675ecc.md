---
title: general_zmech_phase2 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# general_zmech_phase2

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 924 | zombie:6c3f0f3a7ee5903942 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_MECH_ZMECH" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness5"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed0"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 12500 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.5 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieGeneralZmechPhase2@PropertySheets | ZombieGeneralZmechProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEZMECHGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieZmechGroup_1200/ATLASES/ZOMBIEZMECHGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEFUTUREZOMBOSSEFFECTSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieFutureZombossEffectsGroup_1200/ATLASES/ZOMBIEFUTUREZOMBOSSEFFECTSGROUP_1200_00.p | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIEDARKZOMBOSSEFFECTSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkZombossEffectsGroup_1200/ATLASES/ZOMBIEDARKZOMBOSSEFFECTSGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEFUTUREIMPGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieFutureImpGroup_1200/ATLASES/ZOMBIEFUTUREIMPGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |
| [ZOMBIEFUTUREJETPACKGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieFutureJetpackGroup_1200/ATLASES/ZOMBIEFUTUREJETPACKGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |
| [ZOMBIEFUTUREJETPACKVETERANGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieFutureJetpackVeteranGroup_1200/ATLASES/ZOMBIEFUTUREJETPACKVETERANGROUP_1200_00.p | $.ResourceGroups[7] | resource-group-name-candidate |
| [ZOMBIEFUTUREMECHDISCOGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieFutureMechDiscoGroup_1200/ATLASES/ZOMBIEFUTUREMECHDISCOGROUP_1200_00.png) | $.ResourceGroups[8] | resource-group-name-candidate |
| [ZOMBIEZMECHTELEPORTGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieZmechTeleportGroup_1200/ATLASES/ZOMBIEZMECHTELEPORTGROUP_1200_00.png) | $.ResourceGroups[9] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieZmechGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MECH_ZMECH/ZOMBIE_MECH_ZMECH.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieFutureZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_MISSILE_EXPLOSION_FUTURE/ZOMBOSS_MISSILE_EXPLOSION_FUTURE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH/SCORCHED_EARTH.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH_EDGE/SCORCHED_EARTH_EDGE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH_TILE/SCORCHED_EARTH_TILE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH_TILE1/SCORCHED_EARTH_TILE1.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_DARK_FIREBALL/ZOMBOSS_DARK_FIREBALL.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieFutureImpGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/GARGANTUAR_IMP/GARGANTUAR_IMP.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieFutureJetpackGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_FUTURE_JETPACK_BASIC/ZOMBIE_FUTURE_JETPACK_BASIC.pam.json | $.ResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieFutureJetpackVeteranGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_FUTURE_JETPACK_VETERAN/ZOMBIE_FUTURE_JETPACK_VETERAN.pam.json | $.ResourceGroups[7] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieFutureMechDiscoGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_FUTURE_JETPACK/ZOMBIE_FUTURE_JETPACK.pam.json | $.ResourceGroups[8] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieFutureMechDiscoGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_MECH_DISCO/ZOMBIE_MECH_DISCO.pam.json | $.ResourceGroups[8] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZmechTeleportGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZMECH_PORT_FX/ZMECH_PORT_FX.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieZmechGroup | ZombieZmechGroup | exact-resource-group-id |
| ZombieFutureZombossEffectsGroup | ZombieFutureZombossEffectsGroup | exact-resource-group-id |
| ZombossCommonGroup |  | unresolved-group-id |
| ZombieDarkZombossEffectsGroup | ZombieDarkZombossEffectsGroup | exact-resource-group-id |
| ZombieFutureImpGroup | ZombieFutureImpGroup | exact-resource-group-id |
| ZombieLostCityZombossGroup |  | unresolved-group-id |
| ZombieFutureJetpackGroup | ZombieFutureJetpackGroup | exact-resource-group-id |
| ZombieFutureJetpackVeteranGroup | ZombieFutureJetpackVeteranGroup | exact-resource-group-id |
| ZombieFutureMechDiscoGroup | ZombieFutureMechDiscoGroup | exact-resource-group-id |
| ZombieZmechTeleportGroup | ZombieZmechTeleportGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
