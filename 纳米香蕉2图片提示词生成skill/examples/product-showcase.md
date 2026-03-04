# 实战示例：产品展示图 — 滚筒磨刀器

> 三种模式演示：白底特写、UGC 场景化、POV 使用中

---

## 输入

```
请为以下产品生成纳米香蕉 2 图片提示词：
- 产品名称：滚筒磨刀器
- 产品外观：黑色塑料机身，底部有橡胶防滑垫，顶部有钻石研磨滚轮，
             约手掌大小，带有银色金属质感的研磨区域
- 使用场景：美式郊区厨房
- 用途：TikTok UGC 带货视频素材 + Seedance 2.0 产品参考
```

---

## 模式 A：白底产品特写（电商主图 / 视频产品锚定）

### 提示词

**Prompt**:
A compact black plastic knife sharpener with a diamond grinding roller on top, silver metallic grinding area visible, rubber anti-slip base pad. Centered on a clean white surface, product photographed from a slightly elevated 3/4 angle showing both the top grinding area and front profile. Soft diffused lighting from above, subtle shadow underneath for depth, sharp focus on surface texture details. High resolution, 1:1 square format, product photography, clean and bright.

**Image Config**:
- Aspect Ratio: 1:1
- Style: Photographic
- Reasoning: Standard

### 用途说明
- 电商主图（亚马逊/TikTok Shop）
- 视频模型的 `@图片` 产品锚定参考（确保 AI 生成视频中产品外观精准）

---

## 模式 B：UGC 场景化产品图（TikTok 原生感）

### 提示词

**Prompt**:
A black plastic knife sharpener with silver diamond roller sitting on a messy suburban American kitchen countertop, slightly off-center. A dull chef's knife lying next to it, a half-squeezed lemon nearby, scattered breadcrumbs on the wooden surface. A coffee mug with lipstick marks and a crumpled paper towel visible in the background. Warm overhead kitchen light, natural shadows from window on the right, slightly yellow fluorescent tint. Shot on iPhone 15 Pro, 4:3, casual snapshot, randomly framed, slightly warm tones, raw unedited look.

**Image Config**:
- Aspect Ratio: 4:3
- Style: Photographic
- Reasoning: Dynamic

### 用途说明
- TikTok 视频中的"产品登场"画面参考
- 传达"真实用户在真实厨房发现好物"的 UGC 信号

---

## 模式 C：POV 使用中（第一人称操作图）

### 提示词

**Prompt**:
POV first-person handheld perspective looking down at a pair of slightly tanned female hands with short unpainted nails, silver wedding band on left ring finger. Right hand pressing a dull kitchen knife firmly against the diamond roller of a black knife sharpener on a wooden kitchen counter. Left hand stabilizing the sharpener base. Motion blur on the knife as it slides across the roller. Messy countertop with a cutting board, tomato juice stains, and a dishtowel bunched up nearby. Warm overhead kitchen light, harsh shadows. Shot on iPhone 15 Pro, 9:16 vertical, slightly shaky handheld, raw UGC look, grainy texture.

**Image Config**:
- Aspect Ratio: 9:16
- Style: Photographic
- Reasoning: Dynamic

### 用途说明
- 视频 POV 模式的参考帧
- Seedance 2.0 的 `@图片` 动作姿态参考
- 呈现"一个真实用户正在使用产品"的沉浸感

---

## 场景变体提示词

### 变体 1：对比图（旧刀 vs 磨后）

**Prompt**:
A split comparison shot on a messy kitchen counter. Left side: a dull kitchen knife struggling to cut through a tomato, squishing it with visible juice splashing. Right side: the same knife after sharpening, cleanly slicing through a tomato with paper-thin slices falling perfectly. A black knife sharpener sits in the middle between both scenes. Warm kitchen light, overhead angle slightly tilted. Shot on iPhone 15 Pro, 16:9, before-and-after layout, casual photography, raw unedited.

**Image Config**:
- Aspect Ratio: 16:9
- Style: Photographic

### 变体 2：开箱拆封图

**Prompt**:
POV first-person perspective, a pair of hands opening a plain brown cardboard shipping box on a cluttered kitchen table. Inside the box, a black knife sharpener in its retail packaging is partially visible through bubble wrap. One hand pulling back the bubble wrap to reveal the product. Table has scattered mail, keys, and a phone face-down. Harsh overhead light, cardboard texture visible. Shot on iPhone 15 Pro, 9:16 vertical, casual unboxing snapshot, slightly blurry motion on hands, raw UGC aesthetic.

**Image Config**:
- Aspect Ratio: 9:16
- Style: Photographic

---

## 局部精修建议（Inpainting）

| 区域 | 常见问题 | Inpainting 提示词 |
|------|---------|-------------------|
| 产品表面 | 太光滑完美 | `Add slight fingerprint smudges on black plastic surface, minor dust particles` |
| 厨房台面 | 太干净 | `Add water rings, crumb trails, a sticky note with grocery list` |
| 手部（POV） | 太精致 | `Add slightly dry knuckles, a small Band-Aid on index finger` |
| 刀刃 | 太锋利/太新 | `Dull edge visible, slight discoloration near blade heel, not brand new` |

---

## 输出对接

生成的产品图直接用于视频提示词：

```
Seedance 2.0 视频提示词：

Prompt: [角色洗人提示词] 角色站在凌乱的厨房台面前，从快递盒里拿出一个黑色的磨刀器 @图片1，
放在木质台面上，好奇地翻转检查。然后拿起一把明显很钝的菜刀 @图片2 放上去，稳定有力地推刀五下。
手停顿一拍，然后将磨好的刀轻松切下一片番茄——薄如蝉翼，阳光照在切面上。
她惊喜地对着镜头说 "Five strokes. That's literally it."

References:
- @图片1: 黑色磨刀器产品特写（模式 A 白底版）
- @图片2: 钝刀特写参考
```
