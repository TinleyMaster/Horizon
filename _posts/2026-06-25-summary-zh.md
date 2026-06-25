---
layout: default
title: "Horizon Summary: 2026-06-25 (ZH)"
date: 2026-06-25
lang: zh
---

> 从 73 条内容中筛选出 7 条重要资讯。

---

1. [OpenAI 携手博通推出首款自研 AI 芯片 'Jalapeno'](#item-1) ⭐️ 9.0/10
2. [Anthropic 指控阿里巴巴非法蒸馏 Claude 模型](#item-2) ⭐️ 8.0/10
3. [瑞士联邦最高法院评估 Heretic 以解决 LLM 过度对齐问题](#item-3) ⭐️ 8.0/10
4. [llama.cpp b9784：Hexagon DSP 后端重大优化](#item-4) ⭐️ 7.0/10
5. [5 亿美元基金旨在终结所有呼吸道感染](#item-5) ⭐️ 7.0/10
6. [LLM 辅助的求职申请削弱真实性](#item-6) ⭐️ 7.0/10
7. [顶尖 AI 研究员从谷歌跳槽至 Anthropic](#item-7) ⭐️ 7.0/10

---

<a id="item-1"></a>
## [OpenAI 携手博通推出首款自研 AI 芯片 'Jalapeno'](https://techcrunch.com/2026/06/24/openai-unveils-its-first-custom-chip-built-by-broadcom/) ⭐️ 9.0/10

OpenAI 宣布推出其首款自研 AI 推理芯片 'Jalapeno'，该芯片与博通合作开发，由台积电制造，设计过程借助 OpenAI 自身模型加速。 这标志着 OpenAI 减少对外部 GPU 供应商（如英伟达）依赖的重大战略举措，可能降低推理成本并提升其 AI 服务的性能，同时重塑 AI 硬件格局。 该芯片专为 AI 推理工作负载设计，OpenAI 声称从设计到生产仅用时九个月，部分得益于使用自身模型加速芯片设计与优化。

hackernews · jamdesk · 6月24日 17:47 · [社区讨论](https://news.ycombinator.com/item?id=48663324)

**背景**: AI 推理芯片是专门优化用于高效运行已训练 AI 模型的处理器，与处理计算密集型训练过程的训练芯片不同。谷歌（TPU）和亚马逊（Inferentia）等大型科技公司已开发出自定义推理芯片，以降低其云 AI 服务的成本并提升性能。

**社区讨论**: 社区评论对声称的 AI 加速设计表示怀疑，有用户称其可能只是'无意义的营销'。其他人则讨论了权重固化在 ROM 中的替代架构，并提及了 Taalas 等直接将 LLM 模型烧录到硅片上的公司。

**标签**: `#AI hardware`, `#OpenAI`, `#custom chip`, `#inference`, `#semiconductors`

---

<a id="item-2"></a>
## [Anthropic 指控阿里巴巴非法蒸馏 Claude 模型](https://www.reuters.com/world/china/anthropic-says-alibaba-illicitly-extracted-claude-ai-model-capabilities-2026-06-24/) ⭐️ 8.0/10

Anthropic 公开指控阿里巴巴通过称为“蒸馏”的过程非法提取其 Claude AI 模型的能力，并以低于市场价格转售访问令牌。 此案凸显了 AI 行业中关于知识产权和模型盗窃的紧张局势加剧，可能为模型蒸馏的法律定性树立先例。 据称，中国转售商通过合并账户、实施支付欺诈以及将用户日志和推理链作为训练数据出售，以低于官方价格 70-90%的价格提供 Claude 令牌。

hackernews · htrp · 6月24日 19:48 · [社区讨论](https://news.ycombinator.com/item?id=48664814)

**背景**: 模型蒸馏是一种技术，通过使用更大、更强大模型的输出来训练一个较小、能力较弱的模型。这使得竞争对手能够在不承担从头训练的高昂成本的情况下复制先进能力。

**社区讨论**: 许多评论者批评 Anthropic 虚伪，指出 Anthropic 本身也在未经许可的情况下使用大量互联网数据训练 Claude。其他人则将其与史蒂夫·乔布斯和施乐的历史类比，认为在竞争性行业中复制是标准做法。

**标签**: `#AI`, `#model distillation`, `#intellectual property`, `#Anthropic`, `#Alibaba`

---

<a id="item-3"></a>
## [瑞士联邦最高法院评估 Heretic 以解决 LLM 过度对齐问题](https://www.reddit.com/r/LocalLLaMA/comments/1ueeund/the_swiss_federal_supreme_court_is_evaluating/) ⭐️ 8.0/10

这标志着已知首个真实司法机构探索使用“abliteration”来解决 LLM 拒绝行为的案例，可能为 AI 安全和法律技术应用开创先例。它凸显了在高风险领域中平衡安全对齐与合法用例的实际需求。 该论文在第 5.2 节中专门评估了 Heretic 并得出了有利结论。法院的兴趣源于 LLM 拒绝合法请求的问题，即过度对齐，这一问题也困扰着许多用户。

reddit · r/LocalLLaMA · /u/-p-e-w- · 6月24日 14:19

**背景**: 过度对齐是指 LLM 因过度安全训练而过于谨慎，甚至拒绝安全合法的请求。Abliteration 是一种通过修改模型内部表征来消除此类拒绝行为的技术。Heretic 是基础 LLM 的 abliterated 版本，旨在响应所有请求而不进行无根据的拒绝。

**社区讨论**: Reddit 社区最初担心 abliterated 模型可能被禁止，但实际消息令人惊讶且获得认可。用户指出法院使用通常与恶意意图相关的模型具有讽刺意味，部分人对论文的方法论表示兴趣。

**标签**: `#AI safety`, `#LLM over-alignment`, `#abliteration`, `#legal tech`, `#Heretic`

---

<a id="item-4"></a>
## [llama.cpp b9784：Hexagon DSP 后端重大优化](https://github.com/ggml-org/llama.cpp/releases/tag/b9784) ⭐️ 7.0/10

llama.cpp 版本 b9784 重新设计了 Hexagon DSP 后端的 MUL_MAT 和 MUL_MAT_ID 操作，引入了 32x32 分块权重重排、内核参数和缓存图，以提升推理性能。 这一优化显著提升了在高通 Hexagon DSP 上的 LLM 推理效率，使得在移动和边缘设备上部署大型语言模型更快、更高效。 该版本包括与 DMA 对齐的分块权重重排、针对大行的每块并行量化器，并支持 HMX（Hexagon Matrix eXtension），同时放弃了对 v73 之前架构的支持。

github · github-actions[bot] · 6月24日 19:55

**背景**: llama.cpp 是一个流行的开源 C/C++ 实现，用于在各种硬件上高效运行 LLM。Hexagon DSP 是高通骁龙芯片中的数字信号处理器，常用于加速移动设备上的 AI 工作负载。

**标签**: `#llama.cpp`, `#Hexagon DSP`, `#LLM inference`, `#performance optimization`, `#machine learning`

---

<a id="item-5"></a>
## [5 亿美元基金旨在终结所有呼吸道感染](https://blog.interceptfund.com/p/ending-respiratory-infections) ⭐️ 7.0/10

Intercept Fund 宣布了一项 5 亿美元的慈善计划，其雄心勃勃的目标是终结所有呼吸道感染，包括普通感冒和流感。 如果成功，这将大幅减轻全球疾病负担和医疗成本，但其可行性和资源分配引发了关于公共卫生优先事项的重要问题。 该基金计划投资于一系列生物技术初创公司和研究项目，针对广谱抗病毒药物、疫苗和增强免疫疗法。

hackernews · EthanFantl · 6月25日 01:14 · [社区讨论](https://news.ycombinator.com/item?id=48667588)

**背景**: 呼吸道感染是最常见的疾病之一，每年导致数百万人死亡和巨大的经济损失。目前的治疗通常是对症或针对特定病原体，尚无通用疗法。

**社区讨论**: 评论中既有个人悲剧的表达，也有对可行性的怀疑，以及对依赖慈善解决公共卫生问题的批评。一些人质疑 5 亿美元的预算与过去大型项目相比是否足够。

**标签**: `#biotech`, `#public health`, `#philanthropy`, `#respiratory infections`, `#innovation`

---

<a id="item-6"></a>
## [LLM 辅助的求职申请削弱真实性](https://simonwillison.net/2026/Jun/24/tom-macwright/#atom-everything) ⭐️ 7.0/10

Tom MacWright 观察到，越来越多由 LLM 共同撰写的求职申请变得千篇一律且缺乏个性，无法揭示候选人的任何真实信息。 这一趋势威胁到招聘过程的真实性，使雇主更难评估候选人的真实技能和匹配度。 MacWright 指出，这些申请通常链接到 LLM 生成的个人作品集网站和 GitHub 项目，其提交信息也完全由 LLM 生成，从而构建了一个完全合成的假象。

rss · Simon Willison · 6月24日 18:13

**背景**: 大型语言模型（LLM）如 GPT-4 可以生成类似人类的文本，包括简历、求职信和代码。虽然有助于起草，但过度依赖 LLM 可能会产生缺乏个人风格和真实经历的内容。

**标签**: `#AI`, `#careers`, `#hiring`, `#authenticity`, `#LLM`

---

<a id="item-7"></a>
## [顶尖 AI 研究员从谷歌跳槽至 Anthropic](https://techcrunch.com/2026/06/24/ai-researchers-continue-to-leave-google-for-its-rivals/) ⭐️ 7.0/10

两位顶尖 AI 研究员 Jonas Adler 和 Alexander Pritzel 已离开谷歌，加入 Anthropic，延续了知名人才从谷歌流向竞争对手的趋势。 这一人才迁移标志着 AI 行业的竞争格局变化，Anthropic 等竞争对手吸引顶尖人才离开谷歌，可能重塑 AI 创新的平衡。 此前知名离职者包括 Noam Shazeer 和 John Jumper，表明谷歌 AI 部门持续面临人才流失。

rss · TechCrunch AI · 6月24日 21:42

**背景**: 谷歌长期以来一直是 AI 研究的主导力量，但近年来出现了一波研究员流向 Anthropic、OpenAI 等初创公司和竞争对手的浪潮。Anthropic 由前 OpenAI 员工创立，专注于 AI 安全，已成为主要竞争者。

**标签**: `#AI`, `#talent migration`, `#Google`, `#Anthropic`, `#industry trends`

---