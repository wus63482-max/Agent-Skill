# 基础人物出镜库构建：硬核居家健身大叔 (Fit Grandpa)

## 背景概述
这是专门针对美国区健身、运动补剂、居家运动器材等赛道设计的硬核健身大叔（Urban Fitness Coach/Fit Grandpa）模板。其主要职责是传递“年龄只是数字”的自律精神，通过充满能量但又极具亲和力的表现，推荐表现力强的健身好物与生活方式产品。通过纯文本特征锁定技术，确保视频生成时人物面部的一致性。

## 输入内容
- 角色需求：美区硬核健身大叔，约55岁，拥有极其健硕的肌肉、灰白胡须和满手纹身，看起来经验丰富且极度自律。
- 视角需求：在居家健身房（Home Gym）内面对镜头分享健身经验的口播，以及动态展示器材的视角。
- 比例要求：9:16

## 输出内容

### 真人出镜库构建案卷：Fit Coach Marcus

#### 1. 超级文本角色档案 (Character Bible)
- **角色定位**：55岁硬核健身老炮，打破常规的“银发族”刻板印象。常以霸气但充满感染力的笑容出镜，以过来人和专业教练的身份推荐能真正提升运动表现的居家好物。
- **核心文本锚点 (Global Lock Prompt)**：
  *(提示：这段英文文字是角色的“灵魂”，在后续所有分镜中必须 100% 逐字保留)*
  `A 55-year-old muscular African American UGC creator named 'Marcus Johnson', prominent grey and black gradient beard, intense dark brown eyes, a distinct deep scar on the left cheekbone, textured skin with natural pores and sun-weathered wrinkles, always wearing a black beanie over small dreadlocks, completely shirtless showing highly detailed dark ink tattoos covering full arms and chest, wearing red mid-thigh athletic shorts and olive green training shoes, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.`

#### 2. 视频大模型独立分镜 Prompt (即插即用)
*(提示：以下指令直接投给 Seedance 2.0/Sora 2 等视频模型生成视频)*

**[片段 1: 面对镜头激情开场/引出痛点 - 用于 Hook/Agitate 阶段]**
> **[A 55-year-old muscular African American UGC creator named 'Marcus Johnson', prominent grey and black gradient beard, intense dark brown eyes, a distinct deep scar on the left cheekbone, textured skin with natural pores and sun-weathered wrinkles, always wearing a black beanie over small dreadlocks, completely shirtless showing highly detailed dark ink tattoos covering full arms and chest, wearing red mid-thigh athletic shorts and olive green training shoes, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, slightly shaky eye-level medium close-up shot, looking energetic and sincerely talking directly to the viewer with a charismatic smile, in a realistic rustic home gym area with a sliding black barn door and a stair stepper machine slightly out of focus in the background, authentic unpolished UGC phone video aesthetic, using natural window lighting mixed with indoor ambient light. --ar 9:16

**[片段 2: 原地展示动作/痛点解决方案 - 用于 Solve 阶段]**
> **[A 55-year-old muscular African American UGC creator named 'Marcus Johnson', prominent grey and black gradient beard, intense dark brown eyes, a distinct deep scar on the left cheekbone, textured skin with natural pores and sun-weathered wrinkles, always wearing a black beanie over small dreadlocks, completely shirtless showing highly detailed dark ink tattoos covering full arms and chest, wearing red mid-thigh athletic shorts and olive green training shoes, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, dynamic handheld medium full shot, enthusiastically demonstrating a workout movement next to a black home gym equipment piece, set in the same slightly messy rustic home gym with wooden floors, everyday life relatable atmosphere and amateur relatable photography style completely avoiding studio perfection, warm afternoon sunlight. --ar 9:16
