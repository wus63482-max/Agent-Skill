# SHARPAL 168H/169H — Seedance 2.0 (即梦) 视频提示词

> 基于 TikTok 爆款脚本逐镜头转化，适配 ByteDance Seedance 2.0 引擎
> 使用 **指代式提示 (Referential Prompting)** 语法：`@Image` / `@Video` / `@Audio`

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

---

## Script 1 — "酱汁浇顶牛排" 诱饵调包版

---

### Shot 1: Hook (0-3s)

**脚本画面原文**：
> 一块超厚的生牛排被放上滚烫的铸铁锅，直接浇上一大勺黄油和蒜蓉——浓烟翻滚、黄油滋滋作响，烟火气十足

**Prompt (Seedance 2.0)**:
Extreme close-up, Dutch angle, handheld smartphone, 9:16 vertical frame. A thick raw ribeye steak drops onto a smoking-hot black cast iron skillet. A large spoonful of golden butter and minced garlic is poured directly on top. The butter instantly melts and sizzles violently, sending up thick plumes of white smoke and tiny golden oil droplets. The garlic bits dance and crackle in the bubbling butter around the meat. Raw UGC footage aesthetic, high contrast, warm saturated tones, overhead kitchen light casting harsh shadows. Audio: Loud aggressive sizzling of butter hitting scorching iron, fat popping and crackling, faint excited gasp from behind the camera.

**References**:
- 无需产品参考（诱饵镜头）

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 2: Bridge (3-5s)

**脚本画面原文**：
> 镜头从牛排切到一个人拿起刀准备切牛排——但刀按下去……切不动，牛排被压扁变形。手指上贴着一块创可贴

**Prompt (Seedance 2.0)**:
Medium close-up, handheld smartphone, 9:16 vertical frame. A hand grips a dull kitchen knife and presses it down onto a perfectly seared steak on a wooden cutting board. The blade fails to cut — instead it crushes and deforms the meat, juices squeezing out sideways. A small flesh-colored band-aid is visible on the index finger. The person's knuckles whiten from pressing hard. Slightly warm natural lighting from above, authentic unpolished feel, shallow depth of field on the knife edge. Audio: Dull thud of blunt metal pressing against cooked meat, a quiet frustrated exhale.

**References**:
- 无需产品参考（痛点铺垫镜头）

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 3: Agitate — Part A (5-7s)

**脚本画面原文**：
> ① 用钝刀切番茄 → 番茄被压碎、汁水溅出

**Prompt (Seedance 2.0)**:
Close-up, slightly shaky handheld, 9:16 vertical frame. A dull kitchen knife is pressed down onto a ripe red tomato on a white cutting board. The blade cannot slice through — it crushes the tomato instead, the skin splits unevenly, seeds and red juice squirt out across the board in a messy splatter. The hand pushes harder in frustration. Cold fluorescent overhead light, slightly underexposed, desaturated tones. Raw UGC aesthetic. Audio: Wet squishing of a crushed tomato, juice splattering on the board surface, a faint frustrated sigh.

**References**:
- 无需产品参考

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 4: Agitate — Part B (7-10s)

**脚本画面原文**：
> ② 旧水磨石泡在水槽里，旁边放着计时器 "15 MIN" ③ 特写旧磨刀石中间凹陷的表面（用直尺量弧度）

**Prompt (Seedance 2.0)**:
Medium shot transitioning to close-up, handheld smartphone, 9:16 vertical frame. A worn gray whetstone sits submerged in a metal kitchen sink filled with murky water, a small digital timer next to it reads "15:00" counting down slowly. [Cut to] Extreme close-up of the old whetstone's surface — a metal ruler is placed across it, revealing a deep concave dip in the center where the stone has worn unevenly. A finger points at the visible gap between the ruler and the curved stone surface. Harsh fluorescent light, cold tones, slightly dark environment. Authentic unpolished feel. Audio: Water dripping slowly in the sink, scraping sound of the ruler dragging across rough stone.

