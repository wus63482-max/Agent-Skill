# 实战示例：POV 视角 — TikTok 脚本 → AI 视频提示词（Veo 3.1）

## 背景概述

本案例展示 **SHARPAL 168H/169H 金刚石磨刀石** 的 TikTok UGC 脚本如何使用 **POV 第一人称视角** 转化为 Veo 3.1 提示词。与第一个案例（同产品，真人出镜，多引擎对比）形成差异：
- **叙事视角**：POV 第一人称（镜头=用户眼睛，不出脸），而非真人出镜
- **角色锚定**：使用「手部特征锁」代替「人物文本大锁」
- **口播方式**：画外音 V.O.，而非角色嘴唇同步
- **情绪表达**：通过手部动作节奏和镜头运动，而非面部表情
- **关键学习点**：如何在不出脸的情况下保持 TikTok 的沉浸感和种草力

> **适用品类**：工具、电子、厨具、DIY、开箱、户外等操作导向型产品

---

## 手部特征锁 (Hand Anchor Prompt)

> **策略标注**：POV 模式下不需要脸部描述。此段手部特征描述拼接在每个 Segment Prompt 的开头，保证跨片段手部一致性。

```text
POV first-person handheld shot. A pair of slightly tanned male hands with short clean nails, a black Casio digital watch on the left wrist, dark navy hoodie sleeves pushed up to mid-forearm. Shot on iPhone 15 Pro, 9:16 vertical.
```

---

## Script 1 AI 视频提示词 (POV 版)

### 输入：SHARPAL 168H/169H 金刚石磨刀石脚本 (Script 1: 酱汁浇顶牛排诱饵调包版)

---

### Segment 1 (0-5s) — Hook + Bridge

> **策略标注**：Hook 诱饵画面（牛排）和 Bridge 痛点过渡（钝刀切不动）合并为一个片段。POV 模式下，镜头就是用户的眼睛——他亲手煎牛排、亲手发现刀钝了。惊叹/沮丧通过画外音和手部动作表达。

**Prompt (Veo 3.1)**:
```
POV first-person handheld shot. A pair of slightly tanned male hands with short clean nails, a black Casio digital watch on the left wrist, dark navy hoodie sleeves pushed up to mid-forearm. Shot on iPhone 15 Pro, 9:16 vertical. The hands drop a thick raw ribeye steak onto a searing hot cast iron skillet, then a large spoon of golden butter and minced garlic is poured over the meat — thick smoke billows, butter sizzles aggressively. Then the hands pick up a dull kitchen knife and press down on the seared steak — the blade fails to cut, crushing and deforming the meat. A small Band-Aid is visible on the index finger. The hands grip tighter in frustration, then drop the knife on the cutting board with a defeated thud. The camera dips slightly downward in disappointment. Warm tungsten kitchen overhead lighting, shallow depth of field. Raw UGC footage aesthetic, 9:16 vertical frame. Audio: Aggressive butter sizzling, garlic sputtering, then the dull thud of a blunt blade on meat, followed by a defeated exhale. V.O. (off-screen): "Bro, I literally just spent forty minutes on this steak and my knife can't even cut it."
```

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 5s
- Audio: Native (enabled)

---

### Segment 2 (5-10s) — Agitate + Solve

> **策略标注**：痛点蒙太奇（钝刀切番茄、旧磨刀石泡水 15 分钟）快速过渡到产品登场（开箱、放底座、喷水、开磨）。POV 使得这一段特别有沉浸感——用户亲手经历挫败，亲手打开新产品。

**Prompt (Veo 3.1)**:
```
POV first-person handheld shot. A pair of slightly tanned male hands with a black digital watch on the left wrist, dark navy hoodie sleeves. Shot on iPhone 15 Pro, 9:16 vertical. First, the hands press a dull knife down on a ripe tomato — the tomato collapses and bursts, seeds and juice splattering across the cutting board. The hands pull back in frustration, camera shaking slightly. Then the hands push aside an old whetstone soaking in murky sink water, a timer beside it reads "15 MIN." Then the hands tear open a cardboard box, pull out a SHARPAL diamond sharpening stone, and firmly place it on a non-slip rubber base on the kitchen counter. A quick spray of water across the surface. Immediately, the hands draw a dull chef's knife across the coarse 220-grit diamond surface with five confident, steady strokes — metal particles glinting. The camera gradually steadies and pushes in closer as confidence builds. Cold fluorescent lighting transitions to warm natural window light. Raw UGC aesthetic. Audio: Wet squishing of crushed tomato, water dripping, then crisp unboxing cardboard, rubber gripping counter, and satisfying rhythmic scraping of steel on diamond. V.O. (off-screen): "Fifteen minutes to soak? Nah. Watch this — five strokes."
```

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 5s
- Audio: Native (enabled)

