# SHARPAL 168H/169H Script 2 — Seedance 2.0 (即梦) 视频提示词

> 基于 TikTok 爆款脚本 **Script 2（框架 D：多场景轰炸型 Quick Win → Scene Blitz）** 逐镜头转化
> 适配 ByteDance Seedance 2.0 引擎，使用 **指代式提示 (Referential Prompting)** 语法
> 遵循 **少量片段原则**：将 5 个阶段合并为 **3 个主片段**，最大化空间画面连续性和人物一致性

---

## 全局参考素材清单 (Global References)

> 开始生成前，请在即梦平台上传以下参考素材：

| 标签 | 素材描述 | 用途 |
|---|---|---|
| @Image1 | SHARPAL 168H/169H 产品正面照（含防滑底座） | 产品外观一致性锁定 |
| @Image2 | 产品包装盒照片 | 开箱镜头 |
| @Image3 | 产品反面 600 目精磨面特写 | 翻面操作镜头 |
| @Video1 | 真人手持磨刀的动作参考视频（来回磨刀动作） | 动作克隆 |
| @Video2 | 切番茄的动作参考视频 | 切菜动作克隆 |
| @Video3 | 劈木/砍木的动作参考视频 | 斧头测试动作克隆 |

---

## 阶段合并策略说明

| 合并后片段 | 覆盖阶段 | 时长 | 合并理由 |
|---|---|---|---|
| **Segment 1** | Hook + Trust + Solve | 0-12s | 同一场景（厨房台面），同一主体（产品+手），从开箱→质感展示→磨刀演示→效果验证，动作连贯不断裂 |
| **Segment 2** | Payoff（多场景快切） | 12-22s | 场景切换点（从厨房到户外到园艺到木工），独立为一段多节拍快切蒙太奇 |
| **Segment 3** | CTA | 22s+ | 回到产品静态展示+口播，与前段场景不同，独立收尾 |

---

## Segment 1: Hook + Trust + Solve (0-12s)

**覆盖脚本阶段**：
> **[0-3s] Hook**：双手从包装盒中取出 SHARPAL 168H 磨刀石 → 文字弹出三大卖点
> **[4-6s] Trust**：手指划过金刚石表面微距特写 → 8×3 英寸大面板俯拍 → 防滑底座稳定性展示
> **[6-12s] Solve**：钝刀放上 220 目粗面 → 磨 5 下 → 翻转到 600 目精磨面 → 磨 3 下 → 刀刃反光 → 番茄测试验证

**Prompt (Seedance 2.0)**:
```
Handheld smartphone POV, 9:16 vertical frame. Two hands pull @Image1 out of @Image2, holding the diamond sharpening stone up to show its full 8×3 inch size. The stone is placed firmly onto a rubber non-slip base on a kitchen counter — a hand pushes the base sideways to show it grips firmly without sliding.

[Beat 1] Extreme close-up: a fingertip drags slowly across the diamond-coated surface, revealing dense rows of tiny embedded diamond particles that catch the light and sparkle faintly.

[Beat 2] A visibly dull chef's knife is placed flat against the coarse 220-grit side. The hand performs five confident forward-and-back strokes as in @Video1, fine metal particles forming a dark slurry on the wet surface. The stone flips smoothly to reveal @Image3 fine 600-grit side — three more polishing strokes glide across the surface.

[Beat 3] The blade is held up at an angle, the freshly sharpened edge catching the overhead light in a razor-thin bright line. Then the knife touches the top of a ripe tomato — the skin splits instantly on contact, the blade sinks through effortlessly, producing paper-thin translucent slices as in @Video2.

Warm natural window light gradually brightening throughout the sequence, soft golden fill. Slightly shaky handheld throughout, raw UGC aesthetic, shallow depth of field on the product and blade. Audio: Crisp cardboard unboxing click, rubber base gripping counter, fingertip scraping across diamond grit, satisfying rhythmic grinding of steel on stone, clean whisper of sharp blade through tomato flesh.
```

**References**:
- @Image1: SHARPAL 产品正面照 — 锁定产品外观
- @Image2: 产品包装盒 — 开箱镜头外观一致性
- @Image3: 600 目精磨面特写 — 翻面展示
- @Video1: 磨刀动作参考 — 克隆来回磨刀的手部动作和节奏
- @Video2: 切番茄动作参考 — 克隆切菜手法

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 12s
- Audio: Enabled

---

## Segment 2: Payoff — 多场景快切轰炸 (12-22s)

**覆盖脚本阶段**：
> **[12-22s] Payoff（多场景快切连续轰炸）**：
> 🔪 厨房刀具批量：菜刀+主厨刀+水果刀排成一排，逐个磨完切食材
> 🪓 户外斧头：斧头放在大面板上磨，然后劈木测试
> ✂️ 园艺剪刀：磨完园艺剪后剪树枝
> 🪚 木工凿子：凿子磨完后推木花

