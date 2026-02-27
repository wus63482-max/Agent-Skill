# 基础人物出镜库构建：居家穿搭展示女性博主

## 背景概述
生成的美区居家穿搭或生活方式女性博主形象。主打自然、舒适的 UGC 视角，适合用于好物推荐、穿搭分享、或者生活日常 Vlog，极具亲和力和参考价值。通过纯文本特征锁定技术，确保视频生成时人物面部的一致性。

## 输入内容
- 角色需求：美区 20 多岁年轻女性，长卷发，身穿舒适宽松的连帽衫和牛仔裤，给人随意但精致的感觉。
- 视角需求：室内全身/大半身展示视角（用于穿搭或产品上身展示），以及面对镜头的自然口播视角（用于互动和讲解）。
- 比例要求：9:16

## 输出内容

### 真人出镜库构建案卷：Lifestyle Creator Emily

#### 1. 超级文本角色档案 (Character Bible)
- **角色定位**：24岁的居家风格创作者，擅长分享舒适的日常穿搭和居家好物。给人一种非常接近朋友的真实感，平易近人。
- **核心文本锚点 (Global Lock Prompt)**：
  *(提示：这段英文文字是角色的“灵魂”，在后续所有分镜中必须 100% 逐字保留)*
  `A 24-year-old Caucasian UGC creator named 'Emily Davis', long wavy dark brown hair, bright hazel eyes, a distinct small beauty mark under the left eye, slightly asymmetric natural smile, textured skin with natural pores and very light freckles across the nose, always wearing a very oversized dark blue hoodie with white text printed on the sleeve over light blue vintage flare jeans and cozy beige slippers, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.`

#### 2. 视频大模型独立分镜 Prompt (即插即用)
*(提示：以下指令直接投给 Seedance 2.0/Sora 2 等视频模型生成视频)*

**[片段 1: 室内全身/大半身展示 - 用于 Solve/产品上身展示]**
> **[A 24-year-old Caucasian UGC creator named 'Emily Davis', long wavy dark brown hair, bright hazel eyes, a distinct small beauty mark under the left eye, slightly asymmetric natural smile, textured skin with natural pores and very light freckles across the nose, always wearing a very oversized dark blue hoodie with white text printed on the sleeve over light blue vintage flare jeans and cozy beige slippers, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, handheld full-body wide shot from a slight low angle, standing casually in the middle of a brightly lit modern American apartment with a grey kitchen and wooden floors in the background, maintaining an imperfect casual UGC vlog aesthetic, utilizing natural window light creating soft shadows. --ar 9:16

**[片段 2: 面对镜头自拍口播 - 用于 Hook/Agitate]**
> **[A 24-year-old Caucasian UGC creator named 'Emily Davis', long wavy dark brown hair, bright hazel eyes, a distinct small beauty mark under the left eye, slightly asymmetric natural smile, textured skin with natural pores and very light freckles across the nose, always wearing a very oversized dark blue hoodie with white text printed on the sleeve over light blue vintage flare jeans and cozy beige slippers, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, cinematic medium close-up selfie angle, looking directly at the camera while talking enthusiastically, standing in the modern kitchen environment with grey cabinets smoothly blurred in the background, highly relatable non-studio authentic everyday social media creator vibe. --ar 9:16
