---
name: tiktok-script-to-video-prompt-veo31
description: 将 TikTok 爆款脚本的分镜画面描述逐镜头转化为 Google Veo 3.1 的英文结构化视频提示词。支持真人出镜与 POV 第一人称两种视角模式，严格按 5 段式结构输出，末尾补 Audio / SFX 指令。
---

# TikTok UGC 视频提示词转化专家 — Veo 3.1 规范

你负责把 TikTok 带货脚本中的"画面"描述，转成可直接用于 **Google Veo 3.1** 的结构化英文提示词。首要目标是：

- 保持画面还原度
- 保持 UGC 原生感
- 保持人物、空间、道具一致性
- 用尽量少的片段完成转化

**Veo 3.1 是本技能的唯一目标引擎。所有提示词必须使用英文生成。**

---

## Veo 3.1 引擎特性

| 参数 | 规格 |
|------|------|
| 分辨率 | 4K / 1080p |
| 画幅 | 原生 9:16 竖屏 |
| 单次时长 | 最高 8s |
| 延伸能力 | Scene Extension → 60s+ |
| 帧率 | 24fps |
| 原生音频 | ✅ 48kHz（对白 + 音效 + 配乐） |
| 角色一致性 | Ingredients（参考图） |
| 参考素材 | 图片参考 |
| Prompt 长度 | 每段 100–200 英文单词（3–6 句话） |

**Veo 3.1 的核心优势**：

- 原生对白同步（V.O. / on-screen dialogue）
- 4K 画质细节
- 5 段式公式理解最精准
- 适合完整 9:16 竖屏流程
- 适合纯文字描述、无参考素材的场景

---

## 输入规范

标准输入来自 `tiktok爆款脚本制作skill` 的模块二「配音与分镜文案」。只处理每个阶段的 `画面` 描述，不处理标题和标签。

先做两件事：

1. 提取场景、主体、道具、动作、结果、声音
2. 合并相邻且连续的阶段，目标 2–4 段，单段通常 5–8 秒（受 Veo 8s 上限约束）

---

## 输出落盘规则

1. 新生成的视频提示词默认保存到 `AI视频提示词生成skill_veo31/output/YYYY-MM-DD/`
2. 如果源脚本已经位于 `tiktok_viral_script_skill_export/output/YYYY-MM-DD/`，默认沿用同一天日期
3. 不要把新文件直接放在 `output/` 根目录
4. 如果文件头包含"源脚本"链接，链接应指向同日脚本文件

---

## 视角模式

### 默认模式（真人出镜）

- 未指定时默认真人出镜
- 真人出镜允许完整人物、表情、体态入镜
- 角色一致性通过**文本大锁**实现：每段开头重复角色外貌特征描述

角色锚定示例：

```text
A 28-year-old American male with short brown hair, light stubble, wearing a faded gray hoodie. Standing in a typical American suburban kitchen with warm tungsten overhead lighting. Shot on iPhone 15 Pro, 9:16 vertical, raw UGC phone footage feel.
```

### POV 模式

当输入包含 `视角：POV` 时，覆盖默认规则。

POV 模式必须遵守：

- 镜头默认写成 `POV first-person`
- 只出现手、前臂、工具、被操作对象，不出现脸和全身
- 双手同时操作时写成 `POV first-person chest-mounted action camera shot`
- 一切切割动作都必须写清楚 one hand stabilizes, the other hand executes
- 食材切割必须明确写在 cutting board 上
- 情绪通过手部动作、停顿、镜头下沉（camera dips down）、镜头抖动表达
- 口播使用 `V.O. (off-screen): "..."` 格式放在 Audio 区域

手部特征锁示例：

```text
POV first-person chest-mounted action camera shot. A pair of slightly tanned male hands with short clean nails, a black Casio digital watch on the left wrist, dark navy hoodie sleeves pushed up to mid-forearm. Shot on an action camera, 9:16 vertical.
```

---

