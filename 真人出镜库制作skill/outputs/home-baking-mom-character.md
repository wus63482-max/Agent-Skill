# 基础人物出镜库构建：居家烘焙宝妈 (Home Baking Mom)

## 背景概述
生成的美区居家烘焙宝妈形象。她真实自然，略带疲惫但充满生活气息，符合美区典型的“真实邻家宝妈”形象。常常在厨房里分享做甜点或备餐的日常。通过纯文本特征锁定技术，确保视频生成时人物面部的一致性。

## 输入内容
- 角色需求：美区30多岁居家烘焙爱好者，真实自然，略带疲惫。
- 视角需求：厨房第一人称自拍（展示带货/开箱），半身生活演示（处理食材），桌面俯拍特写。
- 比例要求：9:16 (部分特写16:9)

## 输出内容

### 真人出镜库构建案卷：Baking Mom Maria

#### 1. 超级文本角色档案 (Character Bible)
- **角色定位**：一位34岁的居家烘焙爱好者，常常在厨房里分享做甜点或备餐的日常。她真实自然，略带疲惫但充满生活气息。
- **核心文本锚点 (Global Lock Prompt)**：
  *(提示：这段英文文字是角色的“灵魂”，在后续所有分镜中必须 100% 逐字保留)*
  `A 34-year-old Hispanic UGC creator named 'Maria Torres', dark brown hair casually tied back in a slightly messy ponytail with loose framing face, warm brown eyes, a distinct small mole above the left upper lip, slightly tired eyes with faint dark circles, textured skin with natural pores and a few very subtle acne marks, always wearing a casual light grey ribbed knit long-sleeve top, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.`

#### 2. 视频大模型独立分镜 Prompt (即插即用)
*(提示：以下指令直接投给 Seedance 2.0/Sora 2 等视频模型生成视频)*

**[片段 1: 第一人称自拍Hook (展示带货/开箱状态)]**
> **[A 34-year-old Hispanic UGC creator named 'Maria Torres', dark brown hair casually tied back in a slightly messy ponytail with loose framing face, warm brown eyes, a distinct small mole above the left upper lip, slightly tired eyes with faint dark circles, textured skin with natural pores and a few very subtle acne marks, always wearing a casual light grey ribbed knit long-sleeve top, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, cinematic handheld selfie angle, looking directly into the lens with a slightly tired yet authentic expression while holding a piece of plastic wrap, in a slightly messy American suburban kitchen with a black stand mixer in the foreground out of focus, authentic UGC phone camera aesthetic, natural window lighting. --ar 9:16

**[片段 2: 半景生活演示片段 (处理食材操作)]**
> **[A 34-year-old Hispanic UGC creator named 'Maria Torres', dark brown hair casually tied back in a slightly messy ponytail with loose framing face, warm brown eyes, a distinct small mole above the left upper lip, slightly tired eyes with faint dark circles, textured skin with natural pores and a few very subtle acne marks, always wearing a casual light grey ribbed knit long-sleeve top, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, medium shot from a slightly elevated tripod angle, actively working with the stand mixer and looking down at the bowl, in an everyday unorganized home kitchen setting, imperfect home video style with natural shadows and soft indoor lighting. --ar 9:16

**[片段 3: 桌面俯拍特写 (展示产品细节或动作细节)]**
> **[A 34-year-old Hispanic UGC creator named 'Maria Torres', dark brown hair casually tied back in a slightly messy ponytail with loose framing face, warm brown eyes, a distinct small mole above the left upper lip, slightly tired eyes with faint dark circles, textured skin with natural pores and a few very subtle acne marks, always wearing a casual light grey ribbed knit long-sleeve top, amateur everyday person, smartphone selfie vlog, royalty-free stock vibe footage.]**, close-up top-down angle focusing on hands and actions, unrolling plastic wrap over a stainless steel mixing bowl next to a black stand mixer, capturing the messy countertop with spilled flour, raw documentary style handheld camera feel. --ar 16:9
