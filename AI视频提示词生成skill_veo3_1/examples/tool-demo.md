# 实战示例：TikTok 脚本 → Veo 3.1 视频提示词

## 输入示例

产品：SHARPAL 168H/169H 金刚石磨刀石

脚本关键信息：

- Hook：牛排下锅，黄油和蒜蓉爆香
- Bridge：拿刀切牛排，但刀钝切不动
- Agitate：钝刀压扁番茄，旧磨刀石泡水 15 分钟
- Solve：拿出磨刀石，快速开磨
- Payoff：切番茄、冲洗磨刀石、展示结果

---

## Shot 1: Hook + Bridge

**Prompt (Veo 3.1)**:

```text
Handheld smartphone POV, 9:16 vertical. A thick raw ribeye steak drops onto a blazing hot cast iron skillet. Butter and minced garlic splash over the meat, sending up heavy smoke and aggressive sizzling. Then the scene cuts to a hand pressing a dull kitchen knife into the cooked steak. The blade fails to cut and only crushes the meat, forcing juice out sideways. Warm kitchen tungsten lighting, shallow depth of field, raw UGC phone footage feel. Audio: Loud butter sizzling, garlic sputtering, then a dull thud on the steak and a frustrated exhale.
```

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 5s
- Audio: Native (enabled)

---

## Shot 2: Solve + Payoff

**Prompt (Veo 3.1)**:

```text
POV handheld close-up, 9:16 vertical. Two hands place a diamond sharpening stone on a kitchen counter, spray a little water on the surface, and sharpen a dull chef's knife with steady strokes. Then the knife glides cleanly through a ripe tomato, creating paper-thin slices. The stone is rinsed under running water, debris washing away instantly. Warm natural light, realistic kitchen countertop, authentic UGC aesthetic. Audio: Rhythmic steel-on-stone scraping, a crisp tomato slice, and running faucet water.
```

**Video Config**:
- Resolution: 4K
- Aspect Ratio: 9:16
- Duration: 5s
- Audio: Native (enabled)

---

## 这个示例验证了什么

- 英文自然叙事，5 段式结构完整（Camera + Subject + Action + Environment + Audio）
- 角色锚点（手部特征）拼接在每段开头
- 物理过程描述细致（butter splash, smoke billows, juice squeezes out）
- Audio 指令完整且与画面匹配
- 每段不超过 200 词
- 每段不超过 8 秒