**References**:
- 无需产品参考

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

### Shot 5: Solve (10-15s)

**脚本画面原文**：
> 产品从包装盒中取出 → 放在防滑底座上 → 喷一点点水 → 直接开磨，全程不到 10 秒完成准备。一把明显钝得不行的菜刀放上 220 目粗磨面，磨 5 下——特写计时 5 秒

**Prompt (Seedance 2.0)**:
Smooth tracking shot to medium close-up, handheld smartphone, 9:16 vertical frame. Two hands pull @Image1 out of @Image2, placing the diamond sharpening stone onto its rubber non-slip base on a clean kitchen counter. A spray bottle mists a fine layer of water across the stone surface — tiny droplets glisten. Then a visibly dull chef's knife is placed flat against the coarse 220-grit diamond surface. The hand strokes the blade forward and back with confident, rhythmic motions — five deliberate strokes as referenced in @Video1. Warming natural light from a nearby window, soft fill, gradually brightening tones. Authentic UGC feel. Audio: Crisp unboxing click of cardboard opening, rubber base gripping counter with a soft thud, fine water spray hiss, then satisfying rhythmic scraping of steel against diamond grit.

**References**:
- @Image1: SHARPAL 产品正面照 — 锁定产品外观
- @Image2: 产品包装盒 — 开箱镜头外观一致性
- @Video1: 磨刀动作参考 — 克隆来回磨刀的手部动作

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 5s
- Audio: Enabled

---

### Shot 6: Payoff — Part A (15-18s)

**脚本画面原文**：
> ① 刚磨好的刀切番茄——薄如蝉翼、一刀到底、汁水完美 ② 同一块磨石翻面 600 目精磨另一把刀

**Prompt (Seedance 2.0)**:
Close-up montage, handheld smartphone, 9:16 vertical frame. A freshly sharpened chef's knife glides effortlessly through a ripe red tomato — the blade sinks in with zero resistance, producing paper-thin translucent slices that fall sideways in slow motion, revealing perfect cross-sections with seeds and juice glistening. [Cut to] Hands flip @Image1 to reveal @Image3 fine 600-grit side, then place a different knife on the surface and begin smooth sharpening strokes as in @Video1. Warm golden light, high saturation, bright and clean environment. Raw UGC aesthetic, shallow depth of field on the blade edge. Audio: Clean whisper of a sharp blade slicing through soft tomato flesh, juice beading on the board, then satisfying rhythmic diamond-on-steel grinding.

**References**:
- @Image1: 产品正面照 — 确保磨刀石外观一致
- @Image3: 600 目精磨面特写 — 翻面展示
- @Video1: 磨刀动作参考

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

### Shot 7: Payoff — Part B (18-20s)

**脚本画面原文**：
> ③ 用它磨斧头——火花四溅（视觉冲击）

**Prompt (Seedance 2.0)**:
Medium close-up with slow-motion insert, handheld smartphone, 9:16 vertical frame. A rugged steel hatchet blade is pressed against @Image1 diamond stone surface. As the blade drags across the coarse grit with forceful strokes, bright orange and white sparks spray out from the contact point, scattering in arcs through the air. The sparks reflect off the steel axe head. Warm tungsten overhead light mixed with the bright flashes of sparks, high contrast, slightly warm tones. Raw UGC footage aesthetic. Audio: Bright crackling of metal sparks, aggressive grinding of hardened steel against diamond surface, sharp metallic ringing.

**References**:
- @Image1: 产品正面照 — 锁定磨刀石外观

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 8: Payoff — Part C (20-22s)

**脚本画面原文**：
> ④ 手指滑过磨石表面——镜面平整特写，对比旁边凹陷的旧水磨石 ⑤ 用水一冲就干净

