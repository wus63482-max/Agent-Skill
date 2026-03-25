# Sora 2 参数速查表

## 引擎参数

| 参数 | 规格 |
|------|------|
| **分辨率** | 1080p / 1792×1024 |
| **画幅 (TikTok)** | ✅ 9:16 |
| **单次时长** | 4s / 8s / 12s / 25s (Pro) |
| **延伸能力** | Timeline Editor 多段拼接 |
| **帧率** | 24fps / 30fps |
| **原生音频** | ✅（对白+音效+配乐） |
| **角色一致性** | 详细文本特征描述 |
| **参考素材** | 图片参考 |

---

## TikTok 场景推荐配置

```
Resolution: 1080p
Aspect Ratio: 9:16
Duration: 4-12s (per shot)
Framerate: 24fps
Audio: Enabled (native)
```

## 分镜时长建议

| 叙事阶段 | 推荐时长 | 说明 |
|---|---|---|
| Hook | 3-4s | 短促有力 |
| Bridge | 2-3s | 如有自然过渡段 |
| Agitate | 5-8s | 快速堆叠痛点画面，可利用更长时长 |
| Solve | 5-8s | 产品开箱到上手操作 |
| Payoff | 8-12s | 多场景效果蒙太奇，利用长时长优势 |
| CTA | 3-4s | 产品居中+购买指引 |

---

## Prompt 长度限制

> ⚠️ 每段提示词严格控制在 **100-200 个英文单词**。超出会导致引擎忽略部分指令。

---

## Sora 2 核心优势：物理模拟

Sora 2 最突出的能力是**物理过程模拟**，在 Prompt 中应优先描述：

| 物理类型 | 推荐描写关键词 |
|----------|--------------|
| 流体碰撞 | butter sizzles, juice splatters, water cascades |
| 材质变形 | tomato collapses, meat crushes, paper tears |
| 碰撞感 | knife thuds, sparks fly, stone scrapes |
| 重力效果 | slices fall in sequence, debris washes away |
| 表面交互 | rubber grips, blade glints, diamond surface catches light |
| 蒸汽/烟雾 | steam rises, smoke billows, vapor curls |

---

## Sora 2 适用场景

| 你的需求 | 是否适用 |
|----------|----------|
| 有大量物理交互（飞溅、火花、碰撞） | ✅ 最适合 |
| 戏剧化镜头切换 | ✅ 最适合 |
| 需要长时段（最高 25s） | ✅ 最适合 |
| 需要口播同步 | ❌ 用 Veo 3.1 |
| 有参考素材 | ❌ 用 Seedance 2.0 |
| 需要音乐卡点 | ❌ 用 Seedance 2.0 |
