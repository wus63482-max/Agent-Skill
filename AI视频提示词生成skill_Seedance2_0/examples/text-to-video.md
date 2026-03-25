# 实战示例：TikTok 脚本 -> AI 视频提示词

## 输入示例

产品：SHARPAL 168H/169H 金刚石磨刀石

脚本关键信息：

- Hook：牛排下锅，黄油和蒜蓉爆香
- Bridge：拿刀切牛排，但刀钝切不动
- Agitate：钝刀压扁番茄，旧磨刀石泡水 15 分钟
- Solve：拿出磨刀石，快速开磨
- Payoff：切番茄、冲洗磨刀石、展示结果

---

## Veo 3.1 示例

### Shot 1: Hook + Bridge

**Prompt (Veo 3.1)**:

```text
Handheld smartphone POV, 9:16 vertical. A thick raw ribeye steak drops onto a blazing hot cast iron skillet. Butter and minced garlic splash over the meat, sending up heavy smoke and aggressive sizzling. Then the scene cuts to a hand pressing a dull kitchen knife into the cooked steak. The blade fails to cut and only crushes the meat, forcing juice out sideways. Warm kitchen tungsten lighting, shallow depth of field, raw UGC phone footage feel. Audio: Loud butter sizzling, garlic sputtering, then a dull thud on the steak and a frustrated exhale.
```

### Shot 2: Solve + Payoff

**Prompt (Veo 3.1)**:

```text
POV handheld close-up, 9:16 vertical. Two hands place a diamond sharpening stone on a kitchen counter, spray a little water on the surface, and sharpen a dull chef's knife with steady strokes. Then the knife glides cleanly through a ripe tomato, creating paper-thin slices. The stone is rinsed under running water, debris washing away instantly. Warm natural light, realistic kitchen countertop, authentic UGC aesthetic. Audio: Rhythmic steel-on-stone scraping, a crisp tomato slice, and running faucet water.
```

---

## Sora 2 示例

### Shot 3: Payoff

**Prompt (Sora 2)**:

```text
Grainy vertical smartphone footage. A freshly sharpened chef's knife slides through a ripe tomato with zero resistance, creating translucent slices that fall in sequence. Water runs across the flat diamond surface of the sharpening stone and carries away the metal residue in thin streams. The camera stays close to the hands and countertop, emphasizing the realistic kitchen physics and the tactile UGC feel. Audio: A soft razor-clean cut, steady scraping memory from the sharpening strokes, then clear faucet water.
```

---

## Seedance 2.0 示例

### 使用前提

这个示例专门演示三条新规则：

1. 图参只负责对象和场景，视频参只负责动作、运镜、节奏、构图
2. Prompt 正文只使用 bare `@`
3. 时间线按现实动作时长切分，必要时使用 0.5 秒粒度

### 参考素材准备

- 场景图：厨房场景
- 产品图：SHARPAL 电动磨刀器
- 产品图：刀
- 产品图：磨好后的刀
- 动作视频：磨刀动作与节奏
- 动作视频：磨后切割验证
- 动作视频：失败切削动作与构图

### Segment 1: Hook + Agitate

**Prompt (Seedance 2.0)**:

```text
视频场景，第一人称 POV 胸前固定运动相机视角，偏白男性手，黑色运动表，灰色连帽衫袖口。在@场景中，冷一点的顶灯混合厨房底噪，像下班后急着做晚饭的真实备菜环境。[0s-1.5s] 左手按住砧板上的牛排，右手用@刀下压，刀没有切进去，只把肉压得变形。[1.5s-3.5s] 紧接着左手按住砧板上的番茄，右手用@刀按照@的切削动作和构图继续下压，把番茄切烂出汁。[3.5s-4.5s] 镜头轻微下沉停顿，传达那种刀钝又拖时间的烦躁感。环境音：牛排受压的闷响、番茄被压碎的湿响、刀碰砧板的闷声、真实厨房底噪。
```

### Segment 2: Solve + Payoff + CTA

**Prompt (Seedance 2.0)**:

```text
视频场景，第一人称 POV 胸前固定运动相机视角，偏白男性手，黑色运动表，灰色连帽衫袖口。在@场景中，画面更亮更干净，但仍然保持真实手机实拍感。[0s-1.5s] 左手扶住 @电动磨刀器，右手把@刀放入机器，按照@的打磨动作和节奏完成前两槽抽拉。[1.5s-3.0s] 随后左手按住砧板上的番茄，右手用磨好的@刀按照@的切削动作和构图切出透光薄片。[3.0s-4.0s] 马上左手扶住砧板上的半颗洋葱，右手继续用磨好的@刀顺滑切开。[4.0s-4.5s] 最后双手把 @电动磨刀器和刚切好的食材一起摆在台面中央，右手食指明确指向左下角链接区域，停顿一拍收尾。环境音：规律磨刀声、清脆切番茄声、顺切洋葱声、产品轻放台面声。
```

### 这个示例验证了什么

- Seedance 正文没有再出现旧的图片/视频编号标签
- 图参和视频参的职责被拆开了，场景和刀具写成了 `在@场景中`、`用@刀`
- 钝刀失败镜头单独挂了 bare `@` 视频参考，并且只借失败切削动作和构图
- 短动作被切成了更符合现实的 0.5-2 秒子区间，没有再把一个瞬时动作拖成 3-4 秒
- 素材说明改成了“参考素材准备”，不再使用 `References` 映射