**Prompt (Seedance 2.0)**:
Extreme close-up, handheld smartphone, 9:16 vertical frame. A fingertip slides slowly across the surface of @Image1 — the diamond stone is perfectly mirror-flat, the finger glides smoothly without any dip. Next to it, the old concave whetstone sits with its visible sunken center. [Cut to] The diamond stone is held under a running kitchen faucet — water cascades over the flat surface, washing away all metal filings instantly, leaving the stone clean and gleaming in two seconds. Bright natural light, warm golden tones, clean background. Authentic UGC feel. Audio: Soft fingertip sliding across smooth stone, then rushing water cascading over a flat surface, clean dripping.

**References**:
- @Image1: 产品正面照 — 锁定平整表面外观

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 9: CTA (22-26s)

**脚本画面原文**：
> ① 产品放在画面中央，价格标签 "$30" 弹出 ② 旁边对比划掉的 "$100+ Knife Sharpening Kit" ③ 手指指向屏幕左下角购物车位置

**Prompt (Seedance 2.0)**:
Static medium shot, product centered, clean frame, 9:16 vertical frame. @Image1 sits centered on a clean white countertop, the rubber base neatly attached. A hand enters from the right side and places a small handwritten price tag reading "$30" next to the product. On the left side, a crossed-out tag reads "$100+". Then an index finger points decisively toward the lower-left corner of the frame. Bright even lighting, soft diffused natural light, clean minimal background. Authentic UGC smartphone aesthetic. Audio: Subtle satisfying click as the price tag is placed, brief silence, then a confident voice saying "Link's right there, go grab it."

**References**:
- @Image1: 产品正面照 — 锁定居中产品外观

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---
---

## Script 2 — "直接对比" Before/After 版

---

### Shot 1: Hook (0-3s)

**脚本画面原文**：
> 一把锈迹斑斑、刃口发白的旧厨刀的超特写镜头——看起来完全报废

**Prompt (Seedance 2.0)**:
Extreme close-up, slightly shaky handheld smartphone, 9:16 vertical frame. A battered old kitchen knife fills the frame — the blade is covered in rough brown-orange rust spots, the cutting edge is visibly rolled and shows white dull spots along the entire length. Scratches and pitting cover the steel surface. The knife looks completely destroyed and unusable. High contrast, harsh overhead warm tungsten light reflecting off the rust patches, subtle vignette at the edges. Raw UGC footage aesthetic. Audio: Sharp metallic clang as the knife is set down on a hard surface, startling and attention-grabbing.

**References**:
- 无需产品参考（Hook 镜头）

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 2: Agitate — Part A (3-6s)

**脚本画面原文**：
> ① 用钝刀硬切洋葱 → 切面参差不齐、眼泪流下来 ② 手上有一块小创可贴

**Prompt (Seedance 2.0)**:
Medium close-up, shaky handheld smartphone, 9:16 vertical frame. A hand with a small flesh-colored band-aid on the thumb grips a dull knife and forces it down onto a white onion on a wooden cutting board. The blade crushes rather than cuts — the onion slices are jagged, uneven, and torn apart. Onion juice sprays upward. The person's eyes are visible at the top of frame, visibly watering and blinking. Cold fluorescent light, slightly underexposed, desaturated unflattering tones. Raw UGC aesthetic. Audio: Dull crunching of the onion being crushed, wet tearing sound, a quiet sniffle, frustrated exhale.

**References**:
- 无需产品参考

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

### Shot 3: Agitate — Part B (6-8s)

**脚本画面原文**：
> ③ 翻出一堆"拉开式磨刀棒"、电动磨刀器、旧水磨石——堆在桌上显得一团乱

**Prompt (Seedance 2.0)**:
Medium shot, handheld smartphone, 9:16 vertical frame. A pair of hands rummages through and tosses onto a kitchen counter a messy pile of failed sharpening tools — a pull-through rod sharpener, a small electric knife sharpener with a cord tangled around it, and a chipped old gray whetstone. The items pile up chaotically, some wobbling and nearly falling off the edge. The countertop looks cluttered, messy, and overwhelming. Harsh fluorescent light, cold tones, slightly dark and unflattering environment. Authentic unpolished feel. Audio: Scraping and clattering of tools being tossed onto the hard counter, plastic clacking, a heavy sigh.

