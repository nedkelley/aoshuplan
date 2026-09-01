# AI 学习计划（24 周 · 大模型应用开发方向）

> 目标岗位：大模型/AI 应用开发工程师（推理部署 / RAG / Agent / AIGC / 解决方案）
> 背景：C++ / C# / Lua / Unity-Cocos，15 年游戏工程经验
> 方式：每周 10–15 小时，全程用 opencode 搭着写，每阶段产出可写进简历的作品
> 硬件：本地 7B 模型需约 8GB 显存，不够则用 AutoDL / Colab 按小时租 GPU

---

## Phase 1（第 1–8 周）Python + 后端 + LLM 概念

| 周 | 学什么 | 练什么（产出物） | 学习资料 |
| --- | --- | --- | --- |
| 1 | Python 语法：类型/list/dict/set、函数、类、异常、模块（用 C# 对照） | 把一个工具从 C#/Lua 逻辑翻译成 Python，做成命令行 | 廖雪峰 Python 教程 / Python 官方中文教程 |
| 2 | 生成器/装饰器/上下文管理器、type hints、dataclass、pandas、正则 | 处理真实数据（游戏日志/配置），清洗+统计 | pandas 官方教程 / 正则 30 分钟入门 |
| 3 | HTTP/REST、FastAPI、Pydantic、SQL CRUD | 一个能 curl 的 CRUD API | FastAPI 官方中文文档 |
| 4 | Docker：Dockerfile、docker-compose、日志 | 打包第 3 周服务，一键起服务 | Docker 官方文档 / 菜鸟 Docker 教程 |
| 5 | Token/Embedding/上下文/温度、Transformer 原理、大模型 API 调用 | 封装 LLM 客户端（重试/超时/流式） | Jay Alammar 图解 Transformer / OpenAI API 文档 |
| 6 | Prompt 设计、few-shot、CoT、结构化输出（JSON/Function Calling） | 非结构化文本→结构化 JSON 抽取工具 | DeepLearning.AI Prompt 短期课 / OpenAI Function Calling 文档 |
| 7 | Embedding、向量检索、chunking、向量库 | 最小 RAG：切片→向量化→检索→生成 | LlamaIndex 官方文档 / pgvector 教程 |
| 8 | 整合 + 自检 | FastAPI + RAG 问答 API | — |

## Phase 2（第 9–16 周）RAG 进阶 + Agent + 部署

| 周 | 学什么 | 练什么（产出物） | 学习资料 |
| --- | --- | --- | --- |
| 9 | 复杂文档解析、表格/图文、递归分块 | 解析真实 PDF/合同/手册 | PyMuPDF / unstructured 文档 |
| 10 | 混合检索（BM25+向量）、Rerank、RAG 评估 | 加 rerank + 写评估脚本，量化效果 | RAGAS 文档 / LangChain 检索文档 |
| 11 | Agent（ReAct）、工具调用、LangChain/LangGraph | 能自主选工具的 Agent | LangGraph 官方教程 / LangChain Agent 文档 |
| 12 | 状态图、记忆、多智能体协作 | 多步工作流 Agent（调研→整理→报告） | LangGraph 教程（深入） |
| 13 | MCP 协议、写 MCP server、Dify/Coze | 封装工具成 MCP server | MCP 官方文档 / Dify 文档 |
| 14 | Ollama/vLLM、量化、显存估算、并发吞吐 | 本地部署 7B 模型，测延迟/吞吐 | vLLM 文档 / Ollama 官网 |
| 15 | 微调选型、LoRA、HuggingFace、数据集 | LoRA 微调小模型做领域问答 | HuggingFace 课程 / PEFT 文档 / Unsloth |
| 16 | 整合 + 自检 | RAG + Agent + 部署串成完整服务 | — |

## Phase 3（第 17–24 周）作品整合 + 求职

| 周 | 做什么 |
| --- | --- |
| 17–18 | 作品一：企业知识库/智能客服（前端+FastAPI+RAG+Agent+部署+评估），README+架构图+demo 视频 |
| 19–20 | 作品二：按目标工种深耕一个（推理部署 / Agent / AIGC / 微调） |
| 21 | 简历改写（游戏经验→AI 语言）+ GitHub 整理 |
| 22 | 面试八股：RAG 原理、幻觉治理、成本优化、长上下文、Agent 设计、微调选型 |
| 23–24 | 投递 → 复盘 → 补强作品 |