---

### Segment 3 (10-18s) — Payoff

> **策略标注**：多效果快剪蒙太奇——切番茄、精磨、磨斧头火花、水冲。POV 模式下每个快切都是用户自己的手在操作，沉浸感极强。满意情绪通过"手翻转展示成果"和"竖拇指入镜"表达。

**Prompt (Veo 3.1)**:
```
POV first-person handheld shot. A pair of slightly tanned male hands with a black digital watch, dark navy hoodie sleeves. Shot on iPhone 15 Pro, 9:16 vertical. Fast-cut montage. First, the hands guide a freshly sharpened knife through a ripe tomato — paper-thin translucent slices fall in perfect sequence, juices running cleanly. The camera pushes in for an extreme close-up of the razor-thin slices. Then the hands flip the stone over to the 600-grit fine side, sliding the blade smoothly across it. [Cut to] The hands press an axe blade against the stone — bright orange sparks fly dramatically in all directions. Then the hands hold the stone under a running faucet — debris washes away instantly, revealing the mirror-flat diamond surface. Finally, one hand gives a confident thumbs up directly into the camera frame. Warm golden lighting, high saturation, bright kitchen. Raw UGC aesthetic. Audio: Clean whisper of sharp blade through tomato flesh, smooth steel on fine diamond, bright crackling sparks, rushing water, then a satisfying silence on the thumbs up. V.O. (off-screen): "Tomato? Paper thin. Axe? Sparks flying. And it cleans in two seconds."
```

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 8s
- Audio: Native (enabled)

---

### Segment 4 (18-22s) — CTA

> **策略标注**：CTA 阶段——产品居中展示 + 手指指向链接。POV 模式下就是用户的手放下产品、指向购买链接，直观自然。

**Prompt (Veo 3.1)**:
```
POV first-person handheld shot. A pair of slightly tanned male hands with a black digital watch, dark navy hoodie sleeves. Shot on iPhone 15 Pro, 9:16 vertical. Static shot. The hands place the SHARPAL diamond sharpening stone on a clean kitchen countertop, centered in frame. The stone glistens under warm soft lighting, its diamond surface catching subtle reflections. One hand places a small handwritten price tag reading "$30" beside the stone. Then the index finger confidently points toward the lower-left corner of the frame. The camera holds steady. Bright, even, well-lit composition with shallow depth of field keeping the product sharp. Authentic UGC smartphone aesthetic. Audio: A subtle satisfying click as the stone is placed, brief silence, then a confident tap on the counter. V.O. (off-screen): "Thirty bucks. Link's right there. You're welcome."
```

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Native (enabled)

---

## 关键策略总结

| 策略 | 本案例中的应用 |
|------|--------------| 
| **视角模式** | 全程 POV 第一人称，镜头=用户眼睛，不出现任何脸部/全身画面 |
| **片段合并** | 6 个脚本阶段 → 4 个视频片段（Hook+Bridge / Agitate+Solve / Payoff / CTA） |
| **手部特征锁** | 手部特征描述拼接在每段开头（肤色、手表、袖口），保证跨片段一致性 |
| **画外音 V.O.** | 口播台词使用 `V.O. (off-screen)` 标记放在 Audio 区域，不嵌入画面动作 |
| **情绪非面部表达** | 沮丧=手放下工具+镜头下沉；惊喜=手停顿+镜头快推；满意=竖拇指入镜 |
| **镜头情绪联动** | 挫败时镜头抖动加剧+下沉，自信时镜头稳定+推近，创造情绪节奏 |
| **UGC 原生感** | 全程手持晃动、自动对焦起伏、真实厨房环境、手上的创可贴细节 |

---

## 与 On-Camera 版本的对比

| 对比维度 | On-Camera（真人出镜版） | POV（本案例） |
|---------|----------------------|-------------|
| **Hook 冲击力** | 角色表情惊叹 + 牛排画面 | 用户"亲手"煎牛排的沉浸感 |
| **Agitate 共情度** | 看到角色的沮丧表情 | "亲手"体验切不动的挫败 |
| **Solve 说服力** | 角色展示操作过程 | 用户"亲手"开箱使用，更强的代入感 |
| **Payoff 满足感** | 角色展示完美结果 | "自己做到的"成就感更强 |
| **CTA 信任度** | 角色推荐 | 自己体验后的自然推荐，信任度更高 |
| **制作难度** | 需要过真人风控 | 不出脸，规避 AI 真人风控问题 |
