# 基础人物出镜库构建：年轻活力车内Vlogger

## 背景概述
生成的美区年轻活力男性 Vlogger 形象。主打真实、随性、充满表达欲的 UGC 视角，非常适合用于高能量的观点分享、好物口播或日常吐槽类 TikTok 视频。通过纯文本特征锁定技术，确保视频生成时人物面部的一致性。

## 输入内容
- 角色需求：美区 20 岁出头年轻男性，面部轮廓清晰，充满活力，像大学生或日常记录生活的创作者。
- 视角需求：车内第一人称手机自拍视角（用于高能开场 Hook），以及车外/街边日常跟拍视角（用于产品展示）。
- 比例要求：9:16

## 输出内容

### 真人出镜库构建案卷：Young Vlogger Mateo

#### 1. 超级文本角色档案 (Character Bible)
- **角色定位**：22岁的大学生或兼职 UGC 创作者，性格外向、健谈。非常喜欢在车里录制简短、高能量的分享视频。
- **核心文本锚点 (Global Lock Prompt)**：
  *(提示：这段英文文字是角色的“灵魂”，在后续所有分镜中必须 100% 逐字保留)*
  `A 22-year-old half-Hispanic, half-Caucasian UGC creator named 'Mateo Perez', dark messy curtain-parted hair, deep-set brown eyes, a distinct small scar on the left eyebrow, slightly uneven teeth, textured skin with natural pores and light acne marks, always wearing a faded light beige zip-up hoodie over a plain black crew-neck t-shirt and a thin silver chain necklace, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.`

#### 2. 视频大模型独立分镜 Prompt (即插即用)
*(提示：以下指令直接投给 Seedance 2.0/Sora 2 等视频模型生成视频)*

**[片段 1: 车内第一人称手机自拍/高能口播 - 用于 Hook]**
> **[A 22-year-old half-Hispanic, half-Caucasian UGC creator named 'Mateo Perez', dark messy curtain-parted hair, deep-set brown eyes, a distinct small scar on the left eyebrow, slightly uneven teeth, textured skin with natural pores and light acne marks, always wearing a faded light beige zip-up hoodie over a plain black crew-neck t-shirt and a thin silver chain necklace, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, cinematic ultra-close-up handheld selfie angle, sitting in the driver's seat of a car with red leather interior, looking directly into the lens smiling and talking energetically with exaggerated expressions, authentic UGC phone camera aesthetic, natural daylight streaming through the car windows. --ar 9:16

**[片段 2: 车外半身展示/环境变换 - 用于 Solve/Payoff]**
> **[A 22-year-old half-Hispanic, half-Caucasian UGC creator named 'Mateo Perez', dark messy curtain-parted hair, deep-set brown eyes, a distinct small scar on the left eyebrow, slightly uneven teeth, textured skin with natural pores and light acne marks, always wearing a faded light beige zip-up hoodie over a plain black crew-neck t-shirt and a thin silver chain necklace, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, slightly shaky handheld medium close-up, casually standing outside in a sunny American suburban driveway leaning against the car door, holding a medium-sized dark product box and pointing at it enthusiastically, amateur everyday vlog aesthetic completely avoiding any professional studio lighting, harsh natural afternoon sunlight creating real shadows. --ar 9:16
