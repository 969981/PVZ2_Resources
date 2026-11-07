---
title: magicbeans 原始对象关联
type: entity-mapping
region: CHN
version: 4.2.8
tags: [PVZ2, plant, mapping]
status: static-source-mapping-runtime-unverified
---

# magicbeans

候选中文名：尚未可靠关联。原始配置条目：1。

> [!warning] 这些关联是源配置、RTID 或文件名候选。没有验证动画播放、进阶最终战斗数值和装扮装备效果。重复 TypeName 保留全部版本/关卡配置。

## 原始配置记录

| 源文件 | 序号 | 对象 ID | 名称来源 | Avatars 数 | PopAnim |
| --- | --- | --- | --- | --- | --- |
| 04_JSON/dynamic/Packages/PACKAGES/PLANTTYPES.json | 8 | plant:a589343d95be65db2c | TypeName-string-candidate-not-found | 3 | "POPANIM_PLANT_MAGICBEANS" |

## 属性与等级明细

| 原字段 | 索引 | 原始值 | 证据状态 |
| --- | --- | --- | --- |
| PlantLevelStats | 0 | {"AttackLevel":1,"HitPointsLevel":1} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 0 | {"Type":"damage","Value":"damage6"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 1 | {"Type":"area","Value":"square"} | source-exact-property-alias-no-runtime-formula |
| PlantStats | 2 | {"Type":"recharge","Value":"recharge2"} | source-exact-property-alias-no-runtime-formula |
| MinLevel | 0 | 1 | source-exact-property-alias-no-runtime-formula |
| MaxLevel | 0 | 3 | source-exact-property-alias-no-runtime-formula |
| Hitpoints | 0 | 4000 | source-exact-property-alias-no-runtime-formula |
| Cost | 0 | 25 | source-exact-property-alias-no-runtime-formula |
| PacketCooldown | 0 | 20 | source-exact-property-alias-no-runtime-formula |

## 直接源引用与未闭合的外键

| 关系 | 原值 | 目标类型 | 目标路径 | 证据状态 |
| --- | --- | --- | --- | --- |
| property-reference | MagicbeansDefault@PropertySheets | MagicbeansProps | 04_JSON/dynamic/Packages/PACKAGES/PROPERTYSHEETS.json | exact-source-property-alias |

## 已公开 PNG 图集候选（可点击）

| 图集 | 来源 | 证据状态 |
| --- | --- | --- |
| [PLANTMAGICBEANS_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantMagicbeans_1200/ATLASES/PLANTMAGICBEANS_1200_00.png) | $.PlantResourceGroups[0] | resource-group-name-candidate |
| [PLANTBANANA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantBanana_1200/ATLASES/PLANTBANANA_1200_00.png) | $.PlantResourceGroups[3] | resource-group-name-candidate |
| [PLANTGATLINGPEA_1200_00.png](https://github.com/969981/PVZ2_Resources/blob/master/Images/CHN/V4.2.8/Media/shard-03/PNG/plant2/PlantGatlingPea_1200/ATLASES/PLANTGATLINGPEA_1200_00.png) | $.PlantResourceGroups[6] | resource-group-name-candidate |

## PAM JSON 动画候选（尚未渲染）

| 源动画 | 来源 | 证据状态 |
| --- | --- | --- |
| PAM_JSON/plant2/PlantMagicbeans_Common/IMAGES/1200/PLANT2/EFFECTS/MAGICBEANS_PROJECTILE/MAGICBEANS_PROJECTILE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMagicbeans_Common/IMAGES/1200/PLANT2/EFFECTS/MAGICBEANS_RETICLE/MAGICBEANS_RETICLE.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantMagicbeans_Common/IMAGES/1200/PLANT2/PLANT/MAGICBEANS/MAGICBEANS.pam.json | $.PlantResourceGroups[0] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_EXPLOSION/BANANA_EXPLOSION.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_LV5_PROJECTILE/BANANA_LV5_PROJECTILE.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_PROJECTILE/BANANA_PROJECTILE.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/EFFECTS/BANANA_RETICLE/BANANA_RETICLE.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantBanana_Common/IMAGES/1200/PLANT2/PLANT/BANANA/BANANA.pam.json | $.PlantResourceGroups[3] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantGatlingPea_Common/IMAGES/1200/PLANT2/EFFECTS/GATLINGPEA_BULLET/GATLINGPEA_BULLET.pam.json | $.PlantResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantGatlingPea_Common/IMAGES/1200/PLANT2/EFFECTS/GATLINGPEA_BULLET_AVATAR/GATLINGPEA_BULLET_AVATAR.pam.json | $.PlantResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantGatlingPea_Common/IMAGES/1200/PLANT2/EFFECTS/GATLINGPEA_TX/GATLINGPEA_TX.pam.json | $.PlantResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantGatlingPea_Common/IMAGES/1200/PLANT2/PLANT/GATLINGPEA/GATLINGPEA.pam.json | $.PlantResourceGroups[6] | resource-group-name-candidate |
| PAM_JSON/plant2/PlantGatlingPea_Common/IMAGES/1200/PLANT2/PLANT/GATLINGPEA1/GATLINGPEA1.pam.json | $.PlantResourceGroups[6] | resource-group-name-candidate |

## Avatar 装扮数组与配件配置候选

Avatars 明细：3 条；外围配件原生类候选关联：0 条。

| 原字段 | 原始 Avatar JSON | 证据状态 |
| --- | --- | --- |
| $.Avatars[0] | {"AvatarLayers":["custom_01"],"AvatarType":"normal","PacketCooldownPercent":1} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[1] | {"AvatarLayers":["custom_02"],"AvatarType":"normal","PacketCooldownPercent":1} | explicit-PlantType.Avatar-array-membership |
| $.Avatars[2] | {"AvatarLayers":["custom_05"],"AvatarType":"normal","PacketCooldownPercent":1} | explicit-PlantType.Avatar-array-membership |

## RTON 资源组外键

| 要求资源组 | 匹配组 | 状态 |
| --- | --- | --- |
| PlantMagicbeans | PlantMagicbeans | exact-resource-group-id |
| PlantPotatomineAudio |  | unresolved-group-id |
| PlantPotatomine |  | unresolved-group-id |
| PlantBanana | PlantBanana | exact-resource-group-id |
| PlantGrapeshot |  | unresolved-group-id |
| PlantThreepeater |  | unresolved-group-id |
| PlantGatlingPea | PlantGatlingPea | exact-resource-group-id |

返回 [[Unpack/18-植物僵尸跨格式关联数据库]]。完整记录在 [entity_map SQLite/CSV](https://github.com/969981/PVZ2_Resources/blob/master/Catalog/CHN/V4.2.8/entity_map/SUMMARY.json)。
