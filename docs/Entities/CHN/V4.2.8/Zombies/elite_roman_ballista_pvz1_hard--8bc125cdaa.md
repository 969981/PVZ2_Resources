---
title: elite_roman_ballista_pvz1_hard 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# elite_roman_ballista_pvz1_hard

候选中文名：尚未可靠关联。原始配置条目：3。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_16_H.json | 38 | zombie:b4089a939f72f3b5fa | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_BALLISTA" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S34_16_H.json | 25 | zombie:9c87c728feecacac61 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_BALLISTA" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 521 | zombie:2e34331af333e4e5af | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_BALLISTA" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness4"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed2"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 30000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness4"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed2"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 3600 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness4"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed2"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 30000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieEliteRomanBallistaPVZ1Hard@PropertySheets | ZombieEliteRomanBallistaProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | RomanTossedVase@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-reference | S34EliteBallistaProps@CurrentLevel | ZombieEliteRomanBallistaProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S34_16_H.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | RomanTossedVase@ProjectileTypes |  |  | unresolved-static-skill-ref |
| property-reference | ZombieEliteRomanBallistaPVZ1Hard@PropertySheets | ZombieEliteRomanBallistaProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |
| property-nested-skill-or-projectile-RTID | RomanTossedVase@ProjectileTypes |  |  | unresolved-static-skill-ref |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEROMANBALLISTAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBallistaGroup_1200/ATLASES/ZOMBIEROMANBALLISTAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEROMANHEALERGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanHealerGroup_1200/ATLASES/ZOMBIEROMANHEALERGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEROMANBASICRESGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBasicResGroup_1200/ATLASES/ZOMBIEROMANBASICRESGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |
| [ZOMBIEROMANGARGANTUARGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanGargantuarGroup_1200/ATLASES/ZOMBIEROMANGARGANTUARGROUP_1200_00.png) | $.ResourceGroups[5] | resource-group-name-candidate |
| [ZOMBIEROMANIMPGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanImpGroup_1200/ATLASES/ZOMBIEROMANIMPGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |
| [ZOMBIEROMANBALLISTAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBallistaGroup_1200/ATLASES/ZOMBIEROMANBALLISTAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEROMANHEALERGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanHealerGroup_1200/ATLASES/ZOMBIEROMANHEALERGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEROMANBASICRESGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBasicResGroup_1200/ATLASES/ZOMBIEROMANBASICRESGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |
| [ZOMBIEROMANGARGANTUARGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanGargantuarGroup_1200/ATLASES/ZOMBIEROMANGARGANTUARGROUP_1200_00.png) | $.ResourceGroups[5] | resource-group-name-candidate |
| [ZOMBIEROMANIMPGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanImpGroup_1200/ATLASES/ZOMBIEROMANIMPGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |
| [ZOMBIEROMANBALLISTAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBallistaGroup_1200/ATLASES/ZOMBIEROMANBALLISTAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEROMANHEALERGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanHealerGroup_1200/ATLASES/ZOMBIEROMANHEALERGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEROMANBASICRESGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBasicResGroup_1200/ATLASES/ZOMBIEROMANBASICRESGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |
| [ZOMBIEROMANGARGANTUARGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanGargantuarGroup_1200/ATLASES/ZOMBIEROMANGARGANTUARGROUP_1200_00.png) | $.ResourceGroups[5] | resource-group-name-candidate |
| [ZOMBIEROMANIMPGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanImpGroup_1200/ATLASES/ZOMBIEROMANIMPGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieRomanBallistaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BALLISTA/ZOMBIE_ROMAN_BALLISTA.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanBallistaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BALLISTA_ELITE/ZOMBIE_ROMAN_BALLISTA_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_HEALER_BEAM/ZOMBIE_ROMAN_HEALER_BEAM.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_HEALER_EFFECT/ZOMBIE_ROMAN_HEALER_EFFECT.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_HEALER_STAFF/ZOMBIE_ROMAN_HEALER_STAFF.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_HEALER/ZOMBIE_ROMAN_HEALER.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_HEALER_ELITE/ZOMBIE_ROMAN_HEALER_ELITE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanBasicResGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BASIC/ZOMBIE_ROMAN_BASIC.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanGargantuarGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_GARGANTUAR/ZOMBIE_ROMAN_GARGANTUAR.pam.json | $.ResourceGroups[5] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanImpGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_IMP_NET_EFFECT/ZOMBIE_ROMAN_IMP_NET_EFFECT.pam.json | $.ResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanImpGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_IMP/ZOMBIE_ROMAN_IMP.pam.json | $.ResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanBallistaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BALLISTA/ZOMBIE_ROMAN_BALLISTA.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanBallistaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BALLISTA_ELITE/ZOMBIE_ROMAN_BALLISTA_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_HEALER_BEAM/ZOMBIE_ROMAN_HEALER_BEAM.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_HEALER_EFFECT/ZOMBIE_ROMAN_HEALER_EFFECT.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_HEALER_STAFF/ZOMBIE_ROMAN_HEALER_STAFF.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_HEALER/ZOMBIE_ROMAN_HEALER.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanHealerGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_HEALER_ELITE/ZOMBIE_ROMAN_HEALER_ELITE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanBasicResGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BASIC/ZOMBIE_ROMAN_BASIC.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanGargantuarGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_GARGANTUAR/ZOMBIE_ROMAN_GARGANTUAR.pam.json | $.ResourceGroups[5] | resource-group-name-candidate |

本页仅展示前 20 条；完整 33 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieRomanBallistaGroup | ZombieRomanBallistaGroup | exact-resource-group-id |
| VaseBreakerGroup | VaseBreakerGroup | exact-resource-group-id |
| ZombieWestChickenFarmerGroup |  | unresolved-group-id |
| ZombieRomanHealerGroup | ZombieRomanHealerGroup | exact-resource-group-id |
| ZombieRomanBasicResGroup | ZombieRomanBasicResGroup | exact-resource-group-id |
| ZombieRomanGargantuarGroup | ZombieRomanGargantuarGroup | exact-resource-group-id |
| ZombieRomanImpGroup | ZombieRomanImpGroup | exact-resource-group-id |
| ZombieGargantuarEffects |  | unresolved-group-id |
| ZombieRomanBallistaGroup | ZombieRomanBallistaGroup | exact-resource-group-id |
| VaseBreakerGroup | VaseBreakerGroup | exact-resource-group-id |
| ZombieWestChickenFarmerGroup |  | unresolved-group-id |
| ZombieRomanHealerGroup | ZombieRomanHealerGroup | exact-resource-group-id |
| ZombieRomanBasicResGroup | ZombieRomanBasicResGroup | exact-resource-group-id |
| ZombieRomanGargantuarGroup | ZombieRomanGargantuarGroup | exact-resource-group-id |
| ZombieRomanImpGroup | ZombieRomanImpGroup | exact-resource-group-id |
| ZombieGargantuarEffects |  | unresolved-group-id |
| ZombieRomanBallistaGroup | ZombieRomanBallistaGroup | exact-resource-group-id |
| VaseBreakerGroup | VaseBreakerGroup | exact-resource-group-id |
| ZombieWestChickenFarmerGroup |  | unresolved-group-id |
| ZombieRomanHealerGroup | ZombieRomanHealerGroup | exact-resource-group-id |

本页仅展示前 20 条；完整 24 条请查看 SQLite/CSV。

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
