---
title: lostcity_jane 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# lostcity_jane

候选中文名：尚未可靠关联。原始配置条目：2。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_20_N.json | 61 | zombie:72d831cda262219ee5 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_LOSTCITY_JANE" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 332 | zombie:1a8c0c30a554e563c9 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_LOSTCITY_JANE" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 5 | {"AttackLevel":6,"HitPointsLevel":6} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 6 | {"AttackLevel":7,"HitPointsLevel":7} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 7 | {"AttackLevel":8,"HitPointsLevel":8} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness3"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed3"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 122.5 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.5 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 200 | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 5 | {"AttackLevel":6,"HitPointsLevel":6} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 6 | {"AttackLevel":7,"HitPointsLevel":7} | source-exact-property-alias-no-runtime-formula |

本页仅展示前 20 条；完整 26 条请查看 SQLite/CSV。

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieLostCityJaneDefault@CurrentLevel | ZombieLostCityJaneProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_20_N.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | StickybombRiceDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | CypripediumDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | CypripediumThickDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | CypripediumLv5@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | CabbageDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | MegaCabbageDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | StarCabbageDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | KernelDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | ButterDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | ButterRocket@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | ButterFire@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | MelonDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | MegaMelonDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | WinterMelonDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | WinterMegaMelonDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | PepperpultDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | PepperpultPlantfoodDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | AkeeDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-nested-skill-or-projectile-RTID | MegaAkeeDefault@ProjectileTypes |  |  | unresolved-static-skill-ref |

本页仅展示前 20 条；完整 145 条请查看 SQLite/CSV。

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIELOSTCITYJANEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie1/ZombieLostCityJaneGroup_1200/ATLASES/ZOMBIELOSTCITYJANEGROUP_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |
| [ZOMBIELOSTCITYJANEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie1/ZombieLostCityJaneGroup_1200/ATLASES/ZOMBIELOSTCITYJANEGROUP_1200_00.png) | $.TypeName | filename-exact-normalized-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_LOSTCITY_JANE_ASH/ZOMBIE_LOSTCITY_JANE_ASH.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_LOSTCITY_JANE_SHOCK/ZOMBIE_LOSTCITY_JANE_SHOCK.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/ZOMBIE_LOSTCITY_JANE/ZOMBIE_LOSTCITY_JANE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/ZOMBIE_LOSTCITY_JANE_UNIVERSE_UNCHARTED/ZOMBIE_LOSTCITY_JANE_UNIVERSE_UNCHARTED.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_LOSTCITY_JANE_ASH/ZOMBIE_LOSTCITY_JANE_ASH.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/EFFECTS/ZOMBIE_LOSTCITY_JANE_SHOCK/ZOMBIE_LOSTCITY_JANE_SHOCK.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/ZOMBIE_LOSTCITY_JANE/ZOMBIE_LOSTCITY_JANE.pam.json | $.TypeName | filename-exact-normalized-candidate |
| PAM_JSON/zombie1/ZombieLostCityJaneGroup_Common/IMAGES/1200/ZOMBIE1/ZOMBIE/ZOMBIE_LOSTCITY_JANE_UNIVERSE_UNCHARTED/ZOMBIE_LOSTCITY_JANE_UNIVERSE_UNCHARTED.pam.json | $.TypeName | filename-exact-normalized-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieLostCityJaneGroup |  | unresolved-group-id |
| ZombieLostCityJaneGroup |  | unresolved-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
