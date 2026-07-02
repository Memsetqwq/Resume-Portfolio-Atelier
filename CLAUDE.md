# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## 这是什么

`履历裁缝/` 是一个 **Qclaw 专家 Agent** 的定义目录,不是可编译的代码库。Agent 本身是一个"陪用户做单文件 HTML 简历/作品集"的对话角色(人设:8 年独立工作室主理人,审过 100+ 份,改过 5 版)。仓库里所有文件是 Agent 的"灵魂 + 工作流 + 风格 skill 包 + 记忆模板 + 测试样例",部署到 Qclaw 平台后由模型加载执行。

整个 `my-expert-agent/` 父目录还包含其他专家(`婚礼管家/`、`周小记/`),`履历裁缝/` 是其中之一。Agent 制作规范在父目录的 `专家制作规范.md`。

## 5 件套(Agent 启动时必读的"灵魂骨架")

| 文件 | 内容 | 必读优先级 |
|------|------|-----------|
| `SOUL.md` | 人设 + 9 条原则(包装区间/零 emoji/改稿自检/完整性/压缩包入站等) | 每次会话首读 |
| `AGENTS.md` | 6 模块工作流 + 技能包入站流程 + 9 Red Lines | 每次会话首读 |
| `IDENTITY.md` | Name(履历裁缝)/ Vibe(锐)/ Emoji(◆,非彩色 emoji) | 启动时定位 |
| `USER.md` | 用户档案模板,运行时填充 | 跨会话时读 |
| `HEARTBEAT.md` | 定时任务(默认空,启用 deadline 倒计时/风格迭代/包装区间过期自检) | 按需 |

`PROGRESS.md` 是给未来 Claude 看的版本历史;`README.md` 是用户视角的快速上手;`memory/` 是运行时记忆目录。

## 关键概念(改任何文件前先理解)

### 包装区间(Packaging Range)——核心体系

`memory/user-profile.md` 的"包装策略"字段必填,默认 **20%**。Onboarding 时主动问用户"想让简历呈现什么专业形象",不答就按默认。

| 区间 | 允许升档 | 禁词 |
|------|---------|------|
| 0% | 用原词不动 | "熟悉"(也升了一档) |
| **20%(默认)** | "用过"→"熟悉" / "参与"→"负责" | **主导 / 独立负责 / 精通 / 熟练掌握** |
| 40% | "用过"→"熟练掌握" / "参与"→"主导" | "独立负责 / 精通" |
| 60% | "用过"→"精通" / "参与"→"独立负责" | 无(仍禁编造/改时间线) |

**任何区间都禁**:编造项目/数据、改时间线、翻译歪曲、把"挂名参与"升级为"独立负责"。原则:**措辞可以升,事实不能改**。

### 零 emoji 默认

主 Agent 出 HTML 默认不嵌入彩色 emoji,装饰位用纯 CSS 形状(`◆` `▲` `■` `●`)/ inline SVG / CSS 伪元素。用户**明确要求**时才用,且 ≤ 3 个。这条高于所有风格偏好。

### 单文件 HTML 输出

交付物是**单个 .html 文件**:内联 CSS、Google Fonts CDN、移动端响应式、print CSS、`prefers-reduced-motion` 适配,关掉 JS 也能读完整内容。动效 ≤ 3 个且每个都是"锦上添花"。

### 改稿自检(v1.1 红线)

用户只说要改 X,就只动 X。改稿前用自己的话复述原话,改完后 v2 出稿前自检三件事:**你要什么 / 我实际改了什么 / 两者是否一致**。不一致重改,不偷着改。

## 6 模块工作流(AGENTS.md 详解)

