---
title: 4.2.8 全量素材逐文件解析记录：生成、提交与浏览
type: runbook
region: CHN
version: 4.2.8
tags: [PVZ2, CHN, Obsidian, parsed, git, JSON, RTID, images, audio]
status: tool-committed-awaiting-source-backed-publishing-verification
updated: 2026-11-07
---

# 14 · 26,774 个独立解析文件的 GitHub 浏览与验收

返回 [[Unpack/00-完整解包导航]]、[[Unpack/13-26774素材全量解析与使用说明]]、[[Unpack/10-独立素材清单与Git体积规则]]。

> [!important] 这是独立解析结果，不是把原版游戏图片音频重传一遍
> 本流程使用已提交且真实验证的 Catalog/CHN/V4.2.8/parsed 数据，生成每个素材对应的**独立结构化 JSON 记录**；保留来源文件名、格式、原大小、SHA256、解析状态、元数据、objclass 分类及已识别 RTID 样本。它不会复制原始 PNG/WEM/PTX/PAM/POPFX、游戏文本全文或其他素材字节。要查看真正的图片、播放声音，仍需从 Unpack 分卷恢复并使用对应解码工具。

## 目录布局

~~~text
Parsed/
└─ CHN/
   └─ V4.2.8/
      ├─ INDEX.csv
      ├─ MANIFEST.json
      ├─ Internal/
      │  ├─ shard-00/
      │  │  └─ JSON/<路径哈希前两位>/<唯一哈希>--<原文件名>.parsed.json
      │  └─ ... shard-07/
      └─ Media/
         ├─ shard-00/
         │  ├─ PNG/<哈希前两位>/<ID>--<文件名>.parsed.json
         │  ├─ WEM/<哈希前两位>/<ID>--<文件名>.parsed.json
         │  ├─ PAM_JSON/<哈希前两位>/<ID>--<文件名>.parsed.json
         │  └─ ...
         └─ ... shard-05、shard-07
~~~

使用 stage + shard + **原相对路径 SHA256** 形成文件名，防止相同素材名覆盖、Windows 大小写冲突和不支持的文件名字符。原相对路径完整写在每条 JSON 的 source.original_path 中，并在 INDEX.csv 可检索。

## 一键从现有解析数据库生成

只需 Python 3.10+，不必重新下载或解压 12 GiB 的大型媒体文件：

~~~bash
git pull origin master

python3 scripts/catalog/split_parsed_records.py \
  --src Catalog/CHN/V4.2.8/parsed \
  --out Parsed/CHN/V4.2.8 \
  --expected 26774

python3 -m unittest discover -s tests -p test_split_parsed_records.py -v
~~~

脚本将 source object class CSV 的 75,608 行及 RTID 样本的 153,939 行，按 (stage, shard, original_path) 合并进各自 JSON。每个文件的 JSON 记录包含：

~~~json
{
  "schema": "pvz2-individual-parsed-record-v1",
  "source": {
    "region": "CHN",
    "version": "4.2.8",
    "stage": "Media",
    "shard": "00",
    "original_path": "此处为实际源文件相对路径",
    "file_bytes": 1024,
    "sha256": "此处为真实文件SHA256",
    "format": "PNG",
    "category": "Images"
  },
  "interpretation": {
    "status": "png-decoded",
    "metadata": {
      "width": 64,
      "height": 64
    },
    "object_classes": [],
    "rtid_samples": []
  },
  "scope": "Individual parsed evidence, not a copy of original game asset bytes"
}
~~~

上面只是结构说明的**示意数值**，不是某张真实 PTX 的数据。实际提交记录完全取自验证后的真实数据，不使用示例虚构文件。

## 自动提交 GitHub

[逐文件解析结果发布 Actions](https://github.com/969981/PVZ2_Resources/actions/workflows/pvz2-split-parsed-records.yml)：

1. 验证解析脚本的合成测试；
2. 读取当前来源 CSV、SUMMARY.json，核对版本、SHA256 格式、15 分片与缺失项；
3. 按源文件写入 26,774 个可在 GitHub 单独浏览的 JSON；
4. 生成 INDEX.csv 与 MANIFEST.json，复核数量、唯一文件路径、来源类别分布和处理状态；
5. 提交到 master。若其他 Actions 同时提交，会 fetch/rebase 并有限次数重试。

只有 Actions 结束为 success 且 Git 中确实存在对应 26,774 个独立文件，才能声明“解析结果已全部提交”。

## 如何查找

- 在 GitHub 直接打开 Parsed/CHN/V4.2.8/，按 Internal/Media、shard、format 浏览。
- 在 INDEX.csv 中搜索源文件名，比如 peashooter、LevelDefinition、png。
- 对游戏关卡的完整关联请使用 [[Unpack/05-关卡与波次RTID]] 的 SQLite；独立 JSON 中的 RTID 仅是有上限的真实样本。
- 要在本地读取原始 PNG、WEM、PAM 文件，见 [[Unpack/11-全量文件恢复与格式验收]]。默认 Readable/ 在 .gitignore 中，不会自动重新公开游戏资产。

## 验收和限制

- [x] 已完成源 Catalog 的 26,774/26,774 SHA256 来源验收；
- [x] 已完成格式级真实解析和相关异常分类；
- [ ] 独立 JSON 文件的最终 Actions 提交与远端逐项存在性核对（运行成功后更新）；
- [ ] Media-06 的正式 Git 归档及后续转换；
- [ ] 所有游戏 WEM 的 PCM 解码、PAM 动画实际播放、POPFX 渲染等专用深层验收。

格式级 metadata 不是图像显示、音频播放或客户端游戏运行验证。这个分层要始终保留在源记录中。
