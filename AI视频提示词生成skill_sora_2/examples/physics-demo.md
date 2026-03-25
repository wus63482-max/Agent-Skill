# 实战示例：TikTok 脚本 → Sora 2 视频提示词（物理过程优先）

## 输入示例

产品：SHARPAL 168H/169H 金刚石磨刀石

脚本关键信息：

- Payoff：磨好的刀切番茄 → 冲洗磨刀石

> 这个示例专门演示 Sora 2 的核心优势——**物理过程描述**。同一个 Payoff 段，Sora 2 的 Prompt 会比 Veo 3.1 更强调流体、材质变形和物理反应的细节。

---

## Shot 1: Payoff（On-Camera 模式）

**Prompt (Sora 2)**:

```text
Grainy vertical smartphone footage. A 28-year-old American male with short brown hair and light stubble, wearing a faded gray hoodie, stands at a realistic kitchen countertop. He picks up a freshly sharpened chef's knife and draws it across a ripe tomato sitting on a wooden cutting board — the blade slides through with zero resistance, creating translucent slices that fall in sequence. Juice beads form along the cut edge and roll slowly down the tomato flesh. Then he holds the diamond sharpening stone under a running faucet. Water cascades across the flat diamond surface, carrying away fine metal residue in thin silvery streams. The wet surface catches the warm window light, revealing the mirror-flat texture beneath. The camera stays close to the hands and countertop, handheld and slightly shaky, emphasizing the realistic kitchen physics and the tactile UGC feel. Audio: A soft razor-clean cut through tomato flesh, the gentle thud of slices landing, then clear rushing faucet water and the subtle hiss of metal particles washing away.
```

**Video Config**:
- Resolution: 1080p
- Aspect Ratio: 9:16
- Duration: 8s
- Framerate: 24fps
- Audio: Native

---

## Shot 2: Payoff（POV 模式）

**Prompt (Sora 2)**:

```text
Grainy vertical smartphone footage. POV first-person chest-mounted action camera. A pair of slightly tanned male hands with a black digital watch on the left wrist, dark navy hoodie sleeves rolled up. The left hand holds a ripe tomato steady on a wooden cutting board. The right hand guides a freshly sharpened chef's knife across the skin — the blade slides through with zero resistance, creating translucent slices that fall in perfect sequence. Juices run cleanly along the flat of the blade and pool on the board. Water runs across the flat diamond surface of the sharpening stone and carries away the metal residue in thin silvery streams that catch the light. The camera stays close to the hands and countertop, emphasizing the realistic kitchen physics and the tactile UGC feel. Warm natural light from a side window. Audio: A soft razor-clean cut, steady scraping memory from the sharpening strokes, then clear faucet water.
```

**Video Config**:
- Resolution: 1080p
- Aspect Ratio: 9:16
- Duration: 8s
- Framerate: 24fps
- Audio: Native

---

## 物理过程描述要点

这个示例展示了 Sora 2 如何专注物理细节：

| 物理过程 | Prompt 中的描写 |
|----------|----------------|
| 切割阻力 | `slides through with zero resistance` |
| 切面效果 | `translucent slices that fall in sequence` |
| 液体流动 | `juice beads form along the cut edge and roll slowly` |
| 水流冲洗 | `water cascades across the flat surface, carrying away metal residue in thin silvery streams` |
| 光线反射 | `wet surface catches the warm window light, revealing the mirror-flat texture` |
| 微粒细节 | `subtle hiss of metal particles washing away` |

这些物理细节是 Sora 2 的核心优势，在生成提示词时应尽可能充分利用。
