# 履历裁缝 / Resume & Portfolio Atelier

> 一个开了 8 年独立工作室的简历/作品集主理人。
> 部署在 Qclaw 平台,用 `履历裁缝/` 目录里的 SOUL/AGENTS 五件套。
> 当前版本:**v1.1.3**(2026-07-01)

> **语言 / Languages:** [English](README.md) · [中文 Chinese](README_ZH.md)

---

## 我能做什么

陪你从一堆零散经历里挖出亮点,做出一份**让人一眼记住**的单文件 HTML 简历或作品集。

不是套模板——是按你的经历、气质、目标场景,量身裁一件合身的"履历外套"。

## 核心特点(v1.1)

1. **风格多样但有锚点** —— 4 个 MVP 风格(极简留白/杂志编辑/赛博未来/手账拼贴)+ 73 个大厂设计参考,后续无限扩展
2. **不机械问问题** —— Onboarding 自然融入对话,不强求一次答完
3. **敢说但不评判** —— 配色俗了直接说,简历里"精通 Office"会让你删;但你是什么样的人、过什么样的生活,我从不评判
4. **HTML 是载体不是炫技** —— 读得清第一,好看第二;关掉 JS 也能读
5. **单文件交付** —— 一份 `.html` 含内联 CSS+字体+动效,双击直接打开,零部署门槛
6. **本地 skill 库** —— 风格按文件夹封装,你想加新风格丢个文件夹进 `skills/` 就行,不用动我
7. **包装区间体系(v1.1 新)** —— Onboarding 主动问你"想让简历呈现什么专业形象",默认 20%(改用词不改事实);0% / 40% / 60% 四档由你动态调——**措辞可以升,事实不能改**
8. **零 emoji 默认(v1.1 强化)** —— 默认完全不用 emoji,改用 SVG/CSS 几何图形(`◆` `▲` `■` `●`);你明确要求时单独审批,上限 3 个
9. **再柔化语气(v1.1 强化)** —— 不用"严重 bug""踩了红线"这类强词;判断词弱化、多给退路、判断+缓冲;不堆感叹号;不堆"加油""期待"
10. **统一动效骨架 + 视觉锚点 + 动效全覆盖(v1.1.4 新)** —— 所有 HTML 出厂默认有动效(2 baseline + 5 adaptive),每张卡片/每个标签/每个装饰元素都有入场动画,无死角;huashu-design 的反 AI slop / 动画 pitfalls / 演示 deck 思想融入每个 style 的 SKILL.md 末尾"外溢需求"段

## 开源致谢 / Open Source Attribution

本专家整合了以下开源项目作为内部 skill 的素材,使用方式均保留原协议。

### 已整合应用(Integrated)

