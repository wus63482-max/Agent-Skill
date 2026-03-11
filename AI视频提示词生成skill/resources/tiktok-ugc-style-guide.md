# TikTok UGC 视觉风格指南

## 概述

TikTok UGC (User Generated Content) 的核心视觉特征是**真实感**——画面必须看起来像真人用手机随手拍的，而不是专业制作的广告。本指南提供了用于 AI 视频提示词的关键词库。

---

## 一、镜头语言词库 (Cinematography)

### 推荐使用 ✅

| 英文关键词 | 中文含义 | 适用场景 |
|---|---|---|
| Handheld, slightly shaky | 手持晃动 | 所有场景的基底 |
| Smartphone POV | 手机视角 | 强调 UGC 真实感 |
| Extreme close-up (ECU) | 超特写 | Hook、产品细节 |
| Medium close-up (MCU) | 中近景 | Solve、操作展示 |
| POV first-person | 第一人称视角 | 开箱、操作演示 |
| Whip pan | 快速横摇 | Hook 转场、惊喜 |
| Snap zoom | 快速推拉 | Hook 强调、表情反应 |
| Dutch angle | 倾斜构图 | Hook 不安定感 |
| Tracking shot | 跟踪镜头 | Solve、产品动态展示 |
| Orbit shot | 环绕镜头 | Payoff、360°展示 |
| Quick-cut / Fast-cut montage | 快剪蒙太奇 | Payoff 多场景展示 |
| Slow-motion insert | 慢动作插入 | Payoff 关键特效 |
| Static shot, centered | 静止居中 | CTA 产品展示 |

### 禁止使用 ❌

| 禁用关键词 | 原因 |
|---|---|
| Drone shot, aerial | 无人机 = 专业制作 |
| Steadicam, gimbal stabilized | 稳定器 = 专业设备 |
| Dolly shot (on tracks) | 轨道 = 影棚 |
| Crane shot | 摇臂 = 专业制作 |
| IMAX, 70mm, anamorphic lens | 电影镜头 = 脱离 UGC |

---

## 二、光影风格词库 (Lighting)

### 推荐使用 ✅

| 英文关键词 | 中文含义 | 适用场景 |
|---|---|---|
| Natural lighting | 自然光 | 通用，白天场景 |
| Warm tungsten | 暖钨丝灯光 | 厨房、室内夜景 |
| Overhead kitchen light | 头顶厨房灯 | 厨房操作 |
| Soft window light | 柔和窗光 | Solve、产品展示 |
| Harsh fluorescent | 刺眼荧光灯 | Agitate、不舒适感 |
| Golden hour, warm glow | 金色时刻暖光 | Payoff、美好效果 |
| Slightly underexposed | 略微欠曝 | Agitate、压抑感 |
| High contrast | 高对比度 | Hook、戏剧感 |
| Subtle vignette | 轻微暗角 | UGC 手机质感 |
| Volumetric light, light rays | 体积光/光线 | Payoff 特效 |

### 禁止使用 ❌

| 禁用关键词 | 原因 |
|---|---|
| Studio lighting, three-point lighting | 影棚灯光 |
| Softbox, beauty dish | 专业灯具 |
| Cinematic color grading | 电影调色 |
| Professional setup | 专业布置 |

---

## 三、色调与质感词库 (Color & Texture)

### 推荐使用 ✅

| 英文关键词 | 中文含义 |
|---|---|
| Slightly warm tones | 偏暖色调 |
| Desaturated highlights | 高光微去饱和 |
| Raw footage feel | 原始素材质感 |
| Authentic, unpolished | 真实、未修饰 |
| Shallow depth of field | 浅景深（手机特写自然效果） |
| Grain, slight noise | 颗粒感/轻微噪点 |

### 禁止使用 ❌

| 禁用关键词 | 原因 |
|---|---|
| Hyper-realistic, photorealistic | 过度真实 = AI 感 |
| 8K ultra detail | 超高细节 ≠ 手机 |
| Commercial look, ad quality | 广告质感 |
| Polished, sleek, premium | 精致感 ≠ UGC |
| Film stock, 35mm | 胶片风格 ≠ UGC |

