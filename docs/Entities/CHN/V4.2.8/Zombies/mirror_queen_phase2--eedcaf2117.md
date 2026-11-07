---
title: mirror_queen_phase2 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# mirror_queen_phase2

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 584 | zombie:b48b5d2ba0c42084bb | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBIE_MIRROR_QUEEN" |

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
| Hitpoints | 0 | 16500 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.5 | source-exact-property-alias-no-runtime-formula |
| EatDPS | 0 | 100 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | ZombieMirrorQueenPhase2@PropertySheets | ZombieMirrorQueenProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEMIRRORQUEENGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieMirrorQueenGroup_1200/ATLASES/ZOMBIEMIRRORQUEENGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKKINGGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkKingGroup_1200/ATLASES/ZOMBIEDARKKINGGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIEARCHMAGEGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieArchmageGroup_1200/ATLASES/ZOMBIEARCHMAGEGROUP_1200_00.png) | $.ResourceGroups[2] | resource-group-name-candidate |
| [ZOMBIERENAIPERFUMERGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieRenaiPerfumerGroup_1200/ATLASES/ZOMBIERENAIPERFUMERGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MIRROR_QUEEN_APPLE/ZOMBIE_MIRROR_QUEEN_APPLE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MIRROR_QUEEN_APPLE_ELITE/ZOMBIE_MIRROR_QUEEN_APPLE_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MIRROR_QUEEN_APPLE_HIT/ZOMBIE_MIRROR_QUEEN_APPLE_HIT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MIRROR_QUEEN_APPLE_HIT_ELITE/ZOMBIE_MIRROR_QUEEN_APPLE_HIT_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MIRROR_QUEEN_MIRROR/ZOMBIE_MIRROR_QUEEN_MIRROR.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_MIRROR_QUEEN_MIRROR_LIGHT/ZOMBIE_MIRROR_QUEEN_MIRROR_LIGHT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MIRROR_QUEEN/ZOMBIE_MIRROR_QUEEN.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieMirrorQueenGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_MIRROR_QUEEN_ELITE/ZOMBIE_MIRROR_QUEEN_ELITE.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_HAT_SWITCH_EFFECT/ZOMBIE_HAT_SWITCH_EFFECT.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING/ZOMBIE_DARK_KING.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkKingGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_KING_ELITE/ZOMBIE_DARK_KING_ELITE.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieArchmageGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SLEEPPING_PLANT_EFFECT/SLEEPPING_PLANT_EFFECT.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieArchmageGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_ARCHMAGE_PROJECTILE/ZOMBIE_ARCHMAGE_PROJECTILE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieArchmageGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_ARCHMAGE/ZOMBIE_ARCHMAGE.pam.json | $.ResourceGroups[2] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRenaiPerfumerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_RENAI_PERFUMER_BOTTLE/ZOMBIE_RENAI_PERFUMER_BOTTLE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRenaiPerfumerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_RENAI_PERFUMER_BOTTLE_HIT/ZOMBIE_RENAI_PERFUMER_BOTTLE_HIT.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRenaiPerfumerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_RENAI_PERFUMER_POISON/ZOMBIE_RENAI_PERFUMER_POISON.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRenaiPerfumerGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBIE_RENAI_PERFUMER_POISON3/ZOMBIE_RENAI_PERFUMER_POISON3.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieRenaiPerfumerGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_RENAI_PERFUMER/ZOMBIE_RENAI_PERFUMER.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieMirrorQueenGroup | ZombieMirrorQueenGroup | exact-resource-group-id |
| ZombieDarkKingGroup | ZombieDarkKingGroup | exact-resource-group-id |
| ZombieArchmageGroup | ZombieArchmageGroup | exact-resource-group-id |
| ZombieRenaiPerfumerGroup | ZombieRenaiPerfumerGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 584 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 584 | 1 | 2 | 2 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 584 | 2 | 3 | 3 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 584 | 3 | 4.5 | 4.5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 584 | 4 | 5 | 5 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 4 | 19 | 4 | 0 | 0 | 0 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