**References**:
- 无需产品参考

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 4: Solve — Part A (8-11s)

**脚本画面原文**：
> ① 产品放在桌面上，旁边所有旧磨刀工具被一只手扫到一边（戏剧化动作）② 拆包：大尺寸 8×3 特写 → 放上防滑底座 → 喷水 → 开始磨

**Prompt (Seedance 2.0)**:
Tracking shot to reveal shot, handheld smartphone, 9:16 vertical frame. A hand sweeps all the old sharpening tools off to the side of the counter in one dramatic motion — they scatter and clatter away. Then the same hands open @Image2 and lift out @Image1, holding it up briefly to show its full 8×3 inch size. The stone is placed firmly onto the rubber non-slip base with a confident press. A spray bottle mists fine water across the diamond surface. Warming natural light, soft window light gradually brightening the scene, color temperature shifting warmer. Authentic UGC feel. Audio: Satisfying sweep of junk being pushed aside, crisp cardboard unboxing click, rubber base gripping counter with a solid thud, fine water spray hiss.

**References**:
- @Image1: 产品正面照 — 锁定产品外观
- @Image2: 产品包装盒 — 开箱一致性

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

### Shot 5: Solve — Part B (11-14s)

**脚本画面原文**：
> 开始计时（屏幕上显示秒表）③ 正面 220 目粗磨 → 翻面 600 目精磨，一气呵成

**Prompt (Seedance 2.0)**:
Medium close-up, handheld smartphone, 9:16 vertical frame. A dull rusty kitchen knife is placed on the coarse 220-grit side of @Image1. The hand performs five confident forward strokes as in @Video1 — metal filings appear as a fine dark slurry on the wet stone surface. Then the hands flip the stone to reveal @Image3 fine 600-grit side, and the knife glides across it with five more smooth polishing strokes. The movements are fluid and uninterrupted. Warm natural window light, gradually brightening, soft golden fill light. Authentic UGC feel, shallow depth of field on the blade contact point. Audio: Satisfying rhythmic grinding of steel against coarse diamond grit, a brief click as the stone flips, then smoother higher-pitched polishing strokes on the fine side.

**References**:
- @Image1: 产品正面照 — 外观一致性
- @Image3: 600 目精磨面特写 — 翻面展示
- @Video1: 磨刀动作参考 — 克隆磨刀手部动作

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

### Shot 6: Payoff — Part A (14-17s)

**脚本画面原文**：
> ① 刚磨好的刀轻轻切番茄——番茄片如纸般飘落、完美切面 ② 同一把刀削纸——纸张被干脆利落地划开

**Prompt (Seedance 2.0)**:
Close-up with slow-motion insert, handheld smartphone, 9:16 vertical frame. The same knife that was just sharpened now glides through a ripe red tomato as in @Video2 — the blade sinks in effortlessly, producing paper-thin translucent slices that topple sideways gracefully in slow motion, revealing perfect seed-filled cross-sections. [Cut to] The same blade is held against the edge of a white sheet of paper — it slices cleanly downward in one smooth motion, the paper splitting with a crisp straight line and falling away in two pieces. Warm golden light, high saturation, bright clean kitchen environment. Raw UGC aesthetic, shallow depth of field. Audio: Clean whisper of the blade through tomato flesh, faint juice beading, then a sharp satisfying paper slicing sound.

**References**:
- @Video2: 切番茄动作参考 — 克隆切菜手部动作

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

### Shot 7: Payoff — Part B (17-20s)

**脚本画面原文**：
> ③ 用同一块磨石处理一把小猎刀/户外刀 ④ 磨石表面特写：完美平整，没有任何凹陷

