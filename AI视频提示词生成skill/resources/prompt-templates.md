# 使用模板 & 前置检查清单

## ⚠️ 使用前必读：前置检查

在使用本技能前，请逐条确认以下条件是否满足：

| # | 检查项 | 状态 | 说明 |
|---|---|---|---|
| 1 | **TikTok 脚本已生成？** | ☐ | 必须先使用 `tiktok爆款脚本制作skill` 生成完整脚本（含三模块：标题+分镜+标签） |
| 2 | **脚本包含「画面」描述？** | ☐ | 每个阶段必须有 `> **画面**：` 标记的画面描述，这是转化的核心输入 |
| 3 | **已确定目标引擎？** | ☐ | 默认 Veo 3.1；如有物理交互需求用 Sora 2；有参考素材用 Seedance 2.0 |
| 4 | **参考素材已准备？（Seedance 专用）** | ☐ | 如使用 Seedance 2.0：需要产品图（@Image）、动作参考视频（@Video）或音乐（@Audio） |

> [!CAUTION]
> 如果脚本中缺少「画面」描述（只有口播文案），本技能将无法正常工作。请先回到 `tiktok爆款脚本制作skill` 补充画面描述。

---

## 📋 Prompt 模板

### 模板 1：完整转化（最大性能，推荐）

同时引用全部 4 个核心文件，一次性转化整套脚本：

```
@SKILL.md
@resources/script-conversion-template.md
@resources/tiktok-ugc-style-guide.md
@resources/parameter-cheatsheet.md

请将以下 TikTok 脚本的 Script 1 逐镜头转化为 Veo 3.1 视频提示词。
严格按照 SKILL.md 的转化流程执行，每个镜头使用 5 段式公式，并在最后执行质量自检清单。

---
[粘贴完整脚本内容，或 @引用脚本输出文件]
```

---

### 模板 2：指定引擎转化

#### Sora 2（物理交互场景）
```
@SKILL.md
@resources/script-conversion-template.md
@resources/tiktok-ugc-style-guide.md

请用 Sora 2 格式转化以下脚本，重点突出物理交互效果（飞溅、火花、碰撞、流体），使用自然语言叙事法和 [Cut to] 转场。

---
[粘贴脚本内容]
```

#### Seedance 2.0（有参考素材）
```
@SKILL.md
@resources/script-conversion-template.md
@resources/tiktok-ugc-style-guide.md

请用 Seedance 2.0 格式转化以下脚本。我已准备以下参考素材：
- 产品正面照（用作 @Image1）
- 操作演示视频（用作 @Video1）

请在提示词中使用 @标签语法指代这些素材，并标注每个 @标签的用途。

---
[粘贴脚本内容]
```

---

### 模板 3：单阶段精修

当只需优化某个特定阶段时使用：

```
@SKILL.md
@resources/script-conversion-template.md
@resources/tiktok-ugc-style-guide.md

只转化以下脚本的 [Hook / Agitate / Solve / Payoff / CTA] 阶段（[时间段]），
生成 3 个不同镜头风格的 Veo 3.1 版本，方便我对比选择。

---
[粘贴该阶段的画面描述]
```

---

### 模板 4：多引擎对比

对同一镜头生成多引擎版本，方便选择最优方案：

```
@SKILL.md
@resources/parameter-cheatsheet.md

请将以下脚本的 [阶段名] 阶段同时转化为 Veo 3.1、Sora 2、Seedance 2.0 三种格式，
并列出每个引擎版本的优劣势对比，帮我选择最佳方案。

---
[粘贴该阶段的画面描述]
```

---

### 模板 5：POV 视角转化

使用 POV 第一人称视角（镜头=用户眼睛，不出脸）：

```
@SKILL.md
@resources/script-conversion-template.md
@resources/tiktok-ugc-style-guide.md
@resources/parameter-cheatsheet.md

视角：POV

请将以下 TikTok 脚本的 Script 1 逐镜头转化为 Veo 3.1 视频提示词。
使用 POV 第一人称视角，镜头就是用户的眼睛，画面中只出现手和操作。
使用「手部特征锁」代替「人物文本大锁」，口播使用画外音方式。
严格按照 SKILL.md 的 POV 模式转化规则执行。

手部特征设定：[描述手部特征，如：一双男性手，肤色偏白，戴黑色运动表，灰色连帽衫袖口]

---
[粘贴完整脚本内容，或 @引用脚本输出文件]
```

---

## 🔔 常见问题提醒

| 问题 | 原因 | 解决方案 |
|---|---|---|
| 生成的画面有"广告感" | 未引用 `tiktok-ugc-style-guide.md` | 添加 @引用该文件 |
| 镜头语言和音效不够精准 | 未引用 `script-conversion-template.md` | 添加 @引用该文件 |
| 提示词过长（>150词） | 单段内容太多 | 拆分为多个独立镜头 |
| 相邻镜头不连贯 | 缺少场景一致性描述 | 在 Prompt 中要求"保持同一场景和道具" |
| Seedance 效果差 | 参考素材质量低 | 使用干净背景、高清的产品图和动作视频 |
| POV 模式出现了脸部描述 | 未正确切换到 POV 模式 | 确认输入中包含 `视角：POV` 指令 |
| POV 口播像是角色在说话 | 未使用画外音方式 | 改用 `画外音旁白：` 或 `V.O. (off-screen):` 格式 |
