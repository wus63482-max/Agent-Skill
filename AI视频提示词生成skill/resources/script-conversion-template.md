# 脚本分镜 → 视频提示词 转化模板

## 通用转化公式

对于 TikTok 脚本中的每一个分镜画面描述，按照以下模板生成提示词：

---

## 单镜头转化模板

```
### Shot [编号]: [阶段名] ([时间段])

**脚本画面原文**：
> [粘贴脚本中「画面」字段的原始中文描述]

**Prompt ([引擎名])**:
[镜头语言], [画幅]. [主体描述 + 外观细节]. [具体动作序列，使用 Then/While/As 串联]. [环境设定 + 光影描述]. [风格关键词]. Audio: [具体音效描述].

**Video Config**:
- Resolution: [4K / 1080p]
- Aspect Ratio: 9:16
- Duration: [3-8]s
- Audio: Native (enabled)
```

---

## 阶段专属转化模板

### Hook (0-3s) 转化模板

**On-Camera 版（默认）**：
```
[极端镜头语言: Extreme close-up / Dutch angle / Whip pan / POV], handheld smartphone, 9:16 vertical.
[高冲击力的主体描述：颜色、质感、反常识元素].
[突发性动作：碰撞、飞溅、燃烧等瞬间事件].
[高对比度光影：harsh lighting, high contrast, warm saturated tones].
Raw UGC footage aesthetic.
Audio: [突发性高能声效 + 可选惊叹语气].
```

**POV 版**（`视角：POV` 触发）：
```
POV first-person, [ECU on hands / snap zoom to object / shaky grab], handheld smartphone, 9:16 vertical.
[手部抓取/触碰高冲击力物品的动作].
[突发性物理事件从第一人称视角呈现].
[高对比度光影：harsh lighting, high contrast].
Raw UGC footage aesthetic.
Audio: [突发性高能声效]. V.O. (off-screen): "[可选惊叹语气]".
```

**关键词库**：
- 镜头：Extreme close-up, Dutch angle, Whip pan, Snap zoom, POV first-person
- POV 镜头：POV ECU on hands, shaky grab, snap zoom to object
- 光影：Harsh overhead light, warm tungsten glow, high contrast
- 音效：Sizzling, crackling, shattering, gasping, "Wait what"

---

### Agitate (3-8s) 转化模板

**On-Camera 版（默认）**：
```
[不讨好的镜头: Medium shot / Slightly shaky / Unflattering angle], handheld, 9:16 vertical.
[挫败感主体：失败的操作、损坏的工具、沮丧的表情].
[笨拙/低效的动作：crushing, struggling, wasting time].
[偏冷偏暗的环境光：cold fluorescent, slightly underexposed, desaturated].
Raw UGC aesthetic.
Audio: [令人不适的声效：刮擦、叹气、不协调声].
```

**POV 版**（`视角：POV` 触发）：
```
POV first-person, [fumbling hands / frustrated grip / camera dips down], handheld, 9:16 vertical.
[一双手笨拙地操作失败的工具/产品，手无力地放下].
[镜头随挫败感微微下沉、抖动加剧].
[偏冷偏暗的环境光：cold fluorescent, slightly underexposed].
Raw UGC aesthetic.
Audio: [令人不适的声效]. V.O. (off-screen): "[可选沮丧叹气]".
```

**关键词库**：
- 镜头：Medium shot, shaky handheld, unflattering low angle
- POV 镜头：POV fumbling hands, frustrated grip, camera dips down
- 光影：Cold fluorescent, harsh shadow, slightly dark
- 音效：Scraping, squishing, sighing, dripping, awkward silence

---

### Solve (8-15s) 转化模板

**On-Camera 版（默认）**：
```
[引导性镜头: Smooth tracking / Reveal shot / Medium close-up], handheld, 9:16 vertical.
[产品登场：开箱、摆放、准备过程的具象描述].
[高效简洁的操作动作：spray, set, stroke, twist].
[渐暖的光影：warming natural light, soft window light].
Authentic UGC feel.
Audio: [满足感声效：开箱声、清脆操作声、工具接触声].
```

