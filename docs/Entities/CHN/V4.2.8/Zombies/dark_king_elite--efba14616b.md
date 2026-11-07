---
title: dark_king_elite 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# dark_king_elite

候选中文名：尚未可靠关联。原始配置条目：8。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_31.json | 27 | zombie:df88fa58c67974d7aa | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_40_N.json | 43 | zombie:abc48c01f8ef8f5102 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S28_16_H.json | 38 | zombie:87be61aed796ae8685 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S29_8_H.json | 34 | zombie:7aa27ff3ab08e4f063 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S30_16_H.json | 45 | zombie:45dc23ca385b6b9159 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S30_16_H.json | 47 | zombie:e47c9949268cc8d8c2 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S30_40_N.json | 35 | zombie:1fa4eef6dcbbd0d03d | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 205 | zombie:7e5a31fb05e9481837 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_DARK_KING_ELITE" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness4"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 35000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness4"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 10000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |

本页仅展示前 20 条；完整 72 条请查看 SQLite/CSV。

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieDarkKingEliteDefault@CurrentLevel | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_MINIGAME_GAME_31.json | exact-source-property-alias |
| property-reference | ZombieDarkKingElite@CurrentLevel | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S26_40_N.json | exact-source-property-alias |
| property-reference | ZombieDarkKingElite@CurrentLevel | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S28_16_H.json | exact-source-property-alias |
| property-reference | ZombieDarkKingElite@CurrentLevel | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S29_8_H.json | exact-source-property-alias |
| property-reference | ZombieDarkKingElite@CurrentLevel | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S30_16_H.json | exact-source-property-alias |
| property-reference | ZombieDarkKingEliteB@CurrentLevel | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S30_16_H.json | exact-source-property-alias |
| property-reference | ZombieDarkKingElite@CurrentLevel | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/LEVELS/PVZ1_S30_40_N.json | exact-source-property-alias |
| property-reference | ZombieDarkKingElite@PropertySheets | ZombieDarkKingElitePropertySheet | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |

本页仅展示前 20 条；完整 24 条请查看 SQLite/CSV。

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| PlantWitchHazel | PlantWitchHazel | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 27 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 27 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 27 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 27 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 27 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 43 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 43 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 43 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 43 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 43 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 38 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 34 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 34 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 34 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 34 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 34 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 45 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 45 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 45 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 45 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 45 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 47 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 47 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 47 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 47 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 47 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 35 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 35 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 35 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 35 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 35 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 205 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 205 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 205 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 205 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 205 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 1 | 3 | 2 | 0 | 0 | 0 |
| 1 | 3 | 2 | 0 | 0 | 0 |
| 1 | 3 | 2 | 0 | 0 | 0 |
| 1 | 3 | 2 | 0 | 0 | 0 |
| 1 | 3 | 2 | 0 | 0 | 0 |
| 1 | 3 | 2 | 0 | 0 | 0 |
| 1 | 3 | 2 | 0 | 0 | 0 |
| 1 | 3 | 2 | 0 | 0 | 0 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
