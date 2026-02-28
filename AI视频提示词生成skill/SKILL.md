---
name: tiktok-script-to-video-prompt
description: 将 TikTok 爆款脚本的分镜画面描述，逐镜头转化为 AI 视频生成模型（Seedance 2.0 / Veo 3.1 / Sora 2）的结构化提示词。配合 tiktok爆款脚本制作skill 使用，形成「脚本创作 → 视频提示词 → AI视频生成」的完整工作流闭环。
---

# TikTok UGC 视频提示词转化专家

将 TikTok 爆款脚本中的每一个分镜画面描述，精准转化为可直接投喂 AI 视频生成模型的结构化提示词。

---

## 输入规范：TikTok 脚本格式

本技能的标准输入来自 **tiktok爆款脚本制作skill** 的输出，其格式为三模块结构：

1. **模块一：爆款标题** — 3 个心理学驱动的 TikTok 标题
2. **模块二：配音与分镜文案** — 2 套完整脚本，每套采用**可变叙事框架**（不再固定为五步结构）。脚本制作 skill 会根据产品特性智能匹配以下框架之一或组合：
   - **框架 A：痛点反转型** — Hook → Agitate → Solve → Payoff → CTA
   - **框架 B：诱饵调包型** — Hook → Agitate → Solve → Payoff → CTA
   - **框架 C：极限视觉验证型** — Hook → Solve → Payoff → Value Prop → CTA
   - **框架 D：多场景轰炸型** — Hook → Trust → Solve → Payoff → CTA
   - 也可能跨框架组合，阶段数量和时长均不固定
3. **模块三：精准标签策略** — 10 个分层标签

**你只需要关注模块二中每个阶段的「画面」描述部分**，将其转化为视频提示词。

> [!IMPORTANT]
> **少量片段原则**：不要将每个脚本阶段都 1:1 转化为独立片段。应尽可能**合并相邻阶段**，生成最少数量的视频片段（通常 2-4 段即可覆盖整个脚本）。单个片段最长可做到 **15 秒**。片段过多会严重破坏生成视频的空间画面连续性和人物一致性。

---

## 核心转化流程

### 第一步：解析脚本分镜

从输入脚本中提取每个时间段的 **画面描述**（标记为 `> **画面**：` 的内容），识别：
- 场景设定（室内/室外、厨房/工作台等）
- 主体与道具（人物、产品、食材等）
- 动作序列（切、磨、倒、喷等）
- 视觉特效（特写、慢动作、延时等）
- 文字叠加元素（作为后期参考，不写入提示词）

### 第二步：合并阶段 → 生成少量长片段提示词

**核心策略：合并而非逐段转化。** 将脚本中相邻的、场景连贯的阶段合并为一个视频片段，使片段总数最小化（目标 2-4 段），单段最长 15 秒。

**合并规则**：
- 同一场景/同一主体的连续阶段应合并为一段（如 Hook + Agitate 都在厨房 → 合并为一段）
- 场景切换点（如从厨房到户外）才断开为新片段
- CTA 阶段如果只是口播 + 静态产品画面，可与前一阶段合并
- **每个合并后的片段**使用 **5 段式公式** 生成提示词：

**[镜头语言 (Cinematography)] + [主体 (Subject)] + [动作序列 (Action Sequence)] + [环境/光影 (Context)] + [风格/音频 (Style & Audio)]**

> 注意：合并后的「动作序列」使用 "First... Then... Finally..." 或 `[Beat 1]...[Beat 2]...` 串联多个动作节拍。

### 第三步：适配目标引擎

根据用户指定的目标模型（默认 Seedance 2.0），应用引擎专属语法和最佳实践。

---

## TikTok 美区 UGC 原生感视觉风格约束 (全局)

要在 Seedance 2.0 中完美复刻**美区原生感（Authenticity）**，核心在于通过提示词去“对抗”过度的 AI 精致感，模拟出美国用户最信任的“真人、手机、生活化”特质。在每个 Prompt 中必须隐式或显式贯穿以下风格关键词，**在提示词中反复强调 Imperfect, Authentic, Handheld 这三个词**：

### 1. 视觉上的“去 AI 化” (De-AI Visuals)
美区用户对滤镜感重、磨皮过度、光影过于完美的视频非常警惕。
- **手机拍摄质感**：不要用 "Cinematic" 或 "4K"。使用 `Shot on iPhone 15 Pro`, `Phone camera quality`, `Handheld shakiness`, `Vertically filmed (9:16)`。
- **真实不完美的皮肤**：`Natural skin texture`, `Visible pores`, `Non-filtered look`, `Real skin imperfections`。
- **生活化光影**：避免影棚光，追求生活光。使用 `Natural window light`, `Overhead room lighting`, `Direct sunlight with shadows`。