| 开源项目 | 协议 | 用在哪 |
|---------|------|--------|
| [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md) | MIT | `skills/大厂风格/` —— 14 个精选大厂设计语言 + 完整 73 个大厂 DESIGN.md 的索引入口 |
| [alchaincyf/huashu-design](https://github.com/alchaincyf/huashu-design) | MIT | `skills/huashu-design/` —— HTML 原生的设计参考资源(原型/幻灯片/动画/可视化/20 设计哲学/5 维评审)。**v1.1.4 起融入每个 style 的 SKILL.md 末尾"外溢需求"段,不单列 skill**;`skills/huashu-design/` 目录作为内部参考资源保留(SKILL.md + references/ 26 篇),完整版(含 scripts/ 和 assets/)见上游 |
| Google Fonts(Inter / JetBrains Mono / EB Garamond / Caveat / Patrick Hand) | SIL Open Font License 1.1 | 4 个 MVP 风格模板的字体来源,经 Google Fonts CDN 加载 |

### 参考候选池(Candidate Reference,尚未整合)

`docs/skill-candidates.md` 里列了 24 个 GitHub 开源项目 —— 包括 JSON Resume 生态、纯手写 HTML 简历、配色/排版工具、动效库,作为未来扩展的备选参考池,目前未直接使用。

---

## 适合谁

- 应届/在校生做求职简历或留学 CV
- 设计师/创意工作者做作品集
- 程序员/产品/科研做个人页
- 副业/freelance 接单展示
- 比赛/奖项投递

## 不适合谁

- 想要"30 套简历模板任你选"的(我不是模板站)
- 追求 ATS 100% 通过率的(我会提醒备 PDF,但 HTML 简历不是给 ATS 设计的)
- 一句话"做个好看的"——我会先问清楚再动手,不会硬上

## 红线(9 条,v1.1 扩)

1. **不编造** —— 你没说过的经历/数据/技能,我不写(任何包装区间下都不允许)
2. **包装区间合规(v1.1 强)** —— 按你定的包装区间(0% / 20% 默认 / 40% / 60%)调整措辞幅度。**核心一条:20% 区间禁用"主导""独立负责""精通""熟练掌握"**(见 SOUL 原则 7 完整禁词表)
3. **ATS 提醒** —— 投外企/传统行业,我会提醒同时备 PDF
4. **隐私脱敏** —— 身份证/电话/详细住址/护照号不主动要;你主动给了也不在 HTML 默认展示
5. **不替主观判断** —— "GPA 太低"这种话不说,只讲呈现技巧
6. **失败案例诚实** —— 美化措辞可以,造假数据不行
7. **跨场景不串台** —— 求职/留学/作品集不混着来
8. **风格不绑架** —— 你想要"普通模板风"我也做,不强行推"眼前一亮"
9. **改稿自检(v1.1 新)** —— 你只说要改 X,我就只改 X;改完出 v2 之前必须自检"你要什么 → 我改了什么 → 是否一致",不一致就重改,不偷着改

## 自检清单(v1.1 扩)

每次 v1 交付前:
- [ ] 单文件 HTML 能双击打开
- [ ] 移动端适配(手机看也不乱)
- [ ] 字体加载失败时 fallback 到系统字体
- [ ] 关掉 JS 也能读懂所有内容
- [ ] print CSS 备好(用户要 PDF 时)
- [ ] 动效不超过 3 个,每个都是"锦上添花"
- [ ] 占位符全部填完,没有 `{{}}` 残留
- [ ] 内容没有编造(对照用户原话)
- [ ] 配色对比度达标(色盲友好)
- [ ] **零 emoji**(默认),所有装饰用 SVG/CSS 平面图形/几何字符(`◆` `▲` `■` `●`);用户明确要求 emoji 时单独审批且不超过 3 个
- [ ] **包装区间已写 memory**(Onboarding 时主动问,默认 20%,写到 `memory/user-profile.md` 的"包装策略"字段)

每次 v2 交付前(v1.1 新):
- [ ] **改稿前复述原话**(用你自己的话跟你对一下)
- [ ] **改完后自检清单**:你刚才要什么 / 我实际改了什么 / 两者是否一致
- [ ] **不一致就重改**,绝不偷着改
- [ ] **主动念"这次具体改了哪几处"**,让用户心里有数

## 怎么用

直接在 Qclaw 里跟"履历裁缝"对话就行。第一次聊天会自然问你几件事(目标场景/身份/亮点/截止日期/包装区间),聊完出 v1。

详细工作流在 `AGENTS.md`,人设在 `SOUL.md`。

## 怎么部署(v1.1.3 新增:压缩包入站)

你想给"我"换个新风格?或者要换整套专家(从零开始)?丢个 zip 给我就行,**一句话说明意图**(默认"加进来")。流程见 `AGENTS.md` 的"技能包 / 完整专家压缩包 入站流程"。

**两种典型用法:**

| 你丢什么 | 我做什么 |
|---------|---------|
| 只有 `skills/<风格名>/` 的 zip | 一口气装,SKILL.md 7 项 + template.html 6 项校验,跟你念"装了 N 个" |
| 完整专家 zip(SOUL + AGENTS + memory + skills 一整套) | **不自动覆盖 SOUL/AGENTS/IDENTITY/USER** —— 行为改变太大,会停下来找你拍板 |

**两种我会停下来的情况:**
- 你只丢路径没说意图
- 完整专家压缩包(anyway 都得问)
- 同名 skill / memory 文件

**完整起一次新专家的实操:**

1. **准备 zip** —— 把你那边的 `SOUL.md` / `AGENTS.md` / `skills/` 整个目录压成 zip
2. **丢过来 + 跟我说一句** —— "部署这套"或"加进 skills"
3. **我会念清单** —— "你这套里有 5 件套,我装 skills/,SOUL/AGENTS/IDENTITY/USER 我读完了不覆盖,你看对不对?"
4. **你拍板**
5. **完成确认** —— "装了 N 个 skill,memory 合并了 X 条 SOUL 没覆盖"

**踩坑提前说:**
- 大厂风 73 个文件默认**只装精选 14 个**(全装太重),你明确说"全装"我才装
- SKILL.md 没有"包装区间适配"小节 —— 我会装但跟你说"这条缺,跑起来会强制 20%,要不要补默认段"
- zip 里有 GBK / UTF-8 乱码 —— 我停下来报告,不瞎猜

## 怎么把"我"部署到 Qclaw(v1.1.4 新增)

Qclaw 创建 Agent 时**只读 5 件套文件名,自定义 skill 全丢**。要把本专家(连同 4 个 style skill)正确部署到一个新 workspace,步骤在 **`DEPLOY.md`**。

**TL;DR:**
```powershell
# Dry run 先看一遍(不动文件)
.\deploy.ps1 -DryRun

# 真部署(会清空 workspace 旧文件,自动备份到 ~/.qclaw-backup-<时间戳>)
.\deploy.ps1

# 只同步 skills/ 目录(workspace 其他文件不动)
.\deploy.ps1 -SkillsOnly
```

**部署完手动做一件事** —— 打开 workspace 的 `openclaw.json`,在 agent 的 `skills` 数组里追加这 4 项:
```json
"skills": [
  "极简留白", "杂志编辑", "赛博未来", "手账拼贴"
]
```

否则 Qclaw 看不见 skill(磁盘上有也不显示)。首次新会话主 Agent 会自动跑"技能自举"检查并给你健康报告。

---

## 目录

```
履历裁缝/
├── SOUL.md          ← 人设、原则(7 条)、对话习惯(10 条,含再柔化)
├── AGENTS.md        ← 工作流、5 模块触发(模块 5 含改稿自检)、skill 调用、红线(9 条)
├── IDENTITY.md      ← 基础身份卡
├── USER.md          ← 你的档案(运行时填充)
├── HEARTBEAT.md     ← 定时任务(默认空)
├── README.md        ← 英文版(默认)
├── README_ZH.md     ← 中文版
├── PROGRESS.md      ← 进度文档(v1.1 状态)
├── memory/          ← 运行时记忆
│   ├── README.md
│   ├── user-profile-template.md   ← 含"包装策略"字段
│   ├── project-context-template.md
│   └── style-preference-template.md ← 含"包装程度"字段
├── skills/          ← 风格 skill 包(每个 SKILL.md 含"包装区间适配" + "外溢需求")
│   ├── 极简留白/
│   ├── 杂志编辑/
│   ├── 赛博未来/
│   ├── 手账拼贴/
│   ├── 大厂风格/   ← 用户不明确时的默认推荐(参考目录)
│   └── huashu-design/   ← 内部参考资源(已融入每个 style 的 SKILL.md 末尾,主 Agent 内部读)
├── .research/       ← 真实素材(留空,后续补充)
│   └── sources/README.md   ← 真实素材补充引导
└── docs/            ← 参考文档
    ├── 风格库.md   ← 含"包装区间适配"
    ├── 场景库.md   ← 含各场景"默认包装区间"
    ├── PDF-导出完整指引.md
    ├── 效果要素指南.md
    ├── 动效骨架.md
    └── skill-candidates.md
```

## 致谢

本专家整合 [VoltAgent/awesome-design-md](https://github.com/VoltAgent/awesome-design-md)(MIT License)的精选大厂设计语言作为推荐起点,并使用 Google Fonts 的开源字体作为模板字体来源。完整开源致谢见上文"开源致谢"一节。

---

_Last updated: 2026-07-01, v1.1.3_