---

## 系统学习资料清单（带链接）

### Python
- 廖雪峰 Python 教程：https://www.liaoxuefeng.com/wiki/1016959663602400
- Python 官方中文教程：https://docs.python.org/zh-cn/3/tutorial/
- 菜鸟教程 Python3：https://www.runoob.com/python3/python3-tutorial.html
- pandas 官方入门：https://pandas.pydata.org/docs/getting_started/index.html
- 正则 30 分钟入门（中文）：https://deerchao.cn/tutorials/regex/regex.htm

### 后端 / 工程
- FastAPI 官方文档（中文）：https://fastapi.tiangolo.com/zh/
- Docker 官方文档：https://docs.docker.com/
- 菜鸟 Docker 教程：https://www.runoob.com/docker/docker-tutorial.html

### AI / ML 基础概念（懂原理即可，不陷数学）
- 李宏毅机器学习（B 站搜「李宏毅 机器学习 2024」，免费）
- 3Blue1Brown 神经网络系列（B 站搜「3Blue1Brown 深度学习」，有中文字幕版）
- 吴恩达 Machine Learning Specialization（Coursera）：https://www.coursera.org/specializations/machine-learning-introduction

### LLM / Transformer 核心
- Jay Alammar《图解 Transformer》：https://jalammar.github.io/illustrated-transformer/
- Andrej Karpathy《从零构建 GPT》：https://www.youtube.com/watch?v=kCc8FmEb1nY
- 李沐《动手学深度学习》：https://zh.d2l.ai/
- HuggingFace 官方课程（免费）：https://huggingface.co/learn

### Prompt / 结构化输出
- DeepLearning.AI《ChatGPT Prompt Engineering for Developers》：https://www.deeplearning.ai/short-courses/chatgpt-prompt-engineering-for-developers/
- OpenAI Prompt Engineering 指南：https://platform.openai.com/docs/guides/prompt-engineering
- OpenAI Function Calling 文档：https://platform.openai.com/docs/guides/function-calling

### RAG
- LlamaIndex 官方文档：https://docs.llamaindex.ai/
- LangChain 官方文档：https://python.langchain.com/docs/
- RAGAS（RAG 评估）：https://docs.ragas.io/
- pgvector：https://github.com/pgvector/pgvector
- FAISS：https://github.com/facebookresearch/faiss
- Milvus 文档：https://milvus.io/docs/

### Agent / 编排
- LangGraph 官方教程：https://langchain-ai.github.io/langgraph/
- AutoGen（微软）：https://microsoft.github.io/autogen/
- MCP 官方文档：https://modelcontextprotocol.io/
- Dify（低代码）：https://docs.dify.ai/

### 部署 / 推理
- vLLM 文档：https://docs.vllm.ai/
- Ollama 官网：https://ollama.com/
- HuggingFace Transformers：https://huggingface.co/docs/transformers/

### 微调 / LoRA
- HuggingFace PEFT：https://huggingface.co/docs/peft/
- Unsloth（高效微调）：https://github.com/unslothai/unsloth

### 国产大模型 API（用起来最顺）
- DeepSeek API 文档：https://api-docs.deepseek.com/
- 阿里云百炼（通义千问）：https://help.aliyun.com/zh/model-studio/
- 讯飞星火开放平台：https://www.xfyun.cn/

### AIGC（选修）
- ComfyUI：https://github.com/comfyanonymous/ComfyUI
- HuggingFace Diffusers：https://huggingface.co/docs/diffusers/

---

## 阶段自检清单

- [ ] 能不看文档，从零写一个 FastAPI + Docker 服务并跑起来？
- [ ] 能稳定让 LLM 输出结构化 JSON，并能校验它？
- [ ] 能讲清 RAG 全链路每步「为什么这么做」，以及它和微调的区别？
- [ ] 能搭一个带工具调用的 Agent，并控制它的循环终止？
- [ ] 能本地部署一个量化模型并说出显存/吞吐的权衡？
- [ ] 每个产出物都推到 GitHub 并写了能自证效果的 README？

---

## 三个最容易翻车的坑

1. 陷在数学里：Transformer/Attention 看懂流程即可，别推梯度、看论文公式。
2. 只学不产出：每周必须有东西 push 到 GitHub，否则 6 个月后简历还是空的。
3. 追求微调效果：应用岗要的是「知道什么时候用 RAG、什么时候微调、什么时候不用模型」。