---

## 四、音效指令词库 (Audio / SFX)

### 按叙事阶段分类

#### Hook 阶段 — 高能突发
```
Audio: Loud aggressive sizzling of butter on hot iron
Audio: Sharp metallic clang, startling impact
Audio: Excited gasp from behind the camera
SFX: Dramatic shattering glass
SFX: Sudden whoosh followed by sizzling
```

#### Agitate 阶段 — 令人不适
```
Audio: Dull thud of a blunt blade pressing against meat
Audio: Wet squishing of a crushed tomato
Audio: Frustrated exhale, quiet sigh
Audio: Scraping sound of metal on stone
SFX: Awkward silence punctuated by water dripping
```

#### Solve 阶段 — 清脆满足
```
Audio: Crisp unboxing click, cardboard opening
Audio: Rubber base gripping the counter with a soft thud
Audio: Fine water spray hiss
Audio: Satisfying rhythmic scraping of steel against diamond
SFX: Precise mechanical click
```

#### Payoff 阶段 — 解压 ASMR
```
Audio: Clean whisper of a sharp blade through soft tomato flesh
Audio: Bright crackling of metal sparks
Audio: Rushing water cascading over a flat surface
Audio: Paper being sliced cleanly in one motion
SFX: Satisfying ASMR cutting sounds in sequence
```

#### CTA 阶段 — 收尾引导
```
Audio: Subtle satisfying click
Audio: Confident voice saying "Link's right there"
Audio: Brief silence followed by a gentle tap
```

---

## 五、全局风格锚定短语

以下短语应出现在**每一段**视频提示词中（任选 2-3 个组合使用）：

**On-Camera 模式（默认）**：
```
- 9:16 vertical frame
- Handheld smartphone POV
- Raw UGC footage aesthetic
- Authentic, unpolished feel
- Slightly warm, natural lighting
- Shallow depth of field on product
```

**POV 模式**（`视角：POV` 触发时使用）：
```
- 9:16 vertical frame
- POV first-person handheld (单手) / chest-mounted action camera (双手)
- Raw UGC footage aesthetic
- Authentic, unpolished feel
- Slightly warm, natural lighting
- Only hands visible, no face
```

---

## 六、POV 专属镜头词库 (POV Cinematography)

> 当使用 `视角：POV` 模式时，参考以下词库替代第一节中的 On-Camera 镜头语言。

### 推荐使用 ✅

| 英文关键词 | 中文含义 | 适用场景 |
|---|---|---|
| POV first-person | 第一人称视角 | 所有 POV 场景的基底 |
| POV handheld, slightly shaky | POV手持晃动 (限单手操作) | 手机随手拍基底 |
| POV chest-mounted action camera | 胸前固定相机 (双手操作出镜) | 双手同时操作、打磨、劈柴等 |
| POV ECU on hands | POV 手部超特写 | Hook、产品细节 |
| POV unboxing reveal | POV 开箱揭晓 | Solve、开箱 |
| POV hands-on montage | POV 手持操作蒙太奇 | Payoff、多效果展示 |
| POV snap zoom to object | POV 快推到物品 | Hook、惊喜发现 |
| POV fumbling hands | POV 笨拙操作 | Agitate、失败挫折 |
| POV steady hands-on | POV 稳定手持操作 | Solve、产品自信展示 |
| POV slow-mo result reveal | POV 慢动作成果揭晓 | Payoff、效果高潮 |
| POV finger points to link | POV 手指指向链接 | CTA |
| POV thumbs up in frame | POV 竖起大拇指 | Payoff、满意表达 |
| Camera dips down | 镜头下沉 | Agitate、沮丧情绪 |

### 禁止使用 ❌ (POV 模式特别禁忌)

| 禁用关键词 | 原因 |
|---|---|
| Face visible, full body shot | POV 不出现脸和全身 |
| Character looks at camera | POV 镜头就是角色的眼睛 |
| Third-person angle | POV 必须是第一人称 |
| Portrait shot, selfie mode | 自拍 = 出脸 ≠ POV |
