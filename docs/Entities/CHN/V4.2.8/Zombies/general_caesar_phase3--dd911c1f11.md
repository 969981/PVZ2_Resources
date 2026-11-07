---
title: general_caesar_phase3 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# general_caesar_phase3

候选中文名：尚未可靠关联。原始配置条目：7。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S31_16_H.json | 33 | zombie:a8943b88953ef8097c | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_SKYCITY_ELECTRIC_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S31_16_N.json | 36 | zombie:dec17da9b0f22df263 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_GENERAL_CAESAR" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S31_4_N.json | 32 | zombie:c82ebf88c616933f9b | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_GENERAL_CAESAR" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S32_62_N.json | 26 | zombie:d602809fb353ac906d | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_GENERAL_CAESAR" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S32_8_H.json | 38 | zombie:52e672110d008c7d24 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_GENERAL_CAESAR" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S33_4_H.json | 46 | zombie:ae17fe1e1304e03b06 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_SKYCITY_ELECTRIC_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 582 | zombie:1404840c596ce00f16 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_GENERAL_CAESAR" |

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
| Hitpoints | 0 | 24000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 2 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness5"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed0"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 20000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.5 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |

本页仅展示前 20 条；完整 70 条请查看 SQLite/CSV。

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieEliteSkycityElectricDefault@CurrentLevel | ZombieGeneralCaesarProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S31_16_H.json | exact-source-property-alias |
| property-reference | ZombieGeneralCaesarElite@CurrentLevel | ZombieGeneralCaesarProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S31_16_N.json | exact-source-property-alias |
| property-reference | ZombieGeneralCaesarPhase3@CurrentLevel | ZombieGeneralCaesarProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S31_4_N.json | exact-source-property-alias |
| property-reference | ZombieGeneralCaesarElite@CurrentLevel | ZombieGeneralCaesarProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S32_62_N.json | exact-source-property-alias |
| property-reference | ZombieGeneralCaesarElite@CurrentLevel | ZombieGeneralCaesarProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S32_8_H.json | exact-source-property-alias |
| property-reference | ZombieEliteSkycityElectricDefault@CurrentLevel | ZombieGeneralCaesarProps | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S33_4_H.json | exact-source-property-alias |
| property-reference | ZombieGeneralCaesarPhase3@PropertySheets | ZombieGeneralCaesarProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIESKYCITYELECTRICGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieSkyCityElectricGroup_1200/ATLASES/ZOMBIESKYCITYELECTRICGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIESKYCITYBASICGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieSkycityBasicGroup_1200/ATLASES/ZOMBIESKYCITYBASICGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEWITCHGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieWitchGroup_1200/ATLASES/ZOMBIEWITCHGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIECARNIEDOVEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCarnieDoveGroup_1200/ATLASES/ZOMBIECARNIEDOVEGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIECARNIEMAGICIANGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieCarnieMagicianGroup_1200/ATLASES/ZOMBIECARNIEMAGICIANGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIEZMECHTELEPORTGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieZmechTeleportGroup_1200/ATLASES/ZOMBIEZMECHTELEPORTGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[5] | resource-group-name-candidate |
| [ZOMBIERENAIZOMBOSSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRenaiZombossGroup_1200/ATLASES/ZOMBIERENAIZOMBOSSGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |
| [ZOMBIERENAIZOMBOSSGROUP_1200_01.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRenaiZombossGroup_1200/ATLASES/ZOMBIERENAIZOMBOSSGROUP_1200_01.png) | $.ResourceGroups[6] | resource-group-name-candidate |
| [ZOMBIERENAIZOMBOSSGROUP_1200_02.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRenaiZombossGroup_1200/ATLASES/ZOMBIERENAIZOMBOSSGROUP_1200_02.png) | $.ResourceGroups[6] | resource-group-name-candidate |
| [ZOMBIESTEAMZOMBOSSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieSteamZombossGroup_1200/ATLASES/ZOMBIESTEAMZOMBOSSGROUP_1200_00.png) | $.ResourceGroups[7] | resource-group-name-candidate |
| [ZOMBIESKYCITYZOMBOSSEFFECTSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieSkycityZombossEffectsGroup_1200/ATLASES/ZOMBIESKYCITYZOMBOSSEFFECTSGROUP_1200_0 | $.ResourceGroups[10] | resource-group-name-candidate |
| [ZOMBIEWITCHGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieWitchGroup_1200/ATLASES/ZOMBIEWITCHGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIEWITCHGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieWitchGroup_1200/ATLASES/ZOMBIEWITCHGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIESKYCITYELECTRICGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-07/PNG/zombie2/ZombieSkyCityElectricGroup_1200/ATLASES/ZOMBIESKYCITYELECTRICGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |

本页仅展示前 20 条；完整 22 条请查看 SQLite/CSV。

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_ELECTRIC_BULLET/ZOMBIE_ELECTRIC_BULLET.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_ELECTRIC_BULLET_HIT/ZOMBIE_ELECTRIC_BULLET_HIT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_SKYCITY_ELECTRIC/ZOMBIE_SKYCITY_ELECTRIC.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkyCityElectricGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_SKYCITY_ELECTRIC_ELITE/ZOMBIE_SKYCITY_ELECTRIC_ELITE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkycityBasicGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_ATTACK_FIRE/ZOMBIE_ATTACK_FIRE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkycityBasicGroup_Common/IMAGES/1200/ZOMBIE2/EFFECTS/ZOMBIE_SKYCITY_ASH/ZOMBIE_SKYCITY_ASH.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie2/ZombieSkycityBasicGroup_Common/IMAGES/1200/ZOMBIE2/ZOMBIE/ZOMBIE_SKYCITY_BASIC/ZOMBIE_SKYCITY_BASIC.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieWitchGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_WITCH_EFFECT/ZOMBIE_WITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieWitchGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_WITCH_PROJECTILE/ZOMBIE_WITCH_PROJECTILE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieWitchGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_WITCH_SHADOW/ZOMBIE_WITCH_SHADOW.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieWitchGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_WITCH/ZOMBIE_WITCH.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieDoveGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN_DOVE/ZOMBIE_MAGICIAN_DOVE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieMagicianGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN/ZOMBIE_MAGICIAN.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieCarnieMagicianGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MAGICIAN_HAT/ZOMBIE_MAGICIAN_HAT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |

本页仅展示前 20 条；完整 67 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieCaesarGroup |  | unresolved-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| ZombieSkyCityElectricGroup | ZombieSkyCityElectricGroup | exact-resource-group-id |
| ZombieSkycityBasicGroup | ZombieSkycityBasicGroup | exact-resource-group-id |
| thunder | thunder | exact-resource-group-id |
| Egypt_Gravestone |  | unresolved-group-id |
| ZombieWitchGroup | ZombieWitchGroup | exact-resource-group-id |
| ZombieCaesarGroup |  | unresolved-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| Egypt_Gravestone |  | unresolved-group-id |
| ZombossCommonGroup |  | unresolved-group-id |
| ZombieCarnieDoveGroup | ZombieCarnieDoveGroup | exact-resource-group-id |
| ZombieWestChickenFarmerGroup |  | unresolved-group-id |
| ZombieCarnieMagicianGroup | ZombieCarnieMagicianGroup | exact-resource-group-id |
| ZombieZmechTeleportGroup | ZombieZmechTeleportGroup | exact-resource-group-id |
| ZombieCaesarGroup |  | unresolved-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| ZombieRenaiZombossGroup | ZombieRenaiZombossGroup | exact-resource-group-id |
| ZombieSteamZombossGroup | ZombieSteamZombossGroup | exact-resource-group-id |
| RenaiStatue | RenaiStatue | exact-resource-group-id |

本页仅展示前 20 条；完整 44 条请查看 SQLite/CSV。

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 33 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 33 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 33 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 33 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 33 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 36 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 36 | 1 | 2 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 36 | 2 | 3 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 36 | 3 | 4.5 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 36 | 4 | 5 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 32 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 32 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 32 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 32 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 32 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 26 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 26 | 1 | 2 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 26 | 2 | 3 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 26 | 3 | 4.5 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 26 | 4 | 5 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 1 | 2 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 2 | 3 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 3 | 4.5 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 4 | 5 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 46 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 46 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 46 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 46 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 46 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 582 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 582 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 582 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 582 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 582 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 3 | 10 | 4 | 2 | 0 | 0 |
| 2 | 7 | 2 | 3 | 0 | 0 |
| 9 | 23 | 8 | 6 | 0 | 0 |
| 2 | 7 | 2 | 3 | 0 | 0 |
| 2 | 7 | 2 | 3 | 0 | 0 |
| 3 | 10 | 4 | 2 | 0 | 0 |
| 1 | 3 | 1 | 2 | 0 | 0 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
