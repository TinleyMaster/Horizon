---
layout: default
title: "Horizon Summary: 2026-06-30 (ZH)"
date: 2026-06-30
lang: zh
---

> 从 71 条内容中筛选出 10 条重要资讯。

---

1. [vLLM v0.24.0：支持 MiniMax-M3 并优化 DeepSeek-V4](#item-1) ⭐️ 8.0/10
2. [llama.cpp b9840 新增 DeepSeek V4 支持](#item-2) ⭐️ 8.0/10
3. [Fil-C 实现 setjmp/longjmp 内存安全](#item-3) ⭐️ 8.0/10
4. [LongCat-2.0：1.6 万亿参数 MoE 模型，基于非英伟达 AI ASIC 集群训练](#item-4) ⭐️ 8.0/10
5. [火箭实验室历史性收购铱星公司](#item-5) ⭐️ 8.0/10
6. [Ornith-1.0：面向智能体编程的开源权重大语言模型](#item-6) ⭐️ 8.0/10
7. [AI 排行榜 Arena 估值达 1 亿美元](#item-7) ⭐️ 8.0/10
8. [ChatGPT 推翻陈立杰苦研 7 年的 Erdős 猜想成果](#item-8) ⭐️ 8.0/10
9. [最高法院允许特朗普随意解雇 SEC 和 CFTC 委员](#item-9) ⭐️ 8.0/10
10. [AI 代理不是你的同事](#item-10) ⭐️ 7.0/10

---

<a id="item-1"></a>
## [vLLM v0.24.0：支持 MiniMax-M3 并优化 DeepSeek-V4](https://github.com/vllm-project/vllm/releases/tag/v0.24.0) ⭐️ 8.0/10

vLLM v0.24.0 新增了对 MiniMax-M3 模型的支持，并对 DeepSeek-V4 进行了重大性能优化，包括 FlashInfer 稀疏索引缓存和预填充块规划优化。该版本还引入了流式解析引擎、DiffusionGemma 支持以及 DeepEP v2 集成，共有 256 位贡献者提交了 571 次提交。 此版本显著扩展了 vLLM 的模型生态系统和推理效率，使部署 MiniMax-M3 和 DeepSeek-V4 等前沿 LLM 的开发者受益。性能改进和新功能（如流式解析器、DiffusionGemma）降低了延迟，拓宽了生产级 LLM 服务的应用场景。 关键技术亮点包括：Model Runner V2 现在默认支持量化模型；新的流式解析引擎统一了工具调用/推理解析；设备选择变更，vLLM 不再内部设置 CUDA_VISIBLE_DEVICES。DeepSeek-V4 优化通过 FlashInfer 稀疏索引缓存实现了 2-4% 的 TTFT 改进，并通过预填充块规划实现了 4% 的端到端吞吐量提升。

github · khluu · 6月29日 19:41

**背景**: vLLM 是一个开源的高吞吐量 LLM 推理引擎，广泛应用于生产环境。此版本延续了其快速开发周期，增加了对新兴模型的支持，并优化了大规模部署的性能。大量的提交和贡献者反映了强大的社区参与度。

**标签**: `#vLLM`, `#LLM inference`, `#DeepSeek-V4`, `#MiniMax-M3`, `#open source`

---

<a id="item-2"></a>
## [llama.cpp b9840 新增 DeepSeek V4 支持](https://github.com/ggml-org/llama.cpp/releases/tag/b9840) ⭐️ 8.0/10

llama.cpp 版本 b9840 引入了对 DeepSeek V4 模型架构的支持，包括转换脚本、图计算、状态保存/加载以及聊天模板集成。 此次更新使得通过 llama.cpp 在消费级硬件上本地推理 DeepSeek V4 成为可能，从而拓宽了先进 AI 能力的可及性。 该版本包含多项社区贡献，修复了 rope 和 sinkhorn 问题，支持 'pro' 模型变体，并启用了 flash attention 和图复用以提升性能。

github · github-actions[bot] · 6月29日 10:25

**背景**: llama.cpp 是一个开源 C++ 库，用于在 CPU 和 GPU 上高效推理 LLM，支持多种模型架构。DeepSeek V4 是 DeepSeek 最新推出的大型语言模型，以强大性能著称。此版本允许用户通过 llama.cpp 本地运行 DeepSeek V4。

**标签**: `#llama.cpp`, `#DeepSeek V4`, `#LLM inference`, `#open source`

---

<a id="item-3"></a>
## [Fil-C 实现 setjmp/longjmp 内存安全](https://fil-c.org/context_switches) ⭐️ 8.0/10

Fil-C 为 setjmp/longjmp 和 ucontext 引入了内存安全的上下文切换，解决了 C 语言中长期存在的安全问题。 这是对系统编程安全性的重要贡献，因为 setjmp/longjmp 以容易出错而闻名，一直是 C 程序中内存安全错误的来源。 Fil-C 通过跟踪保存上下文的生命周期并防止跳转到无效帧，确保 longjmp 只恢复有效的栈帧。

hackernews · modeless · 6月30日 00:38 · [社区讨论](https://news.ycombinator.com/item?id=48727177)

**背景**: setjmp 和 longjmp 是 C 标准库中用于非局部跳转的函数，允许程序保存和恢复执行上下文。然而，它们不安全，因为 longjmp 可能跳转到一个已经不存在的栈帧，导致未定义行为。Fil-C 是一个研究项目，旨在通过编译器和运行时技术使 C 语言内存安全。

**社区讨论**: 评论者赞赏文章的技术深度，指出 setjmp/longjmp 的复杂性以及 Fil-C 方法的价值。一些人指出，使用 setjmp/longjmp 的代码通常具有超出内存安全的更广泛风险。

**标签**: `#memory safety`, `#C programming`, `#context switching`, `#systems programming`, `#Fil-C`

---

<a id="item-4"></a>
## [LongCat-2.0：1.6 万亿参数 MoE 模型，基于非英伟达 AI ASIC 集群训练](https://longcat.chat/blog/longcat-2.0/) ⭐️ 8.0/10

美团发布了 LongCat-2.0，这是一个大规模混合专家（MoE）模型，总参数量达 1.6 万亿，激活参数量为 480 亿。该模型在数万个 AI ASIC 超级计算集群上训练，很可能使用了华为昇腾 910C 芯片。 这表明大规模 AI 模型可以在非英伟达硬件上有效训练，减少对英伟达 GPU 的依赖。同时凸显了替代性 AI 芯片生态（尤其是在中国）日益成熟。 该模型采用混合专家架构，总参数 1.6 万亿，但每次推理仅激活 480 亿参数，计算效率高。训练基础设施包含数万个 AI ASIC 超级计算集群，社区猜测可能使用了华为昇腾 910C 芯片。

hackernews · benjiro29 · 6月30日 00:30 · [社区讨论](https://news.ycombinator.com/item?id=48727116)

**背景**: 混合专家（MoE）是一种神经网络架构，每次输入仅激活部分参数，从而在不成比例增加计算成本的情况下实现更大模型。AI ASIC（专用集成电路）是为 AI 工作负载设计的定制芯片，是英伟达等通用 GPU 的替代方案。华为昇腾 910C 是华为开发的高性能 AI 加速器，与英伟达产品竞争。

**社区讨论**: 社区评论强调了在非英伟达基础设施上训练的重要性，并猜测使用了华为昇腾 910C 芯片。一些用户用棘手问题测试了模型，并注意到其推理能力，而另一些用户则对开源部署细节（如 llama.cpp 兼容性）表示兴趣。

**标签**: `#MoE`, `#large language model`, `#AI infrastructure`, `#Huawei Ascend`, `#Meituan`

---

<a id="item-5"></a>
## [火箭实验室历史性收购铱星公司](https://investors.rocketlabcorp.com/news-releases/news-release-details/rocket-lab-acquire-iridium-historic-deal-creating-fully) ⭐️ 8.0/10

火箭实验室宣布将收购铱星通信公司，这是一项历史性交易，将发射服务与大型卫星星座相结合，打造一家完全整合的太空公司。 此次收购使火箭实验室能够利用铱星现有的卫星网络来保证发射需求，类似于 SpaceX 使用星链的方式，并实现了从卫星制造到运营的垂直整合。 该交易包括铱星由 66 颗在轨卫星组成的星座及其下一代替换计划，火箭实验室可以利用自己的卫星制造能力来建造这些卫星。

hackernews · everfrustrated · 6月29日 14:09 · [社区讨论](https://news.ycombinator.com/item?id=48719485)

**背景**: 火箭实验室是一家发射服务提供商和卫星制造商，而铱星运营着一个用于全球通信的低地球轨道卫星星座。此次收购模仿了 SpaceX 利用星链星座确保稳定发射节奏的策略。

**社区讨论**: 社区评论表达了对太空垃圾和太空商业化的担忧，一位用户指出发射成本降低可能导致更多用途可疑的卫星。其他人则认为这笔交易是保证发射需求和垂直整合的明智战略举措。

**标签**: `#space`, `#acquisition`, `#satellites`, `#Rocket Lab`, `#Iridium`

---

<a id="item-6"></a>
## [Ornith-1.0：面向智能体编程的开源权重大语言模型](https://simonwillison.net/2026/Jun/29/ornith/#atom-everything) ⭐️ 8.0/10

DeepReinforce 发布了 Ornith-1.0 系列开源权重大语言模型（MIT 许可），参数规模从 9B 到 397B 不等，在编程基准测试中达到了同规模开源模型的最高水平。 此次发布显著提升了开源模型在智能体编程方面的能力，Ornith-1.0 能自主处理多步工具调用和代码理解任务，有望加速 AI 辅助软件开发。 该模型基于预训练的 Gemma 4 和 Qwen 3.5 构建，两者均为 Apache 2.0 许可，确保了许可证兼容性。早期测试显示它能熟练运行智能体框架，例如在 Datasette 代码库中定位特定代码。

rss · Simon Willison · 6月29日 16:17

**背景**: 智能体编程指大语言模型能通过多次工具调用（如搜索、读取文件）自主完成编程任务，无需人工干预。开源权重模型允许开发者本地运行，具有隐私和定制化优势。

**标签**: `#LLM`, `#open-source`, `#coding`, `#AI agents`, `#model release`

---

<a id="item-7"></a>
## [AI 排行榜 Arena 估值达 1 亿美元](https://techcrunch.com/2026/06/29/arena-the-ai-leaderboard-everyone-uses-is-now-a-100m-business/) ⭐️ 8.0/10

广受欢迎的 AI 排行榜平台 Arena 在 2025 年 9 月推出商业服务后不久，估值已达到 1 亿美元。 这一里程碑验证了市场对标准化 AI 模型评估的需求，并可能影响行业中 AI 模型的基准测试和比较方式。 Arena 的商业服务于 2025 年 9 月才推出，其迅速增长至 1 亿美元估值凸显了投资者对 AI 评估基础设施的强烈信心。

rss · TechCrunch AI · 6月29日 17:39

**背景**: 像 Arena 这样的 AI 排行榜根据模型在各种任务中的表现提供公开排名，帮助开发者和研究人员比较模型。Arena 一直是 AI 社区中受欢迎的免费资源，其向商业模式的转变标志着评估服务货币化的趋势。

**标签**: `#AI`, `#leaderboard`, `#startup`, `#valuation`

---

<a id="item-8"></a>
## [ChatGPT 推翻陈立杰苦研 7 年的 Erdős 猜想成果](https://mp.weixin.qq.com/s?__biz=MzI3MTA0MTk1MA==&mid=2652709773&idx=2&sn=68bde762eb0070f5bd61518728971232) ⭐️ 8.0/10

据报道，ChatGPT 解决了一个与 Erdős 猜想相关的长期未解计算几何问题，推翻了陈立杰苦研七年的成果。 这表明大语言模型现在能够在高度专业化的数学领域挑战人类专家，可能加速发现并重塑研究方式。 这一突破基于 OpenAI 最近解决的 Erdős 猜想，该问题是计算几何的核心难题，由清华姚班传奇人物陈立杰研究了七年。

rss · 新智元 · 6月29日 05:01

**背景**: Erdős 猜想是离散几何中一个著名的未解问题。陈立杰是中国著名的计算机科学家，以计算复杂性方面的工作闻名。ChatGPT 是 OpenAI 开发的大语言模型。

**标签**: `#AI`, `#computational geometry`, `#OpenAI`, `#Erdős conjecture`, `#ChatGPT`

---

<a id="item-9"></a>
## [最高法院允许特朗普随意解雇 SEC 和 CFTC 委员](https://decrypt.co/372342/supreme-court-trump-fire-sec-cftc-commissioners-crucial-moment-crypto) ⭐️ 8.0/10

美国最高法院推翻了一项长达 91 年的先例，裁定特朗普总统可以几乎以任何理由随意解雇 SEC 和 CFTC 的委员。 这一决定赋予了总统对关键金融监管机构前所未有的控制权，可能在加密货币行业的关键时刻导致监管和执法方向的重大转变。 该裁决取消了 SEC 和 CFTC 委员传统的独立性，此前他们只能因故被免职。该案以 6 比 3 的保守派多数票通过。

rss · Decrypt · 6月29日 19:29

**背景**: SEC 和 CFTC 是美国监管证券和商品市场（包括加密货币）的主要机构。历史上，其委员有固定任期，只能因效率低下、玩忽职守或渎职被免职，以确保监管独立性。这一被称为 Humphrey's Executor 的先例自 1935 年以来一直有效。

**标签**: `#Supreme Court`, `#crypto regulation`, `#SEC`, `#CFTC`, `#policy`

---

<a id="item-10"></a>
## [AI 代理不是你的同事](https://www.technologyreview.com/2026/06/29/1139849/ai-agents-are-not-your-coworkers/) ⭐️ 7.0/10

《麻省理工科技评论》发表文章，认为不应将 AI 代理拟人化为同事，而应将其视为工具，并警告不要错误地将类人能动性归因于 AI 系统。 这一观点挑战了将 AI 代理视为协作伙伴的主流叙事，可能影响企业设计及部署工作场所 AI 的方式，以及员工对 AI 工具的认知和互动。 文章举例说明，公司给 AI 工具起一个像 Alex 这样的人名，可能导致对 AI 能力和局限性的不切实际的期望和误解。

rss · MIT Tech Review AI · 6月29日 18:00

**背景**: AI 代理是能够自主执行任务（如安排会议或回答查询）的软件系统。将它们拟人化——赋予人类名字或视其为同事——可能模糊人与机器能力的界限，导致过度依赖或伦理问题。

**标签**: `#AI agents`, `#human-AI interaction`, `#workplace AI`, `#AI ethics`

---