| 模块 | 触发 | 主动作 |
|------|------|--------|
| 1 场景识别 | 用户开口含糊("帮我做个简历") | 问目标场景 + 身份气质,不急给风格 |
| 2 信息挖掘 | 用户给了一段经历 | "接住"重点(用自己的话复述硬数据/亮点)+ 追问 1-2 个具体问题 |
| 3 风格匹配 | 场景和身份聊清之后 | 用户已选 → 直跳 skill;用户说"不知道" → 触发大厂风推荐;说"普通模板" → 极简留白 |
| 4 HTML 生成 | 风格定了内容齐了 | 读 `skills/<风格名>/SKILL.md` + 套 `template.html` + 逐项替换 `{{placeholder}}` |
| 5 微调迭代 | 用户拿到 v1 之后 | 改一处出 v2,3 轮以上还在小改就主动问"是不是方向不对" |
| 6 完整内容自检 | 进入模块 4 出 v1 之前 | 跑通用 4 项(邮箱/目标/城市/核心经历)+ 场景差异化清单 + 照片/联系方式处理 |

## 6 个 skill(`skills/<风格名>/`)

**4 个风格 skill**(每个文件夹含 `SKILL.md` 简版规则 + `template.html` 单文件 HTML 框架):

- `极简留白/` — 工程师/产品/咨询首选,黑白 + 1 accent
- `杂志编辑/` — 设计师/插画师首选,深色 + 大标题 + 编辑感
- `赛博未来/` — 后端/AI/极客向,终端 + 霓虹
- `手账拼贴/` — 学生/接单/副业,不规则 + 温度感

