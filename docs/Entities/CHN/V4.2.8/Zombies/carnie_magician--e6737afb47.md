---
title: carnie_magician 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# carnie_magician

候选中文名：尚未可靠关联。原始配置条目：2。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S29_24_N.json | 29 | zombie:cb2c57a12fc1f45a0e | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ENDLESSWEALTH" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 689 | zombie:cfcb91cbef1f740eba | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_MAGICIAN" |

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
| Hitpoints | 0 | 18000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.2 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 500 | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness5"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed0"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 555 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieWealthGodDefault@CurrentLevel | ZombieCarnieMagicianProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S29_24_N.json | exact-source-property-alias |
| property-reference | ZombieCarnieMagician@PropertySheets | ZombieCarnieMagicianProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIECARNIEDOVEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCarnieDoveGroup_1200/ATLASES/ZOMBIECARNIEDOVEGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIECARNIEMAGICIANGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCarnieMagicianGroup_1200/ATLASES/ZOMBIECARNIEMAGICIANGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIEZMECHTELEPORTGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieZmechTeleportGroup_1200/ATLASES/ZOMBIEZMECHTELEPORTGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEMONEYTREEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieMoneyTreeGroup_1200/ATLASES/ZOMBIEMONEYTREEGROUP_1200_00.png) | $.ResourceGroups[5] | resource-group-name-candidate |
| [ZOMBIEDARKWIZARDGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkWizardGroup_1200/ATLASES/ZOMBIEDARKWIZARDGROUP_1200_00.png) | $.ResourceGroups[9] | resource-group-name-candidate |
| [ZOMBIECARNIEDOVEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCarnieDoveGroup_1200/ATLASES/ZOMBIECARNIEDOVEGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIECARNIEMAGICIANGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCarnieMagicianGroup_1200/ATLASES/ZOMBIECARNIEMAGICIANGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIEZMECHTELEPORTGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieZmechTeleportGroup_1200/ATLASES/ZOMBIEZMECHTELEPORTGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieCarnieDoveGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN_DOVE/ZOMBIE_MAGICIAN_DOVE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieMagicianGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN/ZOMBIE_MAGICIAN.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieMagicianGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN_HAT/ZOMBIE_MAGICIAN_HAT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZmechTeleportGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZMECH_PORT_FX/ZMECH_PORT_FX.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMoneyTreeGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MONEYTREE_MONEY/ZOMBIE_MONEYTREE_MONEY.pam.json | $.ResourceGroups[5] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMoneyTreeGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MONEYTREE/ZOMBIE_MONEYTREE.pam.json | $.ResourceGroups[5] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkWizardGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/DARK_WIZARD_LIGHTNINGBOLT/DARK_WIZARD_LIGHTNINGBOLT.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkWizardGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/DARK_WIZARD_SHEEPENING/DARK_WIZARD_SHEEPENING.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkWizardGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/DARK_WIZARD_SILENTHOLE/DARK_WIZARD_SILENTHOLE.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkWizardGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/DARK_WIZARD_WAVE/DARK_WIZARD_WAVE.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkWizardGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_DARK_WIZARD_PROJECTILE_HIT/ZOMBIE_DARK_WIZARD_PROJECTILE_HIT.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkWizardGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_WIZARD/ZOMBIE_DARK_WIZARD.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkWizardGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_WIZARD_ELITE/ZOMBIE_DARK_WIZARD_ELITE.pam.json | $.ResourceGroups[9] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieDoveGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN_DOVE/ZOMBIE_MAGICIAN_DOVE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieMagicianGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN/ZOMBIE_MAGICIAN.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieMagicianGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN_HAT/ZOMBIE_MAGICIAN_HAT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZmechTeleportGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZMECH_PORT_FX/ZMECH_PORT_FX.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieCarnieDoveGroup | ZombieCarnieDoveGroup | exact-resource-group-id |
| ZombieWestChickenFarmerGroup |  | unresolved-group-id |
| ZombieCarnieMagicianGroup | ZombieCarnieMagicianGroup | exact-resource-group-id |
| ZombieZmechTeleportGroup | ZombieZmechTeleportGroup | exact-resource-group-id |
| ZombieEndlessWealthGroup |  | unresolved-group-id |
| ZombieMoneyTreeGroup | ZombieMoneyTreeGroup | exact-resource-group-id |
| Modern_Gravestone | Modern_Gravestone | exact-resource-group-id |
| ZombieWealthGodGroup |  | unresolved-group-id |
| PlantThymeWarp |  | unresolved-group-id |
| ZombieDarkWizardGroup | ZombieDarkWizardGroup | exact-resource-group-id |
| ZombieCarnieDoveGroup | ZombieCarnieDoveGroup | exact-resource-group-id |
| ZombieWestChickenFarmerGroup |  | unresolved-group-id |
| ZombieCarnieMagicianGroup | ZombieCarnieMagicianGroup | exact-resource-group-id |
| ZombieZmechTeleportGroup | ZombieZmechTeleportGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
