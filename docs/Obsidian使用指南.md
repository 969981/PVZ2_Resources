---
title: Obsidian 使用指南
tags: [pvz2, obsidian, workflow]
type: guide
updated: 2026-11-07
---

# Obsidian 使用指南

返回 [[00-知识库首页]]

## 1. 在 Windows 打开

```powershell
git clone https://github.com/969981/PVZ2_Resources.git
```

打开 **Obsidian → Open folder as vault（将文件夹作为仓库打开）**，选择本地 `PVZ2_Resources\docs`，首页为 [[00-知识库首页]]。已克隆仓库则无需重复 clone。

**不要选择仓库根目录作为 Vault**：这样会把 scripts、ROMS 等源码与资源一起索引。设计上 `docs/` 是单独知识库。

## 2. 本仓库采用的本机配置

- `.obsidian/app.json`：Wiki 链接、重命名自动维护链接、附件目录 `_attachments`。
- `.obsidian/templates.json`：模板目录 `_templates`；可在 Obsidian 设置「核心插件 → 模板」开启并核对目录。
- `.gitignore`：忽略个人布局、缓存和第三方插件；提交文档内容和共享的少量配置。
- **不强制安装 Dataview、Tasks、Git 等社区插件**；普通 Markdown 与 Obsidian 原生功能即可工作。

## 3. 新建研究笔记

1. 在目标目录创建 Markdown 笔记。
2. 通过 Obsidian 命令面板使用「Templates: Insert template」，选择 `格式研究笔记`、`解包实验记录`、`数据字段研究` 或 `版本研究记录`。
3. 将 `{{date:YYYY-MM-DD}}` 等模板占位符自动替换为当前时间；填写 `status`、`region`、`version`、原始 SHA256、来源偏移/字段和可重复执行命令。
4. 将笔记从 [[项目工作台]] 或 [[版本索引]] 链接进入，使关系图中有明确入口。

建议标题明确、可检索，例如 `RSLB-CHN4.2.8-dino实样验证`。笔记内以 `[[FORMATS]]` 等双链关联相关主题；非 Vault 文件（如 Python 工具脚本）请用 GitHub 普通链接引用。

## 4. 常用 Markdown 写法

```markdown
---
title: RSLB 解包实验
tags: [pvz2, rslb, research]
status: unresolved
region: CHN
version: 4.2.8
---

# RSLB 解包实验

相关：[[FORMATS]] · [[versions/CHN/4.2.8]]

> [!warning] 仅文件头验证
> 尚未完成真实输入输出的逐项复核。

- [ ] 核对 SHA256
- [ ] 运行实样解包并检查 magic
```

Obsidian 支持双向链接、属性、标签、Callout、图谱。图片使用 `![[图片.png]]` 并放置在 `_attachments/`；不得加入游戏原始二进制资源。

## 5. Git 协作与数据边界

文档更新后正常 `git add docs`、commit、push；不提交 `.obsidian/workspace.json`、插件目录或本机历史缓存。对现存 `docs/ROADMAP.md` 等文件**保留路径**，避免旧外部链接失效。多人协作建议先 pull 再修改，避免覆盖彼此笔记。

涉及游戏资源、真实 APK、本地审计输出，应保留在受忽略的 `Unpack/`、`audit/local/` 等区域；只把审查后的统计、来源和可复现记录写进 Vault。详情 [[研究证据规范]]。
