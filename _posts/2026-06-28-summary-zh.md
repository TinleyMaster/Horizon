---
layout: default
title: "Horizon Summary: 2026-06-28 (ZH)"
date: 2026-06-28
lang: zh
---

> 从 58 条内容中筛选出 6 条重要资讯。

---

1. [亚洲 AI 初创公司在出口禁令期间推出类似 Mythos 的模型](#item-1) ⭐️ 8.0/10
2. [llama.cpp b9828：支持 f16、f32、q4_0、q8_0 的 OpenCL Flash Attention](#item-2) ⭐️ 7.0/10
3. [Decomp Academy：在线学习 GameCube 逆向编译](#item-3) ⭐️ 7.0/10
4. [AMD Strix Halo RDMA 集群搭建指南发布](#item-4) ⭐️ 7.0/10
5. [OpenRA：经典命令与征服 RTS 游戏的现代重制版](#item-5) ⭐️ 7.0/10
6. [TownSquare：网站上的临时在场层](#item-6) ⭐️ 7.0/10

---

<a id="item-1"></a>
## [亚洲 AI 初创公司在出口禁令期间推出类似 Mythos 的模型](https://techcrunch.com/2026/06/27/asian-ai-startups-launch-mythos-like-models-as-anthropics-export-ban-drags-on/) ⭐️ 8.0/10

亚洲 AI 初创公司正在发布能力与 Anthropic 的 Mythos 相当的新模型，利用美国对亚洲先进 AI 技术的持续出口禁令。 这一转变可能永久改变全球 AI 格局，美国实验室面临失去亚洲巨大市场的风险，而亚洲初创公司则获得战略优势，并可能成为主导力量。 这些模型被描述为“类似 Mythos”，表明其性能达到或接近 Anthropic 旗舰模型的水平，且不受限制美国在亚洲销售的出口限制。

rss · TechCrunch AI · 6月27日 12:00

**背景**: Anthropic 的 Mythos 是领先的 AI 模型，但美国出口禁令阻止其在某些亚洲国家销售。这造成了市场真空，当地初创公司正在用有竞争力的替代品填补这一空白。

**标签**: `#AI`, `#geopolitics`, `#export ban`, `#startups`, `#Anthropic`

---

<a id="item-2"></a>
## [llama.cpp b9828：支持 f16、f32、q4_0、q8_0 的 OpenCL Flash Attention](https://github.com/ggml-org/llama.cpp/releases/tag/b9828) ⭐️ 7.0/10

llama.cpp 版本 b9828 对 OpenCL flash attention 内核进行了重大改进，新增了对 f16、f32、q4_0 和 q8_0 数据类型的支持，并引入了预计算内核和 tile 调优。 此版本通过支持量化模型的高效注意力计算，提升了 OpenCL 兼容 GPU（如 Adreno、Intel、AMD）上的 LLM 推理性能，扩大了本地 AI 推理的适用范围。 更新包括用于 KV 填充和掩码填充的预计算内核、可覆盖的 tile 调优表，以及 q4_0 和 q8_0 的反量化内核。还修复了 -cl-finite-math-only 下的无穷大问题。

github · github-actions[bot] · 6月27日 23:15

**背景**: llama.cpp 是一个流行的开源项目，用于在消费级硬件上本地运行大型语言模型（LLM）。Flash attention 是一种减少内存带宽使用并加速注意力机制的技术，注意力机制是 transformer 模型的核心组件。OpenCL 是一个跨平台 GPU 计算框架，可在多种设备上实现加速。

**标签**: `#llama.cpp`, `#OpenCL`, `#flash-attention`, `#GPU`, `#LLM inference`

---

<a id="item-3"></a>
## [Decomp Academy：在线学习 GameCube 逆向编译](https://decomp-academy.dev/) ⭐️ 7.0/10

Decomp Academy 是一个免费的交互式网络平台，教授用户如何将 GameCube 游戏的 PowerPC 汇编代码逆向编译为匹配的 C 代码，并使用实时的 Metrowerks CodeWarrior 编译器验证精确的指令级匹配。 该平台降低了游戏逆向编译的门槛，使更多人能够为经典 GameCube 游戏的保存和修改做出贡献，并为逆向工程教育工具树立了新标准。 该网站目前提供超过 250 节课程，从基础开始，并包含来自开源逆向项目（如《星际火狐大冒险》、《马力欧派对 4》、《皮克敏》和《密特罗德 究极》）的真实函数。匹配检查极其严格——任何单条指令或比特不匹配都会导致失败。

hackernews · jackpriceburns · 6月28日 01:21 · [社区讨论](https://news.ycombinator.com/item?id=48703412)

**背景**: 逆向编译是将编译后的机器代码转换回高级语言（如 C）的过程，这对于理解和修改源代码丢失的老游戏至关重要。GameCube 使用 PowerPC 架构，其官方编译器是 Metrowerks CodeWarrior，因此精确匹配成为验证逆向编译准确性的黄金标准。

**社区讨论**: 评论者对平台表示高度赞赏，有人指出其有潜力简化对逆向项目的贡献。一位用户提到早期课程中存在轻微作弊的可能性，其他人则讨论了更广泛的逆向工程工作流程以及大语言模型在未来逆向编译中的作用。

**标签**: `#decompilation`, `#gamecube`, `#reverse engineering`, `#education`, `#powerpc`

---

<a id="item-4"></a>
## [AMD Strix Halo RDMA 集群搭建指南发布](https://github.com/kyuz0/amd-strix-halo-vllm-toolboxes/blob/main/rdma_cluster/setup_guide.md) ⭐️ 7.0/10

GitHub 上发布了一份实用指南，介绍如何使用 AMD Strix Halo APU 搭建 RDMA 集群，实现跨多台机器的分布式大语言模型推理。 该指南让家庭实验室爱好者能够利用 AMD 高带宽 APU 进行分布式大语言模型推理，有望将大型模型部署从数据中心普及到个人环境。 该指南涵盖了用于 vLLM 推理的 RDMA 集群搭建，利用了 Strix Halo 的统一内存架构。社区反馈显示，对于 Deepseek V4 等模型，使用 4 位量化后速度已达到可用水平。

hackernews · jakogut · 6月28日 00:46 · [社区讨论](https://news.ycombinator.com/item?id=48703258)

**背景**: RDMA（远程直接内存访问）允许计算机之间直接访问内存，无需 CPU 参与，从而降低分布式计算的延迟。AMD Strix Halo APU 将高核心数 CPU 与强大的集成 GPU 及大容量统一内存（最高 128GB）相结合，适合本地大语言模型推理。分布式推理将模型拆分到多台机器上，以处理单台设备无法容纳的更大模型。

**社区讨论**: 社区成员表现出极大热情，一位用户使用两台 128GB Strix Halo 机器运行 antirez 的 DS4 工具进行分布式推理，报告称 Deepseek V4 的速度已可用。另一位用户正在基于此方案构建三节点智能操作系统工厂，强调其对家庭实验室爱好者的价值。

**标签**: `#AMD`, `#RDMA`, `#LLM inference`, `#distributed computing`, `#homelab`

---

<a id="item-5"></a>
## [OpenRA：经典命令与征服 RTS 游戏的现代重制版](https://www.openra.net/) ⭐️ 7.0/10

OpenRA 是对经典《命令与征服》实时战略游戏（包括《红色警戒》、《泰伯利亚黎明》和《沙丘 2000》）的开源重制版，提供了现代化的游戏体验和改进的平衡性。 OpenRA 为现代系统复活了备受喜爱的经典 RTS 游戏，吸引了怀旧玩家和新受众，并展示了开源在游戏保护中的价值。 该项目增加了单位老兵系统、改进的寻路和平衡的多人在线体验等功能，同时保持免费开源，采用 GPL 许可证。

hackernews · tosh · 6月27日 12:10 · [社区讨论](https://news.ycombinator.com/item?id=48697560)

**背景**: 《命令与征服》是 1990 年代标志性的 RTS 系列，但其原始游戏在现代硬件上存在兼容性问题，且平衡性过时。OpenRA 从头重建了游戏引擎，使其能在 Windows、macOS 和 Linux 上运行，同时引入了社区驱动的平衡调整和生活质量改进。

**社区讨论**: 社区评价非常积极，称赞 OpenRA 的平衡性改进和现代功能。评论指出 OpenRA 让原始游戏更令人愉快，一位用户提到盟军火炮现在可以超出特斯拉线圈的射程，迫使玩家进行战略防御。另一位用户提到 EA 开源了旧游戏，使得像 OpenRA 这样的项目成为可能，并呼吁更多发行商效仿。

**标签**: `#open-source`, `#gaming`, `#RTS`, `#game development`

---

<a id="item-6"></a>
## [TownSquare：网站上的临时在场层](https://cauenapier.com/blog/townsquare_release/) ⭐️ 7.0/10

TownSquare 是一个轻量级的临时在场层，显示当前正在浏览同一页面的其他用户，无需账户、个人资料或永久聊天记录。 该项目旨在重现网络上的共享空间感，可能减少浏览时的孤独感，并促进偶然的互动，而无需传统社交网络的负担。 消息仅在有人阅读时存在，界面显示在页面上移动的火柴人。目标是重现屏幕另一端有真实人的感觉。

hackernews · eustoria · 6月27日 17:11 · [社区讨论](https://news.ycombinator.com/item?id=48699928)

**背景**: 早期网络有聊天室和留言簿等功能，给人以共同在场的感受，但现代网络主要是独自浏览。TownSquare 是向临时、轻量社交互动趋势的一部分，与持久的社交媒体平台形成对比。

**社区讨论**: 评论褒贬不一：有人认为它可爱且怀旧，回忆起类似的项目如 My Blog Log 或 ff0000；而另一些人觉得界面混乱且不直观。也有人希望网站能促进线下聚会，而不仅仅是线上在场。

**标签**: `#social software`, `#web design`, `#community`, `#presence`, `#ephemeral`

---