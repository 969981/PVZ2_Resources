---
title: POPFX 特效、Lua、INI 和未解析资源的研究计划
type: investigation
tags: [pvz2, POPFX, lua, special-effects, inventory, unknown]
region: CHN
version: 4.2.8
status: inventory-verified-structures-unresolved
updated: 2026-11-07
---

# 06 · POPFX / Lua / 其余文件如何继续解析

返回 [[Unpack/00-完整解包导航]] · [[Unpack/03-PAM动画与图集]] · [[Unpack/09-离线版阶段门槛]]。

## 已知格式直方图

本版 Stage 3 中 14,869 个成员已全部保留。除 8,091 个 RTON JSON，原生余项包括 PTX 1,522、PAM 3,847、BNK 510、WEM 795、POPFX 10、Lua 43、INI 39、TXT 6、TTF 4、XML 2。

这些数字是**已发现文件数量**，不是“已解析出 10 套特效”或“43 个源码均可执行”的证明。POPFX 和 Lua 的内容编码、加载方式、依赖、调用链尚未闭合。

## 首轮证据：路径、魔数、压缩与依赖

以原始 Git Internal 分片恢复目录为输入，保持只读。对每个文件记录：

| 字段 | 具体做法 |
|---|---|
| origin | 源 APK / RSB / RSGP / 内部相对路径 |
| sha256 | 对真实输入字节哈希 |
| size | 字节数；空文件单列 |
| header | 前 32～64 字节的十六进制；不得只凭扩展名定格式 |
| parser | 使用的脚本、commit、参数 |
| relation | 原资源 ID、配置引用、模型/图集/音效路径 |
| status | inventory-only、header-identified、decoded、validated 或 unresolved |

最小的 PowerShell 只读记录示例（不修改源文件）：

~~~powershell
$File = "X:\PVZ2_Work\some_file.popfx"
(Get-FileHash $File -Algorithm SHA256).Hash
(Get-Item $File).Length
$Bytes = [System.IO.File]::ReadAllBytes($File)
$Bytes[0..([Math]::Min(31,$Bytes.Length-1))] | ForEach-Object { $_.ToString("X2") }
~~~

空文件要跳过最后一行的索引读取；大文件请用流读取前缀而非 ReadAllBytes。输出建议保存在 audit/local/CHN-4.2.8/format-survey.csv，不要把游戏原件放到 docs。

## POPFX：从资源对象到可验证的特效

1. 用实际头部确定是否为明文、压缩数据或自定义二进制，不先假定其为传统 Reanim。
2. 从 Resources RTON 寻找对应特效 ID、纹理和动画引用，明确关卡/植物/僵尸触发关系。
3. 保留未知字段字节与 offset，再验证粒子数、生命周期、材质混合和纹理图集。
4. 构建小样本可视化，与实际关卡截图或运行时可见效果核对。
5. 未确认播放机制前只能标记 inventory-only / header-identified，不能宣称 10 个 POPFX 已还原。

## Lua：源码还是字节码？

1. 按真实 magic 区分 Lua 文本与二进制字节码；二进制也要记录 Lua 版本与头字段，禁止使用错版本反编译器。
2. 找出加载脚本的配置与模块映射、原生调用入口和依赖资源。
3. 枚举函数、字符串、事件名、地图/关卡/数值引用，只导出**观察到**的信息。
4. 如果需要代码级恢复，静态脚本和 libSrc.so 反编译结果、实机运行行为分开记载。
5. 无法确定的 opcode/外部原生函数保持 unresolved，不凭相似脚本替换逻辑。

## INI、TXT、XML、TTF

- INI 39：编码、分节、键、重复键和优先级；不盲目合并配置。
- TXT 6：其中 LawnStrings 的原始字符串 ID 已专门解析；其他文本仍需逐一识别结构。
- XML 2：记录 schema、属性和值、引用资源路径，必要时定位游戏加载器。
- TTF 4：验证字体元信息和字形覆盖，但未经授权不对外分享字体文件。
- BNK 的一个非 BKHD 异常样本另见 [[Unpack/04-BNK-WEM与音频]]，不能算进 POPFX/Lua 成功数量。

## 完成定义

每类格式要分别交付原件 SHA256、可复现解析脚本、完整成功/失败/未知清单、至少一个真实样本的回读验证、实际用途和引擎引用。没有实测样本就保持 unknown，宁可留空也不要虚构结构。