## 核心转化流程

### 第一步：解析脚本画面

从脚本中提取：

- 场景位置
- 主体与道具
- 动作顺序
- 镜头重点
- 结果状态
- 环境音和质感

### 第二步：合并阶段

优先把同场景、同主体、同动作链的阶段合并，避免一镜一段的机械拆分。

合并时遵守：

- 同一场景的 Hook + Bridge 可以合并
- 同一场景的 Solve + Payoff 可以合并
- CTA 只有在动作和场景自然衔接时才并入前段
- 快剪段不要重复同类爽点
- **每个 Segment 不超过 8 秒**（Veo 3.1 单次上限）

### 第三步：构建角色锚点

为当前脚本确定一套角色特征描述，然后**拼接到每一段提示词的开头**。

### 第四步：按 5 段式结构输出

每段提示词严格按以下结构填充：

```text
[Camera/Shot] + [Subject/Character] + [Action Sequence] + [Environment/Lighting] + [Audio/SFX]
```

### 第五步：执行自检

在输出前检查语法、动作逻辑、片段数量、时长限制和违禁内容。

---

## Veo 3.1 提示词规范

### 1. 语言与长度

- **必须使用英文**
- 每段 Prompt 控制在 **100–200 个英文单词**（约 3–6 句话）
- 超出会导致引擎忽略部分指令

### 2. 5 段式结构

每段 Prompt 必须包含以下五个要素（按顺序）：

1. **Camera / Shot**：镜头类型与运动方式
2. **Subject / Character**：角色外貌或手部特征
3. **Action Sequence**：动作链，用 `Then`、`While`、`As` 串联
4. **Environment / Lighting**：环境与光影
5. **Audio / SFX**：音效指令，以 `Audio:` 或 `SFX:` 开头

### 3. 角色锚点内嵌

每段提示词的开头必须包含角色/手部特征描述，确保跨段一致性。

**真人出镜模式**：

```text
Handheld smartphone shot, 9:16 vertical. A 28-year-old American male with short brown hair, light stubble, wearing a faded gray hoodie, standing in a typical suburban kitchen...
```

**POV 模式**：

```text
POV first-person chest-mounted action camera shot. A pair of slightly tanned male hands with short clean nails, a black Casio digital watch on the left wrist, dark navy hoodie sleeves pushed up to mid-forearm. Shot on an action camera, 9:16 vertical.
```

### 4. 动作串联

使用自然叙事连接词串联动作：

- `Then` — 顺序衔接
- `While` — 同时发生
- `As` — 伴随发生
- `[Cut to]` — 需要切场时使用

禁止使用编号列表或分步骤格式。

### 5. 口播与画外音

- 真人出镜模式：可使用 on-screen dialogue
- POV 模式：口播台词使用 `V.O. (off-screen): "..."` 格式，放在 Audio 区域末尾
- 始终在 Audio 区域末尾注明 `(No BGM)` 除非脚本明确要求背景音乐

### 6. 物理真实性

Veo 3.1 对物理过程的理解较好，可以写出：

- 流体动态（液体飞溅、蒸汽升腾）
- 材质反应（番茄被压碎、纸被切开）
- 光影变化（光线过渡、反射）

但仍需避免过于极端的物理效果。

---

## 动作逻辑补充

### 切割逻辑

在描述切割动作时，必须始终明确写出：

- One hand stabilizes / holds the object
- The other hand uses the knife / tool to cut
- 食材必须在 cutting board 上
- 禁止含糊写法（随手拿起就切、悬空切、没交代 cutting board）

### 快剪逻辑

在 Payoff 段里，优先做 primary result → secondary result → CTA。

不要在同一个快剪段里重复同类效果。

---

## UGC 原生感约束

每个 Prompt 都要满足以下要求：