**POV 版**（`视角：POV` 触发）：
```
POV first-person, [unboxing reveal / steady hands-on / smooth push-in], handheld, 9:16 vertical.
[一双手从包装中取出产品、稳定放置、开始使用].
[手部动作高效自信，镜头缓慢推近跟随产品].
[渐暖的光影：warming natural light, soft window light].
Authentic UGC feel.
Audio: [满足感声效]. V.O. (off-screen): "[可选产品赞叹]".
```

**关键词库**：
- 镜头：Tracking shot, reveal shot, smooth pan, medium close-up
- POV 镜头：POV unboxing, steady hands-on reveal, smooth push-in
- 光影：Warm natural light, gradually brightening, soft fill
- 音效：Unboxing click, crisp contact, rhythmic operation sound

---

### Payoff (15-25s) 转化模板

**On-Camera 版（默认）**：
```
[快剪蒙太奇: Fast-cut montage / Close-up sequence / Orbit shot / Slow-mo insert], handheld, 9:16 vertical.
[产品效果的极致展示：完美的切面、闪耀的表面、戏剧性的对比].
[多场景/多用途连续展示，用 First/Then/Finally 或 [Cut to] 串联].
[温暖金色光、高饱和、充足光线].
Raw UGC aesthetic.
Audio: [解压 ASMR 声效：清脆切割、水冲、令人满足的声音].
```

**POV 版**（`视角：POV` 触发）：
```
POV first-person, [hands-on montage / slow-mo result reveal / thumbs up], handheld, 9:16 vertical.
[一双手展示产品效果：切割成果、使用前后对比、多角度翻转].
[慢动作特写成果细节，手满意地竖起大拇指入镜].
[温暖金色光、高饱和、充足光线].
Raw UGC aesthetic.
Audio: [解压 ASMR 声效]. V.O. (off-screen): "[可选效果感叹]".
```

**关键词库**：
- 镜头：Fast-cut montage, close-up insert, slow-motion, orbit shot
- POV 镜头：POV hands-on montage, slow-mo result reveal, thumbs up
- 光影：Warm golden light, high saturation, bright and clean
- 音效：Clean slice, sparks crackling, water rushing, satisfying ASMR

---

### CTA (25-30s) 转化模板

**On-Camera 版（默认）**：
```
[稳定构图: Static medium shot / Product centered / Clean frame], 9:16 vertical.
[产品居中、价格信息可视、手指引导].
[简洁动作：pointing, placing price tag].
[明亮均匀光、干净背景].
Authentic UGC smartphone aesthetic.
Audio: [轻快的收尾声效 + 口播提示语].
```

**POV 版**（`视角：POV` 触发）：
```
POV first-person, [product placed on surface / finger points to link area], 9:16 vertical.
[一双手将产品放在桌面中央，手指自信指向屏幕左下角链接位置].
[镜头稳定，画面干净].
[明亮均匀光、干净背景].
Authentic UGC smartphone aesthetic.
Audio: [轻快音效]. V.O. (off-screen): "[行动号召口播]".
```

**关键词库**：
- 镜头：Static shot, centered composition, clean background
- POV 镜头：POV product on surface, finger points to link
- 光影：Bright even lighting, soft diffused, clean white
- 音效：Subtle click, confident voice cue, brief satisfying silence

---

## 转化注意事项

1. **文字叠加不写入 Prompt**：脚本中的「文字叠加」（如红色大字 "LINK BELOW"）是后期加的，不要写进视频提示词
2. **口播不写入 Prompt**：配音文案由真人录制或 TTS 生成，视频提示词只负责画面和环境音
3. **每段独立**：每个提示词对应一个 3-8 秒的独立视频片段，后期再拼接
4. **物理连贯**：相邻镜头的场景和道具要一致（同一把刀、同一个台面）
5. **POV 模式特别注意**：当使用 `视角：POV` 时，所有段落必须使用第一人称视角，不得出现脸部/全身描述；口播使用画外音（V.O.）而非角色直接说话；情绪通过手部动作和镜头运动表达