**Prompt (Seedance 2.0)**:
Medium close-up to extreme close-up, handheld smartphone, 9:16 vertical frame. A short sturdy hunting knife with a dark handle is placed on @Image1 diamond stone. The hand sharpens it with several firm strokes as in @Video1, the compact blade scraping confidently across the coarse diamond surface. [Cut to] Extreme close-up of the diamond stone surface — perfectly mirror-flat, light reflecting evenly across the entire face with no visible dip, groove, or concavity. A fingertip slides across to confirm the flawless flatness. Warm golden light, clean bright environment, high saturation. Authentic UGC feel. Audio: Aggressive metallic grinding of the hunting knife, then soft fingertip gliding across perfectly smooth stone surface.

**References**:
- @Image1: 产品正面照 — 锁定磨刀石外观
- @Video1: 磨刀动作参考

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

### Shot 8: Payoff — Part C (20-22s)

**脚本画面原文**：
> ⑤ 把磨石放到水龙头下冲 2 秒——干净如新

**Prompt (Seedance 2.0)**:
Close-up, handheld smartphone, 9:16 vertical frame. A hand holds @Image1 diamond stone under a running kitchen faucet. Clear water rushes across the flat surface, instantly washing away the dark metallic slurry and filings. Within two seconds the stone is completely clean, the diamond surface gleaming under the running water. The hand shakes off the excess water and sets the stone down — it looks brand new. Bright natural light, warm tones, clean background. Raw UGC aesthetic. Audio: Rushing water cascading over a flat stone surface, quick dripping as the water stops, a satisfying tap as the stone is set down.

**References**:
- @Image1: 产品正面照 — 锁定外观

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 3s
- Audio: Enabled

---

### Shot 9: CTA (22-26s)

**脚本画面原文**：
> ① 产品居中，旁边放着所有被它"替代"的旧工具 ② 弹出 "$25-40" 价签 + 划掉的 "$100+" ③ 手指指向左下角

**Prompt (Seedance 2.0)**:
Static medium shot, product centered, clean frame, 9:16 vertical frame. @Image1 sits prominently in the center of a clean countertop on its rubber base. Around it, the pile of old replaced tools — the pull-through sharpener, electric sharpener, and old whetstone — are pushed to the edges of frame, looking obsolete. A hand places a handwritten "$30" price tag next to the product while a crossed-out "$100+" tag sits nearby. Then a finger points confidently toward the lower-left corner. Bright even lighting, soft diffused light, clean minimal background. Authentic UGC smartphone aesthetic. Audio: Subtle click as the price tag is placed, brief satisfying silence, then a confident voice saying "Link's right below, go grab yours."

**References**:
- @Image1: 产品正面照 — 锁定居中产品外观

**Video Config**:
- Aspect Ratio: 9:16
- Duration: 4s
- Audio: Enabled

---

## 质量自检 ✅

| # | 检查项 | 状态 | 说明 |
|---|---|---|---|
| 1 | **5 段式完整性** | ✅ | 每个 Prompt 均包含 [镜头语言] + [主体] + [动作] + [环境/光影] + [风格/音频] |
| 2 | **UGC 风格一致性** | ✅ | 所有 Prompt 使用 handheld/smartphone/natural lighting/raw UGC 等关键词，未出现 studio/professional/commercial 等禁用词 |
| 3 | **长度控制** | ✅ | 每段 Prompt 约 100-150 词，在安全范围内 |
| 4 | **音频指令** | ✅ | 每段均包含 `Audio:` 或 `SFX:` 指令 |
| 5 | **时间段对应** | ✅ | 每段 3-5 秒，与脚本时间段匹配 |
| 6 | **Seedance 2.0 适配** | ✅ | 使用 @Image/@Video 指代式提示语法，未重复描述已由标签指代的内容；使用 [Cut to] 分割场景 |
| 7 | **物理逻辑连贯** | ✅ | 同一产品、同一台面、同一把刀贯穿各段，无时空冲突 |
| 8 | **禁用词检查** | ✅ | 未使用 amazing/beautiful/cinematic/professional/studio/elevate/unleash/revolutionary 等禁用词 |