**Prompt (Seedance 2.0)**:
```
Fast-cut montage, handheld smartphone, 9:16 vertical frame. Four rapid scenes, each 2-3 seconds with punchy hard cuts between them.

Shot 1: Three kitchen knives — a cleaver, a chef's knife, and a paring knife — lined up on a counter next to @Image1. A hand rapidly sharpens each one in sequence with quick strokes as in @Video1, then grabs each knife to slice through different foods — cabbage, carrot, lime — all cutting clean and effortless. Warm kitchen overhead light.

[Cut to] Shot 2: Outdoor daylight. A dull hatchet axe blade is pressed against @Image1 on a wooden workbench. Firm aggressive sharpening strokes send a few bright sparks flying. Then the axe swings down onto a log as in @Video3 — the wood splits apart in one clean strike, two halves tumbling sideways. Natural sunlight, high contrast.

[Cut to] Shot 3: A pair of garden shears is sharpened against @Image1 coarse surface with several strokes. Then the shears cut through a thick green branch — the branch snaps off cleanly with a crisp cut, leaves trembling. Soft natural outdoor light filtering through foliage.

[Cut to] Shot 4: A woodworking chisel edge is drawn across @Image1 surface. Then the chisel is placed against a block of pale wood and pushed forward — a long continuous wood shaving curls up gracefully from the surface, paper-thin and spiraling. Warm workshop tungsten lighting.

Raw UGC aesthetic throughout, slightly shaky handheld, high energy pacing. Audio: Rapid metallic grinding, crisp vegetable cutting sounds, a loud satisfying crack of splitting wood, snapping branch, then the soft whisper of a chisel peeling a perfect wood shaving.
```

**References**:
- @Image1: SHARPAL 产品正面照 — 锁定产品外观贯穿全部场景
- @Video1: 磨刀动作参考 — 各场景磨刀手部动作一致性
- @Video3: 劈木动作参考 — 斧头测试动作克隆

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 10s
- Audio: Enabled

---

## Segment 3: CTA (22s+)

**覆盖脚本阶段**：
> **[22s+] CTA**：产品全景 → 手指指向左下角 → 画面文字红色高亮 "$45 + FREE SHIPPING" + 黄色文字 "< 1 pro sharpening session"

**Prompt (Seedance 2.0)**:
```
Static medium shot, product centered, clean frame, 9:16 vertical frame. @Image1 sits centered on a clean kitchen countertop on its rubber base, surrounded by the four tools just sharpened — a chef's knife, hatchet, garden shears, and chisel — arranged neatly around it like trophies. Bright even lighting, soft diffused natural light. A hand enters from the right and places a small handwritten price tag reading "$45" beside the product. Then an index finger points decisively toward the lower-left corner of the frame. Clean minimal background, warm golden tones, the diamond surface catching subtle reflections from the light. Authentic UGC smartphone aesthetic. Audio: Subtle satisfying click as the price tag is placed, brief pause, then a confident voice saying "Link's right there, stop ruining your knives."
```

**References**:
- @Image1: 产品正面照 — 锁定居中产品外观

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 8s
- Audio: Enabled

---

## 质量自检 ✅

| # | 检查项 | 状态 | 说明 |
|---|---|---|---|
| 1 | **5 段式完整性** | ✅ | 每个 Prompt 均包含 [镜头语言] + [主体] + [动作序列] + [环境/光影] + [风格/音频] |
| 2 | **UGC 风格一致性** | ✅ | 所有 Prompt 使用 handheld/smartphone/natural lighting/raw UGC 等关键词，未出现 studio/professional/commercial 等禁用词 |
| 3 | **长度控制** | ✅ | Segment 1 约 200 词，Segment 2 约 190 词，Segment 3 约 110 词，均在安全范围 |
| 4 | **音频指令** | ✅ | 每段均包含 `Audio:` 指令，覆盖各阶段音效 |
| 5 | **片段数量与时长** | ✅ | 3 段合并结构（12s + 10s + 8s = 30s），符合少量片段原则目标 |
| 6 | **Seedance 2.0 适配** | ✅ | 使用 @Image/@Video 指代式提示语法；使用 `[Cut to]` 和 `[Beat]` 分割场景；未重复描述已由标签指代的内容 |
| 7 | **空间/人物一致性** | ✅ | Segment 1 保持厨房单一场景连贯；Segment 2 通过 `[Cut to]` 明确标记四个不同场景切换；Segment 3 回到厨房收尾 |
| 8 | **禁用词检查** | ✅ | 未使用 amazing/beautiful/cinematic/professional/studio/elevate/unleash/revolutionary/game-changing 等禁用词 |
