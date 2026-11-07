---
title: roman_medusa 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# roman_medusa

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 603 | zombie:5b263e09d119317da9 | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_ROMAN_MEDUSA" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":2,"HitPointsLevel":2} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":3,"HitPointsLevel":3} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":4.5,"HitPointsLevel":4.5} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":5,"HitPointsLevel":5} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness4"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed2"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 750 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.185 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 150 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieRomanMedusa@PropertySheets | ZombieRomanMedusaProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEMEDUSAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieMedusaGroup_1200/ATLASES/ZOMBIEMEDUSAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEROMANBASICRESGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRomanBasicResGroup_1200/ATLASES/ZOMBIEROMANBASICRESGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIEPETRIFIEDGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombiePetrifiedGroup_1200/ATLASES/ZOMBIEPETRIFIEDGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIESTONEBLOCKEDGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieStoneBlockedGroup_1200/ATLASES/ZOMBIESTONEBLOCKEDGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEICEAGETROGLOBITEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieIceageTroglobiteGroup_1200/ATLASES/ZOMBIEICEAGETROGLOBITEGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |
| [ZOMBIEICEAGEIMPGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieIceageImpGroup_1200/ATLASES/ZOMBIEICEAGEIMPGROUP_1200_00.png) | $.ResourceGroups[6] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT_MOV/ZOMBIE_ROMAN_MEDUSA_PETRIFICATION_EFFECT_MOV.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_SNAKE_EFFECT/ZOMBIE_ROMAN_MEDUSA_SNAKE_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ROMAN_MEDUSA_STATUE_EFFECT/ZOMBIE_ROMAN_MEDUSA_STATUE_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMedusaGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_MEDUSA/ZOMBIE_ROMAN_MEDUSA.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRomanBasicResGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ROMAN_BASIC/ZOMBIE_ROMAN_BASIC.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePetrifiedGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/STONE_BLOCK_ZOMBIE_EFFECT/STONE_BLOCK_ZOMBIE_EFFECT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombiePetrifiedGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/STONE_BLOCK_ZOMBIE/STONE_BLOCK_ZOMBIE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieStoneBlockedGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ARMOR_STATUE_EFFECT/ZOMBIE_ARMOR_STATUE_EFFECT.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieStoneBlockedGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ARMOR_STATUE_FULL/ZOMBIE_ARMOR_STATUE_FULL.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieStoneBlockedGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ARMOR_STATUE_FULL/ZOMBIE_ARMOR_STATUE_FULL.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceageTroglobiteGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ICEAGE_TROGLOBITE/ZOMBIE_ICEAGE_TROGLOBITE.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieIceageImpGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ICEAGE_IMP/ZOMBIE_ICEAGE_IMP.pam.json | $.ResourceGroups[6] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieMedusaGroup | ZombieMedusaGroup | exact-resource-group-id |
| ZombieRomanBasicResGroup | ZombieRomanBasicResGroup | exact-resource-group-id |
| ZombiePetrifiedGroup | ZombiePetrifiedGroup | exact-resource-group-id |
| ZombieStoneBlockedGroup | ZombieStoneBlockedGroup | exact-resource-group-id |
| ZombieIceageTroglobiteGroup | ZombieIceageTroglobiteGroup | exact-resource-group-id |
| FrostbiteIceBlockZombieGroup | FrostbiteIceBlockZombieGroup | exact-resource-group-id |
| ZombieIceageImpGroup | ZombieIceageImpGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 603 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 603 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 603 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 603 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 603 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 6 | 13 | 7 | 0 | 0 | 0 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