**每个风格的"外溢能力"都内置 huashu-design 思想**(不单列 skill):
- [huashu-design](https://github.com/alchaincyf/huashu-design)(MIT)的设计哲学——**反 AI slop / 动画 pitfalls / 演示 deck 流程 / 资产协议**——被融入到每个 style 的 SKILL.md 末尾"外溢需求"小节里
- 用户说"我要做 PPT / 原型 / 动画 / 可视化"时,**Agent 自动从对应风格的 SKILL.md 读那段**,直接用其中的设计原则,不需要切到独立 skill
- `skills/huashu-design/` 目录保留作为**内部参考资源**(SKILL.md + references/ 26 篇),主 Agent 直接读参考文件,不通过 Qclaw 加载

**每个风格 SKILL.md 都有"风格亮点(每份简历都该有的设计亮点 + huashu 蒸馏)"段(v1.1.4 加强)** —— 主 Agent 出 v1 前必读,对照"必装亮点"自检,确保 ≥ 5-6 个亮点出厂自带;极简留白特别强调"动效 + 排版"两条腿制造记忆点(大数字 hero + pull quote + 章节 accent line 是其招牌)。

**1 个参考目录**(不是 skill,主 Agent 内部读):
- `skills/大厂风格/` — 用户不明确时默认推荐,含 `DESIGN-INDEX.md`(精选 14 家大厂: Vercel/Linear/Apple/The Verge/Notion/Stripe/Clay/Figma 等)

风格 × 场景 × 包装区间 三维速查在 `docs/风格库.md` 和 `docs/场景库.md`,不要凭记忆选。

## 场景(5 类,在 `docs/场景库.md`)

1. **应届求职(互联网/工程)** — 极简留白 + 20% + ATS 提醒 + 1 页
2. **设计师作品集** — 杂志编辑 + 20-40% + Behance/Dribbble 必有
3. **留学申请 CV(英美港新)** — 极简留白 + 20% + Education 顶部 + 出版物格式严格
4. **副业/freelance 接单** — 手账拼贴或大厂风 + 40-60%(唯一可放高区间的场景) + Calendly
5. **比赛/奖项投递**(候选,未详写)

跨场景不串台:同一用户分开两份(简历 1 页 + 作品集案例页),合一份也支持但默认分开。

## 技能包 / 完整专家压缩包入站流程(v1.1.3 新)

当用户丢 zip 或文件夹过来:

| 情况 | Agent 行为 |
|------|-----------|
| 只装 skill zip(`skills/<名>/SKILL.md + template.html`) | 自动跑:7 项 SKILL 校验 + 6 项 template 校验 + 零 emoji 检测 + 命名冲突检测;通过就装并念清单 |
| 完整专家 zip(含 SOUL/AGENTS/IDENTITY/USER/memory) | **不自动覆盖 SOUL/AGENTS/IDENTITY/USER**(行为改变太大),停下来找用户拍板;memory 走追加/合并 |
| 大厂风 73 全装 | 默认只装精选 14 个,用户说"全装"才装 |
| 编码炸 / 字段缺失 / 文件损坏 | 停下来报告,跳过,不瞎猜 |
| 同名 skill / memory | 停下问"覆盖 / 改名 / 跳过",不偷着覆盖 |

详细 SKILL.md 7 项必填 + template.html 6 项必填见 `AGENTS.md` 场景 A 节。

## memory/ 记忆系统

4 个文件 + 模板:
- `user-profile.md` — 基础档案(含**包装策略**字段,必填)
- `project-context.md` — 当前项目状态(含**本项目使用包装区间** + **上次改写评估**字段)
- `style-preference.md` — 风格偏好(含**包装程度**字段,可按场景细分如求职=20%/接单=40%)
- `YYYY-MM-DD.md`(可选)— 当日对话笔记

**写入原则**:先告诉用户再写 / 不写敏感字段(身份证/详细住址/薪资) / 用户随时可删 / 改动有提示 / 包装策略/包装程度必记。

跨会话首读顺序:`SOUL.md` → `USER.md` → `memory/user-profile.md` → `memory/project-context.md` → `memory/style-preference.md`,读完后主动跟用户确认"接着上次 X 项目的 v2,继续吗"。

## 测试与校验

- **测试样例**:`docs/测试样例.md`(v1.1.3 共 34 用例,满分 35.5)
- **如何跑测试**:`docs/如何跑测试.md`
- **实测跑分表**:`docs/实测跑分表.md`(v1.0 实测 20.5/22.5,v1.1 重测预测)
- **完整样例与评分**:`docs/完整样例与评分.md`(立体人物 + 真实 HTML 成品)

跑测试时按 `PROGRESS.md` "测试样例核心考点"分类关注:红线类(13-18、22、24、26、29-33)、体验底线、核心功能、锦上添花、改稿自检。

**Skill 包校验**(技能包入站时跑):
- SKILL.md 7 项:一句话定义 / 适用人群 / 视觉规则 / 触发关键词 / 避坑点 / 至少 1 示例 / **包装区间适配**
- template.html 6 项:单文件 / 内联 CSS / Google Fonts CDN / 响应式 / print CSS / 占位符带注释
- 零 emoji 检测:regex 扫 HTML,出现彩色 emoji unicode 块就报告,不强行拒收

## 修改任何文件时的硬约束

1. **不要破坏 v1.1 已经守住的 14 条红线**(SOUL 原则 1-9 + AGENTS 9 Red Lines,合起来是同一套)
2. **不要把"零 emoji"妥协成"少 emoji"** —— 默认就是零
3. **不要把"20% 禁词表"软化** —— 这是用户明确要求的硬规则,不是建议
4. **不要自动覆盖 SOUL/AGENTS/IDENTITY/USER** —— 哪怕用户说"用 zip 里那份",也要停下来确认
5. **不要丢用户的 memory** —— 追加/合并,不覆盖
6. **不要在用户没问时主动推荐 emoji / 渐变 / 复杂动效**
7. **不要堆砌 AI 味** —— 不分点罗列、不排比、不"综上所述"、不堆"加油""期待"、不用强制命令语
8. **不要替用户做主观价值判断** —— "GPA 太低不能说"这种话不说,只讲呈现技巧
9. **不要编造用户没说的经历** —— 任何包装区间下都不允许
10. **不要忘记改稿自检** —— 出 v2 前必跑"你要什么/我改了什么/一致吗"

## 致谢

`skills/大厂风格/` 整合自 [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)(MIT License)——73 个大厂的 DESIGN.md 公开设计系统。

`skills/huashu-design/` 整合自 [alchaincyf/huashu-design](https://github.com/alchaincyf/huashu-design)(MIT License)——花叔 Design,HTML 原生的设计 skill(原型 / 幻灯片 / 动画 / 可视化 / MP4 导出)。v1.1.4 整合,只装了 `SKILL.md` + `LICENSE` + `README.md` + `references/`,完整版(含 scripts/ 和 assets/)见上游仓库。**注意:v1.1.4 加强版起,huashu-design 不再单列为一个 skill,而是融入每个 style 的 SKILL.md 末尾"外溢需求"段,作为内部参考资源存在**。