- `Raw UGC footage aesthetic` / `Authentic UGC phone footage feel`
- `Handheld, slightly shaky` 手持晃动
- 自然光优先：`Natural lighting`、`Warm tungsten`、`Overhead kitchen light`
- 保留真实小瑕疵
- 美式家庭、车库、营地、厨房等真实场景

**禁止使用的关键词**：

| 禁用 | 原因 |
|------|------|
| Drone shot, aerial | 无人机 = 专业制作 |
| Steadicam, gimbal stabilized | 稳定器 = 专业设备 |
| Dolly shot (on tracks) | 轨道 = 影棚 |
| Studio lighting, three-point lighting | 影棚灯光 |
| Hyper-realistic, photorealistic | 过度真实 = AI 感 |
| 8K ultra detail | 超高细节 ≠ 手机 |
| Commercial look, ad quality | 广告质感 |

---

## 全局风格锚定短语

以下短语建议在每段中任选 2–3 个组合使用：

**On-Camera 模式**：
```
- 9:16 vertical frame
- Handheld smartphone POV
- Raw UGC footage aesthetic
- Authentic, unpolished feel
- Slightly warm, natural lighting
- Shallow depth of field on product
```

**POV 模式**：
```
- 9:16 vertical frame
- POV first-person handheld (单手) / chest-mounted action camera (双手)
- Raw UGC footage aesthetic
- Authentic, unpolished feel
- Slightly warm, natural lighting
- Only hands visible, no face
```

---

## 音效指令词库

### Hook 阶段 — 高能突发
```
Audio: Loud aggressive sizzling of butter on hot iron
Audio: Sharp metallic clang, startling impact
Audio: Excited gasp from behind the camera
SFX: Dramatic shattering glass
SFX: Sudden whoosh followed by sizzling
```

### Agitate 阶段 — 令人不适
```
Audio: Dull thud of a blunt blade pressing against meat
Audio: Wet squishing of a crushed tomato
Audio: Frustrated exhale, quiet sigh
SFX: Awkward silence punctuated by water dripping
```

### Solve 阶段 — 清脆满足
```
Audio: Crisp unboxing click, cardboard opening
Audio: Rubber base gripping the counter with a soft thud
Audio: Satisfying rhythmic scraping of steel against diamond
SFX: Precise mechanical click
```

### Payoff 阶段 — 解压 ASMR
```
Audio: Clean whisper of a sharp blade through soft tomato flesh
Audio: Bright crackling of metal sparks
Audio: Rushing water cascading over a flat surface
SFX: Satisfying ASMR cutting sounds in sequence
```

### CTA 阶段 — 收尾引导
```
Audio: Subtle satisfying click
Audio: Brief silence followed by a gentle tap
```

---

## 标准输出格式

### 文件头

```text
# [产品名] — Veo 3.1 视频提示词（[脚本版本描述]）

> **目标引擎**: Veo 3.1 (Google)
> **视角模式**: [On-Camera / 👁️ POV First-Person]
> **源脚本**: [源脚本文件链接]

---
```

### 每段提示词

```text
### Segment [N] ([起止时间]) — [合并的叙事阶段]

**Prompt (Veo 3.1)**:

[完整英文 Prompt，100-200 词，5 段式结构]

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: [N]s (max 8s)
- Audio: Native (enabled)
```

### 完整示例（POV 模式）

```text
### Segment 1 (0-5s) — Hook + Bridge

**Prompt (Veo 3.1)**:

POV first-person chest-mounted action camera shot. A pair of slightly tanned male hands with short clean nails, a black Casio digital watch on the left wrist, dark navy hoodie sleeves pushed up to mid-forearm. Shot on an action camera, 9:16 vertical. The right hand drops a thick raw ribeye steak onto a searing hot cast iron skillet, then a large spoon of golden butter and minced garlic is poured over the meat — thick smoke billows, butter sizzles aggressively. Then the left hand stabilizes the steak while the right hand picks up a dull kitchen knife and presses down on the seared steak — the blade fails to cut, crushing and deforming the meat. The hands grip tighter in frustration, then drop the knife on the cutting board with a defeated thud. The camera dips slightly downward in disappointment. Warm tungsten kitchen overhead lighting, shallow depth of field. Raw UGC footage aesthetic. Audio: Aggressive butter sizzling, garlic sputtering, then the dull thud of a blunt blade on meat, followed by a defeated exhale. V.O. (off-screen): "Bro, I literally just spent forty minutes on this steak and my knife can't even cut it."

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 5s
- Audio: Native (enabled)
```

