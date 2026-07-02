# 履历裁缝 × huashu-design 整合说明

> **本目录是 [huashu-design](https://github.com/alchaincyf/huashu-design) 的精简移植**,MIT License by alchaincyf。
>
> 上游完整文档见 [`README.md`](README.md)(同目录,18KB,原始 README)。
>
> 我们只装了 `SKILL.md` + `LICENSE` + `README.md` + `references/`。`scripts/` 和 `assets/`(MP3 背景音乐)未移植,**需要时从上游拉取**。

---

## 这是什么

huashu-design 是一个**HTML 原生的设计 skill**,覆盖:

- **交互原型**(高保真产品 mockup,用户可点击切换)
- **设计变体探索**(并排对比多个方向)
- **演示幻灯片**(1920×1080 HTML deck,可当 PPT 用)
- **动画 Demo**(时间轴 motion design,导出 MP4/GIF)
- **信息图/可视化**(精确排版、印刷级质量)

完整说明见 [`README.md`](README.md)(同目录)。

---

## 我们为什么装它

**履历裁缝** 的本职是"简历/作品集 HTML 输出",5 个 style skill(极简留白/杂志编辑/赛博未来/手账拼贴/大厂风)覆盖了常规求职/留学/接单场景。

但用户有时候会**外溢需求**到履历裁缝本职之外:

- "帮我做个介绍自己的 **演示幻灯片**"(求职面试用 deck)
- "我想把这个项目做成 **可点击的原型** 给面试官演示"
- "帮我把这个数据做成 **可视化图**"
- "我想给作品集加段 **动效演示视频**"

这些**不是简历/作品集**,但属于"HTML 做视觉产出"的相邻场景 —— huashu-design 正好覆盖。

**启用时机**(主 Agent 决策):

| 用户说 | 走哪个 skill |
|--------|------------|
| "帮我做简历" / "做个作品集" | **走我们 5 个 style skill**(huashu-design 不参与) |
| "帮我做个介绍自己的 PPT/deck" / "做成 1920×1080 的幻灯片" | **走 huashu-design**(走它的 deck 流程) |
| "这个项目能做成可点击的原型吗" | **走 huashu-design**(走它的 App 原型流程) |
| "我想做段动画演示" / "导出 MP4" | **走 huashu-design**(走它的 motion design 流程) |
| "我想做信息图" / "可视化对比" | **走 huashu-design**(走它的 viz 流程) |

---

## 与本专家的协调

### 零 emoji 规则的覆盖

**履历裁缝 SOUL 原则 6**(零 emoji)适用于**HTML 输出**。huashu-design 的 markdown 文档里有 222 个 emoji(用作警告/标记/分类符号),这些在**阅读文档时不违反**规则。

但当 huashu-design 被本 Agent 调用去**生成 HTML 输出**时,Agent 必须:

1. 应用 huashu 的"反 AI slop"哲学 —— 它本身就反对 emoji 作图标(详见上游 `SKILL.md` §6.2)
2. 应用我们的零 emoji 规则 —— 最终 HTML 输出仍按我们的"用 SVG/CSS 几何"规则
3. 两条规则**不冲突,反而互为加强**

### 包装区间规则的覆盖

huashu-design 不涉及包装区间(它做的是 design 产出,不是简历包装)。当本 Agent 调用 huashu-design 时,包装区间**不适用**,按 huashu 自己的设计哲学走。

### 隐私/脱敏规则的覆盖

huashu-design 的资产协议(`§1.a`)要求"具名产品必须有官方 logo" —— 这跟我们 SOUL 原则 8 的"完整性自检"不冲突,反而**强化**:Agent 调用 huashu 时,如果是"为某品牌做物料",必须先走资产协议拿 logo,不能编。

---

## 我们没装的部分

| 部分 | 大小 | 是否装 | 原因 |
|------|------|-------|------|
| `SKILL.md` | 53KB | ✓ | 核心 skill |
| `LICENSE` | 1KB | ✓ | MIT 归属 |
| `README.md` | 18KB | ✓ | 上游说明 |
| `references/*.md` | 416KB(26 文件) | ✓ | SKILL.md 频繁引用 |
| `scripts/*.py/*.mjs/*.js` | ~120KB | ✗ | 需要 Python/Node runtime,Qclaw 不一定支持;用户需要时自己 clone 上游 |
| `assets/*.jsx` | ~50KB | ✗ | React 组件,本 Agent 不直接渲染 React |
| `assets/*.mp3` | ~30MB(6 文件) | ✗ | 太大,且 Qclaw 平台不一定支持本地音频 |

**完整版(含 scripts/ 和 assets/)** 在 https://github.com/alchaincyf/huashu-design —— 用户想要 MP4 导出/背景音乐/Tweaks 实时调参等高级功能时,自己 clone 上游仓库,把缺失部分补到本目录。

---

## 主 Agent 调用流程(本专家特化版)

1. 用户提到"PPT/幻灯片/deck/原型/动画/可视化/评审" → 触发 huashu-design
2. 读本目录的 `SKILL.md`(53KB)拿到核心工作流
3. 按需读 `references/` 下的具体文档(如动画走 `animation-best-practices.md`,deck 走 `slide-decks.md`)
4. **保留 huashu 自己的"Junior Designer 模式"(先假设再执行)和"三套逻辑并行 fallback"** —— 不要套我们的 6 模块工作流(huashu 的流程是另一套)
5. **但** 输出 HTML 时套我们的"零 emoji + 单文件 + 关 JS 可读 + 适配三件套"工程底线

---

## 致谢

huashu-design 由 [alchaincyf](https://github.com/alchaincyf) 创作并维护,MIT License。

移植到本仓库由履历裁缝 v1.1.4 完成(2026-07-02)。上游版本以 https://github.com/alchaincyf/huashu-design 为准。

---

_Last updated: 2026-07-02, v1.1.4 整合_