### 2. 场景的“美区本土化” (Domestic Setting)
让背景一眼看上去就像在美国的普通社区或家庭。
- **室内**：`American suburban kitchen with wooden cabinets`, `Messy bedroom background`, `In front of a bathroom mirror`。
- **室外**：`Driveway of a suburban house`, `American supermarket aisle`, `Public park bench`。

### 3. 角色形象的“邻家感” (Relatability)
美区 UGC 成功的关键在于“像我认识的一个朋友”，避免模特般的僵硬，追求基础款与丰富表情。
- **美区基础穿搭**：`Wearing a simple oversized hoodie`, `Messy bun hairstyle`, `Casual workout clothes`。
- **丰富生活化表情**：`High energy`, `Exaggerated facial expressions`, `Talking to the camera as a friend`。

> **关键原则**：“糙”一点往往比“美”一点转化率更高。提示词必须让生成画面看起来像**真人用手机拍的真实可信的 UGC 内容**，而不是专业广告片。绝对避免任何"影棚感"、"广告感"的抽象词汇。

---

## 功能角色 → 镜头语言映射表

不同的叙事功能角色有其独特的镜头和情绪风格。无论脚本采用哪种框架，都按阶段的**功能角色**匹配镜头语言：

| 功能角色 | 常见阶段名 | 推荐镜头语言 | 推荐光影/氛围 | 推荐音效方向 |
|---|---|---|---|---|
| **注意力捕获** | Hook | Extreme close-up, Dutch angle, whip pan, POV handheld | 高对比度、饱和色彩、暖色调光源 | 突发性声效：滋滋声、碰撞声、惊叹声 |
| **痛点/冲突** | Agitate, Trust | Medium shot, slightly shaky, unflattering angle | 偏冷色调、略暗的环境光 | 沮丧声效：叹气、刀具刮擦声、不协调声 |
| **产品登场/解决** | Solve | Smooth tracking shot, reveal shot, medium close-up | 逐渐变暖的色温、柔和自然光 | 满足感声效：产品开箱声、清脆操作声 |
| **效果展示/高潮** | Payoff, Value Prop | Close-up montage, slow-mo insert, orbit shot | 温暖金色光、高饱和、充足光线 | 解压声效：切割声、水冲声、令人满足的 ASMR |
| **行动号召** | CTA | Static medium shot, product centered, clean frame | 明亮均匀光、干净背景 | 轻快音效、结合口播停顿的静默 |

---

## 各大引擎的转化策略

### 1. ByteDance Seedance 2.0 (即梦 Dreamina)（默认首选）

**最适合场景**：展现了强大的多模态参考能力，支持混合多图文参考。但必须遵循**“精准控制，少即是多 (Less is More)”**的原则。

**转化规则**：
- **多模态参考（References）的极简准则**：
  - **不该参考的（通用元素）**：切忌给模型喂食太多参考！比如“森林”、“树影”、“满地垃圾的营地”、“番茄”、“白纸”、“普通的咖啡杯”——一旦传入这些普通图片/视频，模型会不可避免地提取材质/色调/构图等无关特征，从而破坏整体的统一 UGC 手机实拍质感。这些通用对象完全依靠 Prompt 文字自身即可完美处理（去 AI 化泛化）。
  - **唯一必须参考的（强视觉控制）**：
    - ① **核心产品特写/特定材质**：例如 `181N` 这类有特定全龙骨钻样纹理和真皮皮鞘的产品，必须给图片，否则 AI 会画错。(`@Image`)
    - ② **难以形容的关键交互动态**：比如第一人称非常用力的剁砍动作、“刀锋切不进哪怕一寸”这种特殊物理交互过程或特定的 CTA 手指引导，这些口述很难传达力量感时，必须给视频参考。(`@Video`)
  - 🚫 **严禁参考的（情绪与神态）**：**绝对不要使用 `@Video` 来参考角色的表情/情绪（如沮丧、兴奋）**。多模态参考视频中的演员长相会干扰文本生成的角色脸部特征，进而导致严重的“脸崩”与一致性破坏。角色的微表情、神态和情绪，**必须完全由 Prompt 文本详细描述**（例如 `expressing intense frustration`, `a confident expression`, `looking extremely annoyed`）。
  - **角色锚定（Character Anchoring）**：Seedance 2.0 因风控不支持上传真人照片。最佳策略是利用构建好的 **“真人出镜超级文本锁 (Global Text Lock Prompt)”**（如一个设定好长相、年龄、服装和打光的详细英文人物小传），将其无缝拼接在每一次 `Prompt` 指令的最开头。
  - **音频处理**：完全舍弃 `@Audio` 标签参考！只需在段末使用 `Audio:` 文字去详细描述带有环境白噪音的原声环境以及配合何种情绪的美区男/女声音效即可。
