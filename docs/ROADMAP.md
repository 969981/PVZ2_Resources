---
title: 国服解包路线图
type: roadmap
tags: [pvz2, unpack, roadmap]
updated: 2026-11-07
---

# 国服解包路线图

目标：可复现、可审计地从本地拥有的 CHN APK 拆包至可查询资源，同时保留地区/版本差异和逐文件来源。当前状态以 [[versions/CHN/4.2.8-parallel-unpack-results]] 的真实 Actions 报告为依据，不再沿用最初规划时“全部未执行”的状态。

| 阶段 | 内容 | 实测/当前状态 | 主要验收 |
|---|---|---|---|
| 0 APK 清单 | ZIP、哈希、SMF 头、manifest | ZIP 与资源头已记录；manifest 版本号尚需单独二进制确认 | 1,374 项来源可复核 |
| 1 RSLB/直接 RTON | 33 个 RSB；18 RTON；38 其他 SMF | **89/89 完成**；RSB 5,913,571,328 字节 | 每块长度/RSB magic/组表合法 |
| 2 RSGP 组 | 从 RSB 拆分资源组并记录来源 | **2,964/2,964 已完成** | `pgsr`、偏移、长度、SHA256 |
| 3 成员及 RTON | 提取内部资源、可解析 RTON → JSON | **14,869 成员；8,091 JSON；6,778 原格式** | JSON 语法有效、错误独立列出 |
| 3b 直接 RTON | 顶层 18 RTON → JSON | **18/18 完成** | 配置来源与 RSB 内部分开计数 |
| 3c 其他二次格式 | PTX PNG / PAM/Reanim / BNK | **尚未完成全量转换** | 像素/轨道/音频数据实样验证 |
| 4 游戏数据 | 植物、僵尸、关卡、波次、技能、中文文本 | **待实现结构化导出** | ID、官方文本、源字段、单位、版本对账 |
| 5 Runtime | ARM64 `libSrc.so` 行为验证 | 待独立研究 | 同 Build 的调用链/断点证据 |
| 6 多版本 | CHN/其他地区差异及失败补偿 | 待实现 | 完整性、错误率、跨版本外键审计 |

## 推荐执行顺序

1. [[文件目录与职责]]：确认 Git 文件树、APK 内部层和各产物目录的区别。
2. [[解包操作手册]]：还原 88 分卷→SHA256→APK 清单→dino 小样本→全量并发 Stage 1。
3. Stage 2 独立导出 RSGP（可复核组边界），Stage 3 由 CN Resource_Tool 直接从 RSB 批量处理内部成员。
4. 顶层 18 个 RTON 使用独立流程，避免与内部 8,091 个 JSON 重复计数。
5. 下一个工程焦点：按 6,778 个原格式文件做格式普查，分别开发 PTX、PAM/Reanim、BNK 适配与真实回读测试。
6. 再把植物、僵尸、关卡、技能和简体中文名称关联成可追溯数据库；代码级游戏行为需要单独验证。

## 错误和证据纪律

每阶段单独报告 `total/success/failure/unsupported/skipped`（有明确分母）；保持 `source_apk_sha256`、`original_path`、`container_chain`、工具 commit、产物哈希和原始错误。不能把工具能力介绍等同于实际资源转换成功，也不能把临时 Actions Artifacts 当成已存进 Git 的资源。

相关：[[工作流与Artifacts]] · [[资源格式与文件用途]] · [[SCHEMAS]] · [[研究证据规范]] · [[版本索引]]。
