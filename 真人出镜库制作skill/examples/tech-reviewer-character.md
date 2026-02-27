# 基础人物出镜库构建：美区数码科技男博主

## 背景概述
用户需要建立一个专门用于科技数码开箱的虚拟博主。要求具有美区常见的原生网感而且非常真实接地气，便于后续生成连续的 UGC 视频素材供视频生成模型使用。

## 输入内容
- 角色需求：一个美区数码科技男博主。大概 25-30 岁，喜欢穿卫衣。
- 视角需求：需要他的正脸镜头用来做视频 Hook，以及一个侧脸半身镜头用来展示他摆弄设备的画面。
- 比例要求：9:16

## 输出内容

### 真人出镜库构建案卷：Tech Geek Kevin

#### 1. 人设小传与风格基调
- **角色设定**：28岁随和、接地气的数码极客博主，喜欢挖掘新奇好玩的智能设备并推荐给粉丝。
- **核心视觉特征**：常穿深灰色 Oversized 连帽卫衣，戴黑框眼镜，头发梳理但带有一点平时写代码留下的随意凌乱感 (messy but styled hair)。

#### 2. Nano Banana 2 多角度底图生图提示词
*(提示：以下指令直接投给 Nano Banana 2 或 Imagen 3 生成高质量且符合风控底线的连贯底图)*

**[片段 1: 全身定妆参考图 (用于后续AI视频严格锁定全身形体与衣着)]**
> Full body wide shot, a hyper-realistic photorealistic virtual male avatar in his late 20s wearing a simple oversized dark grey hoodie and thick black-framed glasses, standing naturally facing the camera in a neutral relaxed pose, pure solid white background, flat and even natural lighting (9:16 aspect ratio)

**[片段 2: 第一人称手机自拍/口播特写 - 用于 Hook]**
> A cinematic ultra-close-up selfie angle shot, featuring a hyper-realistic photorealistic virtual male avatar in his late 20s wearing a simple oversized dark grey hoodie and thick black-framed glasses, smiling and talking directly into the camera energetically as if holding the phone, standing in a slightly messy American suburban bedroom with a dual-monitor gaming computer setup blurred in the background, utilizing natural window light with an authentic imperfect UGC phone camera quality vibe. (9:16 aspect ratio)

**[片段 3: 半身产品演示/场景互动 - 用于 Solve/Payoff]**
> A handheld medium shot from a slight high angle, showing the identical virtual male character in his dark grey hoodie and glasses from a side profile, excitedly opening a sleek white tech gadget box on a cluttered wooden desk, set inside a dimly lit modern apartment with soft RGB neon lighting glowing from behind the monitor, capturing a casual everyday tech reviewer UGC aesthetic rather than a professional studio setup. (9:16 aspect ratio)

#### 3. 视频模型 (Seedance 2.0/Sora 2) 核心锁模/洗人强制覆盖包
*(提示：当用户将上述图库作为参考材料 (@Image) 丢进视频大模型时，必须将此段魔法提示词**硬编码**合入原有视频 Prompt 中，彻底激活出原生带货感和真骨相)*

**强制洗人核心提示块 (Core Fast-Lock Prompt Block)**：
`Transforming the reference image into a 100% photorealistic flesh-and-blood real human being, maintaining identical facial structure from the reference but applying natural skin texture with visible pores, light freckles, subtle wrinkles, and a few unnoticeable acne scars, completely removing any artificial 3D or stylized look, shot on iPhone 15 Pro, authentic and imperfect UGC handheld phone camera quality, highly relatable.`