- **完美指代语法 (Referential Prompting)**：
  - 务必将分配好的 `@ImageN` 或 `@VideoN` 标签，像呼吸一样融合并穿插进你的自然流 Prompt 文本中（例如：`tracking the person like @Video1, as they rub a dull hunting knife (@Image1) against a ceramic mug`）。

**输出格式**：
```text
### Segment [N]: [覆盖的阶段名] ([合并后的时间段])

**Prompt (Seedance 2.0)**:
[[人物文本大锁 (Character Bible Prompt)] 接着进行具体分段描绘，自然平滑地使用 @标签指代核心互动，结构化描述画面细节，强调手持感与不完美真实感 (Imperfect, Authentic, Handheld)]
Audio: [详细英文描述这段所需的环境底噪和声音情绪，完全不用 @标签]

**References**:
- @Video1: [详细描述保留视频哪一部分运动规律/物理反馈作为强参考]
- @Image1: [详细描述指定了必须还原哪个核心产品的复杂组件特性]
```

**原生感实战提示词模板参考**：
- **美妆/护肤品真人实测 (Skin Care Test)**：
  - **Prompt**: `让角色 @Image1 在浴室镜子前使用 @Image2。模仿视频 @Video1 的手持拍摄感。画面要有手机自拍的颗粒感和轻微晃动。光影是浴室的暖黄灯光。强调角色真实的皮肤纹理。角色表情自然，带一点发现好物的惊喜感。Natural home environment, no studio lights, real person vibe.`
- **家居/生活好物分享 (Home Gadget)**：
  - **Prompt**: `第一人称视角 (POV) 展示产品 @Image1 在凌乱的厨房台面上。配合 @Audio1 的语音，角色在画面边缘露出一部分手部动作，展示产品的使用细节。镜头对焦要有手机自动对焦的起伏感。Authentic American home background, messy but real, iPhone video quality.`

### 2. OpenAI Sora 2 (Pro)

**最适合场景**：需要复杂物理交互（流体、重力、碰撞）或戏剧性分镜切换的镜头

**转化规则**：
- 使用 **自然语言叙事法**，用 "Then", "While", "As" 连接多个连续动作
- 强调 **物理交互细节**（如：油花飞溅、金属碎屑、水流冲刷）
- 可在一段 Prompt 中使用 `[Cut to]` 实现场景切换
- 使用 `@Cameo` 锁定同一角色跨镜头出现
- 描述具体音色：如 "Deep baritone voice", "Sharp metallic clang"

**输出格式**：
```text
### Segment [N]: [覆盖的阶段名] ([合并后的时间段])

**Prompt (Sora 2)**:
[完整英文提示词，自然语言叙事风格，100-200词]

**Video Config**:
- Resolution: 1080p
- Duration: [5-15]s
- Framerate: 24fps
- Audio: Native
```

### 3. Google Veo 3.1

**最适合 TikTok UGC 的原因**：原生 9:16 竖屏 + 4K 画质 + 原生音频生成（同步对白与音效）

**转化规则**：
- 严格按照 5 段式公式，镜头语言放最前面
- 利用 **声音景观 (Sonic Landscaping)**：每段 Prompt 末尾必须包含 `Audio:` 或 `SFX:` 指令——模型会反向补全视觉细节
- 单段提示词控制在 **100-200 词**（合并片段可适当增加词数）
- 每个提示词对应脚本中 **一个或多个合并后的阶段**，时长 5-15 秒
- 使用 **Scene Extension** 功能将多段串联

**输出格式**：
```text
### Segment [N]: [覆盖的阶段名] ([合并后的时间段])

**Prompt (Veo 3.1)**:
[完整英文提示词，100-200词]

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: [5-15]s
- Audio: Native (enabled)
```

---

## 主流引擎对比矩阵（TikTok 场景）

| 特性 | Seedance 2.0 (ByteDance) | Sora 2 (OpenAI) | Veo 3.1 (Google) |
| --- | --- | --- | --- |
| **核心优势** | 强大的多模态参考能力 (图/频/音混合) | 物理模拟：极其逼真的流体与碰撞 | 画质与音频：4K + 原生声画同步 |
| **TikTok 最佳场景** | 通过多参考图/视频获取最高画质，产品展示 | 特效镜头、戏剧性物理交互 | 全流程制作、需要同步对白的完整视频 |
| **音频表现** | 音画对齐（基于音频参考卡点和Lip-sync） | 物理碰撞音效逼真 | 对白同步（原生人声对话最佳） |
| **竖屏支持** | ✅ | ✅ | ✅ 原生 9:16 |
| **上手难度** | ⭐⭐⭐ (需学习 @标签语法) | ⭐⭐ (自然语言描述) | ⭐⭐⭐ (需严格 5 段式) |

