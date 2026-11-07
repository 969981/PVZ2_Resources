---
title: PAM 动画提取、图集关联与逐帧播放验证
type: runbook
tags: [pvz2, animation, PAM, PopStudio, atlas, playback]
region: CHN
version: 4.2.8
status: decoded-not-playback-verified
updated: 2026-11-07
---

# 03 · PAM → JSON → 图集引用 → 动画播放

返回 [[Unpack/00-完整解包导航]] · [[Unpack/02-PTX纹理与PNG]] · [[研究证据规范]]。

## 本次已经验证的层级

3,847/3,847 份原始 PAM 已经用 PopStudio 真实批量转为有效 JSON；其中 dino 的 22/22 份样本通过。这里的 validated 范围是**PAM 到 JSON 的解码及语法**，并不说明已经完整显示所有时间轴、动画帧、图层、变换与引用图集。

使用的工具：PopStudio（实测固定 SHA a8bd1edd3e1dc4ec79e3b37ee29774e268438d85）。脚本 scripts/media/convert_pam_bnk.py；工作流 .github/workflows/pvz2-media-full.yml 和 pvz2-media-repair.yml。

## 单个 PAM 实测及批量转换

构建 PopStudio 控制台程序后确认 PopStudio.dll 的真实位置。控制台操作码是 **180**，不是文本形式的 --decode-pam：

~~~bash
dotnet "/path/to/PopStudio.dll" "/path/to/animation.pam" 180
~~~

生成同名 .pam.json。在准备好的 raw-media 目录中并行转换全部 PAM 和 BNK：

~~~bash
python3 scripts/media/convert_pam_bnk.py "audit/local/media/raw" \
  --out "audit/local/media/derived" \
  --dotnet-dll "/path/to/PopStudio.dll" --workers 4
~~~

会同时输出 PAM_JSON/、WEM/、pam_bnk_report.json。若只需要 PAM，用测试目录仅包含 PAM 文件即可。检查 JSON 可以被重新解析，每项 source、size、SHA256、status 与原路径一致，失败记录不得删除。

## 动画与图集不是同一种资产

~~~text
PAM 轨道/元素/时间轴
  └─ 图像元素名（待核对原字段）
       └─ 资源 RTON：resource ID / parent / atlas 区域
            └─ PTX 图片源路径与格式
                 └─ PNG → 裁剪区域 → 层级/变换 → 逐帧图像
~~~

必须依次验证每条实际存在的引用，不应根据文件名相似就自动绑定。资源表里 parent、ax、ay、aw、ah 可能代表图集区域，需先证实对应 PNG 宽高、坐标系和裁剪边界；某些元素也可能指向非图集资源。

## 下一阶段真实播放验收

1. 以 dino 22 个 PAM 和五张已验证 PTX PNG 为最小证据集。
2. 统计 PAM 中每个实际图片引用的总数、匹配数、歧义/缺失数；原名和源路径必须保留。
3. 解码时间轴、关键帧、图层顺序、透明度、旋转、缩放和位移；不支持的字段应单独报表。
4. 选取同一动画的首/中/末帧，导出 PNG 帧序列，记录持续时间和预计 FPS，并和原始 JSON 逐字段核对。
5. 可使用 PopStudio 或 EffectViewer 作为参考，但未验证的 CHN 特殊内容不能标为已播放成功。
6. 扩展到 3,847 份 PAM，按每份实际产出成功/失败/缺纹理/未知格式统计，而非只看 JSON 文件数量。

现有证据：[媒体全量任务 #42321977158](https://github.com/969981/PVZ2_Resources/actions/runs/42321977158)、[BNK 异常修复后媒体任务 #42322830660](https://github.com/969981/PVZ2_Resources/actions/runs/42322830660)。

后续参考 [[Unpack/07-数据中文名与SQLite]] 和 [[Unpack/09-离线版阶段门槛]]。
