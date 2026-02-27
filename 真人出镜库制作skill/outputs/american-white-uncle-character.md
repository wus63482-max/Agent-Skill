# 基础人物出镜库构建：美区生活派白人大叔 (American White Uncle)

## 背景概述
这是专门针对美国区家居五金、汽车配件、户外野营及日常生活吐槽类赛道设计的白人大叔（Suburban Dad/Uncle）模板。其主要职责是传递一种“动手能力强、贴近普通人真实生活”的亲和力，通过稍显生活疲态但真诚务实的表现，推荐各类实用工具与生活避坑好物。通过纯文本特征锁定技术，确保视频生成时人物面部的一致性。

## 输入内容
- 角色需求：美区白人大叔，约48-50岁，微微发福（dad bod），展现出真实的邻家感和稍微粗犷的生活气息。
- 视角需求：在皮卡车主驾驶位面对镜头分享生活经验的口播（Hook视角），以及在杂乱的车库工作台动态展示产品使用的视角（Solve视角）。
- 比例要求：9:16

## 输出内容

### 真人出镜库构建案卷：Uncle Bob

#### 1. 超级文本角色档案 (Character Bible)
- **角色定位**：48岁的美国郊区白人大叔，平时喜欢自己动手修车、做木工或烤肉。深知各类生活痛点，常以“老伙计”的真诚口吻，用最接地气的方式给观众讲述经验。
- **核心文本锚点 (Global Lock Prompt)**：
  *(提示：这段英文文字是角色的“灵魂”，在后续所有分镜中必须 100% 逐字保留)*
  `A 48-year-old Caucasian UGC creator named 'Bob Jenkins', slight dad bod, thinning grey hair, light greyish scruff, deep-set blue eyes, a distinct sun spot on the right cheek, textured skin with natural pores and deep smile lines, always wearing an unbuttoned red and black plaid flannel shirt over a slightly worn white crew-neck t-shirt and dark faded jeans, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.`

#### 2. 视频大模型独立分镜 Prompt (即插即用)
*(提示：以下指令直接投给 Seedance 2.0/Sora 2 等视频模型生成视频)*

**[片段 1: 卡车内面对镜头吐槽/引出痛点 - 用于 Hook/Agitate 阶段]**
> **[A 48-year-old Caucasian UGC creator named 'Bob Jenkins', slight dad bod, thinning grey hair, light greyish scruff, deep-set blue eyes, a distinct sun spot on the right cheek, textured skin with natural pores and deep smile lines, always wearing an unbuttoned red and black plaid flannel shirt over a slightly worn white crew-neck t-shirt and dark faded jeans, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, slightly shaky eye-level medium close-up selfie shot, looking slightly exhausted but holding a sincere expression talking directly to the viewer, sitting in the driver's seat of an old pickup truck with a suburban street casually visible through the window, authentic unpolished UGC phone video aesthetic, using natural cloudy daylight mixed with car interior shadows. --ar 9:16

**[片段 2: 车库工作台展示工具/痛点解决方案 - 用于 Solve 阶段]**
> **[A 48-year-old Caucasian UGC creator named 'Bob Jenkins', slight dad bod, thinning grey hair, light greyish scruff, deep-set blue eyes, a distinct sun spot on the right cheek, textured skin with natural pores and deep smile lines, always wearing an unbuttoned red and black plaid flannel shirt over a slightly worn white crew-neck t-shirt and dark faded jeans, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, dynamic handheld medium shot from a slight side angle, enthusiastically demonstrating how to use a hand tool on a messy wooden workbench, set in a cluttered American suburban garage with pegboards and tools hanging in the background, everyday life relatable atmospheric amateur photography style completely avoiding studio perfection, illuminated by overhead fluorescent garage lighting mixed with natural light from an open garage door. --ar 9:16
