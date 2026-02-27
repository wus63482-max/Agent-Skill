# 基础人物出镜库构建：生活好物分享宝妈

## 背景概述
这是专门针对美国广阔下沉市场设计的白人全职宝妈（Suburban Mom）模板。其主要职责是介绍厨房用品、居家妙招以及收纳好物。该示例展示了如何兼顾略显真实疲态的生活气息与推荐产品的真诚力。

## 输入内容
- 角色需求：美区带货宝妈，30-35岁，带有一点疲态但是对家人充满热情。
- 视角需求：在厨房面对镜头吐槽家务痛点，以及干活时使用产品的侧方位角度。
- 比例要求：9:16

## 输出内容

### 真人出镜库构建案卷：Suburban Mom Sarah

#### 1. 人设小传与风格基调
- **角色设定**：33岁居家妈妈，深知打扫卫生的痛点，常以过来人的身份推荐真正实用的家庭神器。
- **核心视觉特征**：标志性的丸子头 (messy bun)，略显疲惫但极其写实的眼睛。常穿着平价且容易沾染油渍的纯色棉质居家短袖或极其简单的针织衫。

#### 2. Nano Banana 2 多角度底图生图提示词
*(提示：以下指令直接投给 Nano Banana 2 或 Imagen 3 生成高质量且符合风控底线的连贯底图)*

**[片段 1: 全身定妆参考图 (用于后续AI视频严格锁定全身形体与衣着)]**
> Full body wide shot, a hyper-realistic virtual 33-year-old female avatar with a messy bun hairstyle, wearing a simple beige cotton t-shirt, standing naturally facing the camera in a neutral relaxed pose, pure solid white background, flat and even natural lighting (9:16 aspect ratio)

**[片段 2: 面对镜头抱怨/引出痛点 - 用于 Hook/Agitate 阶段]**
> A slightly shaky eye-level medium close-up shot, featuring a hyper-realistic virtual 33-year-old female avatar with a messy bun hairstyle and visibly exhausted but sincere facial expression, wearing a simple beige cotton t-shirt, standing cross-armed and talking directly to the viewer in an overly cluttered American suburban kitchen with unwashed dishes piled up behind her, using natural overhead daylight mixed with fluorescent lighting to create an authentic, unpolished UGC phone video aesthetic. (9:16 aspect ratio)

**[片段 3: 厨房干活用力/展示方案 - 用于 Solve 阶段]**
> A dynamic handheld medium shot, showing the identical 33-year-old female avatar with a messy bun from a slight side angle, enthusiastically wiping down a marble kitchen counter with a bright yellow cleaning sponge, set in a brightly sunlit suburban kitchen with warm afternoon light streaming through the window, emphasizing an everyday life relatable atmosphere and amateur relatable photography style, completely avoiding studio perfection. (9:16 aspect ratio)

#### 3. 视频模型 (Seedance 2.0/Sora 2) 核心锁模/洗人强制覆盖包
*(提示：当用户将上述图库作为参考材料 (@Image) 丢进视频大模型时，必须将此段魔法提示词**硬编码**合入原有视频 Prompt 中，彻底激活出原生带货感和真骨相)*

**强制洗人核心提示块 (Core Fast-Lock Prompt Block)**：
`Transforming the reference image into a 100% photorealistic flesh-and-blood real human being, maintaining identical facial structure from the reference but applying natural skin texture with visible pores, light freckles, subtle wrinkles, and a few unnoticeable acne scars, completely removing any artificial 3D or stylized look, shot on iPhone 15 Pro, authentic and imperfect UGC handheld phone camera quality, highly relatable.`