---

## 高阶技巧

### 时间线提示词 (Timeline Prompting)

对于需要精确卡点的脚本（如快剪 Payoff 段），可以使用时间线提示词增强控制力：

```text
[0s-2s] Extreme close-up of a rusty knife blade, harsh overhead light. SFX: Metallic scraping.
[2s-5s] Handheld tracking shot, the blade slides across a diamond stone surface, sparks fly. Audio: Satisfying grinding sound.
[5s-8s] Close-up of the blade slicing through a ripe tomato effortlessly, juice running. Audio: Clean crisp cut.
```

### 多节拍叙事 (Multi-Beat Storytelling)

在 Payoff 阶段（通常包含多个快速展示镜头），使用多节拍技巧：
- 用 "First", "Then", "Finally" 串联多个产品用途展示
- 用 `[Cut to]` 分割不同场景（如：厨房→户外→浴室）
- 确保物理逻辑连贯（同一把刀不能瞬间出现在不同场景，除非明确使用 `[Cut to]`）

### 音频策略

TikTok 的音效可以极大提升完播率：
- **Hook 阶段**：突发性高能声效（滋滋声、碰撞声 + 惊叹语气）
- **Agitate 阶段**：令人不适的声效（刮擦声、沉重叹气）
- **Solve & Payoff**：令人满足的 ASMR 声效（清脆切割声、水流声）

---

## 视频提示词的禁忌 (Negative Advice)

生成提示词时必须 **避免**：

1. **模糊指令**：绝不使用 "amazing video"、"high quality"、"beautiful cinematic" 等玄学词汇。模型需要的是**物理描述**。
2. **文本过载**：每段 Prompt 严格 100-150 词（约 3-6 句话）。过长会导致指令被忽略。
3. **抽象概念**：视频模型无法处理"产品很棒"。替换为具象画面："The blade glides through the tomato with zero resistance, paper-thin slices falling perfectly"。
4. **广告感词汇**：避免 "professional studio", "commercial grade", "premium look" — 这些会偏离 UGC 真实感。
5. **AI 机械词汇**：禁止使用 Elevate, Unleash, Revolutionary, Streamline, Game-changing。
6. **违禁安全词汇（危险/自残行为）**：严禁生成任何包含伤害自己、自残或危险行为的词汇。视频生成模型及发布平台对此类词汇有严格风控。
   - **违禁词库包含（但不限于）**：假装切手指 (pretending to cut fingers)、用刀来刮臂毛 (scraping arm hair with a knife)、将刀锋对准自己 (pointing blade at oneself)、流血 (bleeding)、割伤皮肤 (cutting skin) 等。

---

## 质量自检清单

每次转化完成后，必须逐条检查：

| # | 检查项 | 达标标准 |
|---|---|---|
| 1 | **5 段式完整性** | 每个 Prompt 是否包含 [镜头语言] + [主体] + [动作] + [环境/光影] + [风格/音频] 全部 5 段？ |
| 2 | **UGC 风格一致性** | 是否避免了影棚感？是否使用了 handheld/natural lighting/smartphone POV 等 UGC 关键词？ |
| 3 | **长度控制** | 每段 Prompt 是否在 100-200 词之间？是否有过载风险？ |
| 4 | **音频指令** | 每段 Prompt 是否包含至少一条 `Audio:` 或 `SFX:` 指令？ |
| 5 | **片段数量与时长** | 是否将脚本合并为尽可能少的片段（目标 2-4 段）？每段是否在 5-15 秒之间？ |
| 6 | **引擎适配** | 是否遵循了目标引擎的特定语法和最佳实践？ |
| 7 | **空间/人物一致性** | 合并后的片段是否保持了场景和人物的连贯性？是否避免了不必要的片段切割？ |
| 8 | **禁用词检查** | 是否完全避免了模糊指令、广告词、AI 机械词，且**绝对没有包含任何危险/自残动作（如切手指、刮臂毛等违禁词汇）**？ |

---

## 快速参考链接
- [⭐ 使用模板 & 前置检查清单](resources/prompt-templates.md)
- [实战示例：TikTok 脚本转化为视频提示词](examples/text-to-video.md)
- [转化模板：分镜 → 提示词标准格式](resources/script-conversion-template.md)
- [UGC 风格指南：镜头/光影/音效词库](resources/tiktok-ugc-style-guide.md)
- [参数速查表：三大引擎规格对比](resources/parameter-cheatsheet.md)
