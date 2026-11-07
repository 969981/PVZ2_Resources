---
title: Wwise BNK、WEM 和 WAV 解码验证
type: runbook
tags: [pvz2, audio, BNK, WEM, Wwise, WAV, vgmstream]
region: CHN
version: 4.2.8
status: decoded-with-unresolved-bank-and-sampled-wav
updated: 2026-11-07
---

# 04 · BNK → WEM → PCM WAV

返回 [[Unpack/00-完整解包导航]] · [[Unpack/06-POPFX与Lua未识别格式]]。

## Wwise 结构与本次结果

| 类型 | 数量 | 当前状态 |
|---|---:|---|
| 独立原生 WEM | 795 | 源字节保留；已完成抽样解码 |
| RSGP 内 BNK | 510 | 509 个常规格式已解析；1 个非 BKHD 未知 |
| BNK 内提取的 WEM | 6,480 | DIDX/DATA 边界验证后提取 |

Wwise BNK 的常见块有 BKHD（Bank 头）、DIDX（媒体 ID、偏移、长度）、DATA（媒体数据）、HIRC 和 STID（对象/字符串关联）。**提取 WEM 不是转码为 WAV，也不代表已知道播放事件发生位置。**

其中一个 BNK 有短的额外尾部，保留尾部十六进制警告且不忽略有效媒体；另一个不是 BKHD 开头，按原字节与 SHA256 保存在 UNRESOLVED_BNK/，不能强行作为标准 Bank 解析。

## 原始 Bank 提取命令

~~~bash
python3 scripts/media/parse_wwise_bnk.py "/path/to/source.BNK" \
  --out "audit/local/audio/bnk"
~~~

仅需要索引和诊断而不导出 WEM，可加 --no-media。批量处理通过 scripts/media/convert_pam_bnk.py，同步转换 PAM：

~~~bash
python3 scripts/media/convert_pam_bnk.py "audit/local/media/raw" \
  --out "audit/local/media/derived" \
  --dotnet-dll "/path/to/PopStudio.dll" --workers 4
~~~

解析产物需记录原 BNK SHA256、DIDX 媒体 ID、在 DATA 内的相对偏移、长度、RIFF 头与 WEM SHA256。WEM 文件扩展名和 RIFF 头本身不足以证明是可以直接播放的 WAV。

## vgmstream → PCM WAV

固定 vgmstream Linux CLI r2168，官方 ZIP SHA256：
2dfdfddda68e0e36e62f20dc050a4e45f4bc3318c7efeadf8a063df646d57c84。

~~~bash
python3 scripts/media/probe_wem.py "/path/to/wem-root" \
  --cli "/path/to/vgmstream-cli" --out "audit/local/audio/wav" \
  --samples 12 --decode-count 3 --workers 3
~~~

脚本先运行 vgmstream-cli -m 查询编码元数据，再运行 -i -o 写 WAV，由 Python wave 重新读取 WAV 的声道、采样率、位深、帧数，并写 source/output SHA256。实测：
- 795 个独立 WEM 的来源样本：12/12 可识别，3/3 WAV 验证；
- BNK 派生来源样本：12/12 可识别，3/3 WAV 验证。

[音频真实样本 #42325578782](https://github.com/969981/PVZ2_Resources/actions/runs/42325578782)。

## 全量音频尚未闭合的验收

- 分别扫描 795 个独立 WEM 和 6,480 个 BNK 派生 WEM；分母不可混淆。
- 按编码和采样率分组，设置 worker、超时和失败重试，统计 success/unsupported/timeout/error。
- 输出 WAV 的原路径、原始 WEM ID、声道、采样率、总帧数、时长、SHA256；没有真实解码就保持原文件。
- HIRC/STID/字符串/游戏触发逻辑与实际 WEM 文件建立关联，才有播放正确性的证据。
- 音效是否在特定植物、僵尸、关卡事件中播放属于**运行时验证**，静态 Bank 解包无法证明。

相关 [[Unpack/09-离线版阶段门槛]] 和 [[研究证据规范]]。