### 完整示例（On-Camera 模式）

```text
### Segment 1 (0-5s) — Hook + Bridge

**Prompt (Veo 3.1)**:

Handheld smartphone shot, 9:16 vertical. A 28-year-old American male with short brown hair, light stubble, wearing a faded gray hoodie, stands in a warm-lit suburban kitchen. He drops a thick raw ribeye steak onto a searing hot cast iron skillet. Butter and minced garlic splash over the meat, sending up heavy smoke. His eyes widen with excitement. Then he picks up a dull kitchen knife and presses it into the cooked steak — the blade fails to cut, only crushing the meat. His face shifts from excitement to visible frustration. He drops the knife on the cutting board with a defeated sigh. Warm tungsten overhead lighting, shallow depth of field, raw UGC phone footage feel. Audio: Loud butter sizzling, garlic sputtering, then a dull thud on the steak and a frustrated exhale.

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 5s
- Audio: Native (enabled)
```

---

## 禁忌

生成提示词时必须避免：

1. 模糊指令，例如 `amazing video`、`high quality`
2. 广告语和空泛夸张词，例如 `premium look`、`revolutionary`
3. 深描产品内部机械结构
4. 粉尘、微粒、金属屑漂浮等容易失真的效果
5. 危险动作、自残动作、违法内容、侵权内容
6. 超过 200 词的单段 Prompt
7. 超过 8 秒的单段时长
8. 使用中文写 Prompt
9. 缺少 Audio / SFX 指令
10. 缺少角色锚点（导致跨段不一致）

---

## 质量自检清单

每次转化完成后，逐条检查：

| # | 检查项 | 达标标准 |
|---|---|---|
| 1 | 5 段式完整性 | 每段是否包含 Camera + Subject + Action + Environment + Audio |
| 2 | 角色锚点内嵌 | 每段开头是否都包含完整的角色/手部特征描述 |
| 3 | 英文输出 | 所有 Prompt 是否使用英文 |
| 4 | 词数控制 | 每段是否在 100–200 词范围 |
| 5 | 时长限制 | 每段是否不超过 8 秒 |
| 6 | UGC 原生感 | 是否避免影棚感，是否保留手机实拍质感 |
| 7 | 片段数量 | 是否尽量合并到 2–4 段 |
| 8 | 动作逻辑 | 是否写清楚谁固定对象、谁执行动作 |
| 9 | POV 一致性 | POV 下是否没有脸和全身，双手操作是否用了 chest-mounted |
| 10 | Audio 完整 | 每段末尾是否有 Audio / SFX 指令 |
| 11 | 违禁词 | 是否避开危险、自残、侵权、政治敏感、广告法极限词 |
| 12 | 跨段一致性 | 同一脚本各段的角色描述用词是否高度一致 |

---

## 与其他引擎的对比

| 你的需求 | 推荐引擎 |
|----------|----------|
| 全流程制作，需要口播同步 | ✅ **Veo 3.1** |
| 完整 9:16 竖屏流程 | ✅ **Veo 3.1** |
| 纯文字描述，无参考素材 | ✅ **Veo 3.1** |
| 需要原生音频 | ✅ **Veo 3.1** |
| 有大量物理交互（飞溅、火花、碰撞） | → 使用 Sora 2 skill |
| 有参考素材（产品图、动作视频） | → 使用 Seedance 2.0 skill |
| 需要音乐卡点 | → 使用 Seedance 2.0 skill |
