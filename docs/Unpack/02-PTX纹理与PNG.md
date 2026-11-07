---
title: PTX GPU 纹理恢复、ASTC 与 PNG 的真实验收
type: runbook
tags: [pvz2, PTX, ASTC, PNG, PopStudio, atlas]
region: CHN
version: 4.2.8
status: decoded-validated-by-signature-and-dimensions
updated: 2026-11-07
---

# 02 · PTX → PNG 真实解码

返回 [[Unpack/00-完整解包导航]] · [[Unpack/03-PAM动画与图集]]。

## 核心原理

国服 RSB v4 内的 PTX 有一部分实际是 RSGP 图像区中的原始 GPU 压缩纹理，不带完整标准文件头。需要先结合 **RSB 全局 PTX 表**与 **RSGP 局部图片索引**获得宽高、编码 ID 和透明度字段，然后按源数据重建 PTX 头。直接给裸 PTX 调常规图片解码器会产生错误或越界。

当前真实数量为 **1,522 PTX，全部转成有效 PNG**。其中 1,520 张经 astcenc 处理；两张特殊格式由 PopStudio 单独处理。

| 编码 ID | 解码路线 | 真实验收 |
|---|---|---|
| 160 | ASTC 4×4 | 脚本已支持；逐张报告 |
| 161 | ASTC 5×5 | dino 真实样本 5/5 通过 |
| 162 | ASTC 6×6 | 脚本已支持；逐张报告 |
| 163 | ASTC 8×8 | 脚本已支持；逐张报告 |
| 0 | ARGB8888 → PopStudio | 1/1 PNG |
| 147 | ETC1_RGB_A8 → PopStudio | 1/1 PNG |

## 在 Linux/WSL 处理真实 RSB 的步骤

先安装 astcenc、校验工具已准备、PopStudio 已编译并找到真正的 PopStudio.dll。以下 RSB 输入路径以本地 Stage 1 为例：

~~~bash
export PYTHONPATH="$PWD/tools/PVZ2-CN-Reverse-Tools/Resource_Tool"
python3 scripts/media/export_raw_media.py \
  "Unpack/CHN/4.2.8/stage1/RSB/dino.rsb" --out "audit/local/media/raw"
python3 scripts/media/ptx_astc_to_png.py \
  "audit/local/media/raw" --out "audit/local/media/png-astc" \
  --workers 2 --allow-empty
~~~

如果输入包含格式 0 或 147，再执行：

~~~bash
python3 scripts/media/decode_special_ptx.py \
  "audit/local/media/raw" --out "audit/local/media/png-special" \
  --popstudio-dll "/path/to/PopStudio.dll"
~~~

**不能直接把特殊格式命令当成 dino 验收**：dino 样本是五张 ASTC 纹理；decode_special_ptx.py 在没有格式 0/147 的目录中会返回非零。完整 8 分片真实编排见 [.github/workflows/pvz2-media-full.yml](https://github.com/969981/PVZ2_Resources/blob/master/.github/workflows/pvz2-media-full.yml)。

## 验收与回读证据

- 记录源 RSB、资源组、局部索引、全局纹理索引、宽高、编码 ID、源和目标 SHA256。
- ASTC 数据体长度应为 ceil(width/blockX) × ceil(height/blockY) × 16。128×256、5×5 块尺寸对应 21,632 字节。
- 用 PNG 魔数、IHDR 宽高与原始 PTX 字段完全相等判定解码文件的**结构验证**。
- 不把 PNG 有效理解为 Alpha 透明、图集切分、实际贴图颜色均已逐像素验证。
- 建立 parent、ax、ay、aw、ah 与纹理图像的关联后，再做帧裁剪和人工图像检查。

实测：[ASTC #42321736104](https://github.com/969981/PVZ2_Resources/actions/runs/42321736104)、[特殊 0/147 #42322830668](https://github.com/969981/PVZ2_Resources/actions/runs/42322830668)。

脚本：scripts/media/export_raw_media.py、ptx_astc_to_png.py、decode_special_ptx.py。下一步 [[Unpack/03-PAM动画与图集]]。
