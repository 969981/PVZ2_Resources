---
title: zombossmech_hydra_head12th_L 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, zombie, mapping]
status: static-source-mapping-runtime-unverified
---

# zombossmech_hydra_head12th_L

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/ZOMBIETYPES.json | 148 | zombie:6b65b47b15e9fea53a | TypeName-string-candidate-not-found | 0 | "POPANIM_ZOMBIE_ZOMBOSS_HYDRA_HEAD2" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| ZombieLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 1 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 2 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 3 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieLevelStats | 4 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 0 | {"Type":"toughness","Value":"toughness8"} | source-exact-property-alias-no-runtime-formula |
| ZombieStats | 1 | {"Type":"speed","Value":"speed3"} | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 20000 | source-exact-property-alias-no-runtime-formula |
| Speed | 0 | 0.1 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | Zombossmech_Hydra_Head_12th@PropertySheets | ZombieZombossMechDarkProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [ZOMBIEZOMBOSSMECH_HYDRAGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieZombossMech_HydraGroup_1200/ATLASES/ZOMBIEZOMBOSSMECH_HYDRAGROUP_1200_00.png) | $.ResourceGroups[0] | resource-group-name-candidate |
| [ZOMBIEDARKZOMBOSSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkZombossGroup_1200/ATLASES/ZOMBIEDARKZOMBOSSGROUP_1200_00.png) | $.ResourceGroups[1] | resource-group-name-candidate |
| [ZOMBIEDARKZOMBOSSEFFECTSGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkZombossEffectsGroup_1200/ATLASES/ZOMBIEDARKZOMBOSSEFFECTSGROUP_1200_00.png) | $.ResourceGroups[3] | resource-group-name-candidate |
| [ZOMBIEDARKIMPDRAGONGROUP_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-01/PNG/zombie3/ZombieDarkImpDragonGroup_1200/ATLASES/ZOMBIEDARKIMPDRAGONGROUP_1200_00.png) | $.ResourceGroups[4] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/zombie3/ZombieZombossMech_HydraGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_HYDRA_EFFECT/ZOMBOSS_HYDRA_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZombossMech_HydraGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_HYDRA_MIRROR/ZOMBOSS_HYDRA_MIRROR.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZombossMech_HydraGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_HYDRA_MIRROR_EFFECT/ZOMBOSS_HYDRA_MIRROR_EFFECT.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZombossMech_HydraGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBOSS_HYDRA/ZOMBOSS_HYDRA.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZombossMech_HydraGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBOSS_HYDRA_HEAD1/ZOMBOSS_HYDRA_HEAD1.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieZombossMech_HydraGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBOSS_HYDRA_HEAD2/ZOMBOSS_HYDRA_HEAD2.pam.json | $.ResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_ZOMBOSS/ZOMBIE_DARK_ZOMBOSS.pam.json | $.ResourceGroups[1] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH/SCORCHED_EARTH.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH_EDGE/SCORCHED_EARTH_EDGE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH_TILE/SCORCHED_EARTH_TILE.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/SCORCHED_EARTH_TILE1/SCORCHED_EARTH_TILE1.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkZombossEffectsGroup_Common/IMAGES/1200/ZOMBIE3/EFFECTS/ZOMBOSS_DARK_FIREBALL/ZOMBOSS_DARK_FIREBALL.pam.json | $.ResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/zombie3/ZombieDarkImpDragonGroup_Common/IMAGES/1200/ZOMBIE3/ZOMBIE/ZOMBIE_DARK_IMP_DRAGON/ZOMBIE_DARK_IMP_DRAGON.pam.json | $.ResourceGroups[4] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：0 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| ZombieZombossMech_HydraGroup | ZombieZombossMech_HydraGroup | exact-resource-group-id |
| ZombieDarkZombossGroup | ZombieDarkZombossGroup | exact-resource-group-id |
| ZombossCommonGroup |  | unresolved-group-id |
| ZombieDarkZombossEffectsGroup | ZombieDarkZombossEffectsGroup | exact-resource-group-id |
| ZombieDarkImpDragonGroup | ZombieDarkImpDragonGroup | exact-resource-group-id |
| SandstormGroup | SandstormGroup | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。

<!-- AUTO ENTITY DETAIL START -->
## 逐级技能、Avatar、升级道具及素材映射

> [!warning] 等级数组索引与静态 RTID 不等于游戏内进阶等级和实机技能效果。PNG/PAM 关联仍可能仅是命名候选。

### 原始等级系数、进阶技能与属性技能

| 对象index | 等级数组index | 攻击系数 | 生命系数 | 进阶技能RTID | 技能名称键 | RTID状态 | 属性技能RTID | 状态 |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| 148 | 0 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 148 | 1 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 148 | 2 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 148 | 3 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |
| 148 | 4 | 1 | 1 |  |  | no-explicit-skill-ref |  | no-explicit-skill-ref |

### AvatarLayers 装扮层

| 元素 | 类型 | 层名 | 状态 |
| --- | --- | --- | --- |

### 配件、道具和装扮属性配置候选

| 类型 | 源JSON | 对象index | 字段 | 证据 |
| --- | --- | --- | --- | --- |

### 图片、动画以及资源 ID 缺口

| PNG候选 | PAM JSON候选 | RTON组精确 | RTON组未解 | 图片ID精确 | 图片ID未解 |
| --- | --- | --- | --- | --- | --- |
| 4 | 13 | 5 | 1 | 0 | 0 |

完整数据：[逐级技能CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_level_skills.csv) · [AvatarCSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_avatar_details.csv) · [装扮与物品配置候选CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/entity_item_costume_candidates.csv)
<!-- AUTO ENTITY DETAIL END -->
