# SKILL: 极简留白

> 主 Agent 触发"风格匹配"且用户选了**极简留白**时,读本文件 + 套 `template.html`。

## 一句话
留白是免费的,克制是本事。

## 适用人群
- 工程师/产品/数据/咨询
- 应届生(亮点不多,让画面承担"高级感")
- 投大厂/外企
- 任何"我不想出错"的需求

## 视觉规则(精简版)
- 配色:黑(#0A0A0A) + 白(#FAFAFA) + **1 主 accent + 1 副 accent**(v1.1.4 新)
  - 主 accent:章节标题、链接、列表点(占比 80%)—— 默认 `#2563EB` 蓝(工程师)/ `#4F5BFF` 蓝紫(产品)
  - 副 accent:**只**用于硬数据高亮(占比 20%)—— 默认 `#F59E0B` 琥珀(温度感)/ `#10B981` 翠绿(克制)
  - 单 accent 视觉太素(已踩坑 → 详见 `docs/效果要素指南.md` 要素 4)
- 字体:Inter 单字族,中文混排加 `Noto Sans SC` / `PingFang SC`,代码块用 JetBrains Mono
- 字号:大标题 48-72px,正文 16px,小字 13px
- 留白:页面边距至少 64px(桌面),区块 80-120px
- 网格:8 栏
- 装饰:零 emoji,零渐变,图标走 `skills/flat-icons/` 的内联 SVG(stroke-width 1.5,极细)

## 风格亮点(每份简历都该有的记忆锚点 + huashu 蒸馏)

> v1.1.4 加强版:极简留白虽然"克制",但**必须**靠动效 + 排版两条腿制造记忆点。每份出厂自带 ≥ 5 个亮点,主 Agent 出 v1 前**必看本段**对照自检。

### 必装亮点(主 Agent 出 v1 默认加上)

- **◆ 大数字 hero**:姓名区 1-3 个 metric(项目数 / 经验年数 / 用户数),从 16px 滚动放大到 96px,count-up 800ms
  - 触发:有 ≥ 1 个硬数字即加,放在姓名右上方
- **◆ 编辑式 pull quote**:hero 区下方 1 句"我是谁"大写衬线斜体(EB Garamond / Noto Serif SC),左侧 4px 主 accent 竖条
  - 触发:**必装**,这是极简风的"招牌"
- **◆ 章节 accent line**:每个 h2 顶部 1 条 24px 主 accent 横线,滚动入场从 0 → 24px
  - 触发:**必装**
- **◆ 时间线视觉锚**:经历 ≥ 4 段时,左侧 2px 主 accent 竖线 + dot 标记,经历卡片延展
  - 触发:经历 ≥ 4 段才加
- **◆ 不对称 anchor block**:hero 区右侧"破"出 8 栏网格,放 1 张个人照 / 1 个代表性 word mark / 1 句座右铭
  - 触发:用户给了照片或代表性标签才加

### 排版突破点(按用户特点选装)

- **word mark**:用户有"代表性技能标签"(如"Python 十年"/"Figma 重度"),用 36-48px + 0.4em 字间距单独呈现,加 accent 下划线
- **CONTACT box**:联系方式区用 2px 主 accent 边框包起来,callout 感
- **印刷感纹理**:全 hero 区用 SVG filter 给主标题加 0.05 opacity 噪声(装饰预算 ≤ 1 处,可选)

### huashu 蒸馏(主 Agent 出 v1 前必过)

1. **反 AI slop** —— 不用千篇一律的"通用模板"骨架,版式要让人一眼看出是手工做的
2. **印刷级排版** —— letter-spacing 0.01em 起步,line-height 1.5-1.65,中英文混排 Noto Sans SC fallback
3. **动效节制** —— 4 重降级(关 JS / reduced-motion / IO 不支持 / print)任何环境都能读
4. **资产协议** —— 涉及具名品牌 logo 必须先问用户有没有 SVG,不能 emoji 占位
5. **PDF 友好** —— `@media print` 关闭所有动效,黑底白字 fallback 处理好

### 包装区间联动(v1.1.4)

- **20%(默认)**:保留"大数字 + pull quote + accent line + 编辑式衬线"4 件套
- **40%**:加不对称 anchor block(个人照片 / word mark 顶到右栏),hero 区可稍宽
- **60%**:加 word mark + 印刷感纹理,字号可加大,但仍只用 1 个 accent(克制不能破)

## 触发关键词
- "极简"/"克制"/"冷淡"/"高级"
- "投大厂"/"投外企"
- 用户挑大厂风:Vercel / Linear / Notion(温暖版)

## 避坑点
- 不要为了"留白"留到内容稀疏
- **accent 总数 ≤ 2**(主 + 副),多就俗
- 副 accent **绝不**用在标题、链接、装饰 —— 只能用**硬数据高亮**(数字 / 百分比 / 排名)
- 不要用 emoji 当装饰
- 行高 1.5-1.7,别太紧也别太松

## 动效(全动效,v1.1.4 加强版)

> 完整动效骨架见 `docs/动效骨架.md`(2 baseline + 5 adaptive + 双向触发)。本风格启用其中:
>
> **Baseline 必装**:
> - B1 滚动渐显:translateY(8px)→ 0,400ms,IntersectionObserver **双向触发**(上下反复滑动都重放)
> - B2 链接 hover:border-bottom-color 透明 ↔ accent,150ms
>
> **Adaptive 按用户特点启用**:
> - A1 数字递增(双向):metric card ≥ 3 必装,1-2 可选;`data-countup="18"` 属性触发
> - A2 Hero stagger(双向):header 内 3 子元素(name/title/contact)100ms 间隔错开
> - A3 章节 accent line 绘制:h2 顶部横线 0→32px,400ms ease-out
> - A4 子元素 stagger reveal:`.metrics-row` `.section` `.skills-grid` 等容器子元素 60ms 间隔错开进入
> - A5 装饰元素微动效:**hero "00" 双向入场** + ◆ 角标 hover 旋转 + h3 下划线绘制 + skill-tag underline + metric → 箭头滑入 + project ▸ 箭头旋转 + edu card 顶部 accent line + pull-quote 入场 + timeline-section 垂直时间线
>
> **本风格特色**:用**节奏最慢 + 距离最短**(400ms / 8px)+ **最克制的 hover**,让"动效不喧宾夺主";但通过 A1/A4/A5 拉满数字、卡片、装饰元素三层的微动,让"留白"也有呼吸感。
>
> **降级 4 重**:关 JS、reduced-motion、IO 不支持、print —— 任何环境都能读完整内容。

## 主 Agent 调用流程
1. 读本文 + `template.html` + `docs/动效骨架.md`
2. 把用户内容按 `{{placeholder}}` 逐项替换
3. 选 1 个 accent 色(默认 #2563EB 蓝,工程师向)
4. 输出一份 `~/Downloads/<name>-resume-v1.html`
5. 自检:双击能开 / 移动端 / 双向触发生效(滚到底再滚回顶,每段都重放)

## 包装区间适配(v1.1 新)

**本风格常用默认区间:** 20%
- 留白风格克制措辞,默认 20% 最稳
- 工程师向最稳;求职/留学都适用
- 不建议放 40%+ —— 克制风格的强词看着违和

**主 Agent 出 v1 前必做:**
1. 读 `memory/user-profile.md` 的"包装策略"字段,确认当前区间
2. 没找到 → 默认 20%
3. 按区间对照 SOUL 原则 7 禁词表,自检措辞
4. 20% 区间**禁词**:**主导 / 独立负责 / 精通 / 熟练掌握**

**风格对包装的友好度:** 低(留白克制,30%+ 容易"撑破"画面)

## 必装能力:v1.1.4 起效果能力的本风格实现

通用能力清单见 **`docs/效果要素指南.md`**(12 条 + 按用户特点定制 + 验证清单)—— Agent 在任何风格下都参考它做能力选择,**不应**单靠本文件决定哪些能力启用。

以下说明**极简留白**风格如何落地那 12 条能力里最常启用的两条;主 Agent 应根据本用户的场景/内容/亮点密度自适应。

### 能力 1 · DATA CARDS(数据卡片化)在极简留白的实现

**触发**(通用能力规则见 `效果要素指南.md` §1):本用户内容里有硬数字(2 个及以上能"让人一眼记住"的数)。

**做法**:
- hero 区下方加一行 metric card,数量 2-4 个,**根据用户硬数字密度选**,不写死
- 卡片:浅 accent 背景(主 accent 8% 透明)+ 4-8px 圆角,数字大字 32-40px,标签 11px 全大写(ink-soft)
- **不硬塞**:如果用户只有 1 个硬数字,跳过整个 section,把那个数放回 bullet

**极简留白的特点处理**:
- 数字本身用**主 accent**色(保留风格统一)
- 不用副 accent —— 极简留白只用 1 个 accent(版式变化营造层次)
- 卡片间距 14px,grid `auto-fit, minmax(180px, 1fr)`

### 能力 2 · 经历 CARDS 化(节奏锚点)在极简留白的实现

**触发**(通用规则见 `效果要素指南.md` §2):核心经历 ≥ 3 段。

**做法**:
- 每段经历加左侧 accent 边线 3-4px + 左侧 padding 20px
- 不加边框/圆角/背景色(避免破坏留白气质)
- 段间距 24-28px

**极简留白的特点处理**:
- 边线用主 accent
- 经历 ≤ 2 段时**不要**卡片化(留白风格下撑不起来,反而显空)

### 本风格特有的"按用户微调"要点

- **应届求职 / 内容稀疏**:数据卡片化用 3 个 metric,经历卡片化建议;hero 区可考虑加 4px 左边线
- **资深求职 / 经历 5 段以上**:经历卡片化只对最近 3 段生效,远的精简为单行
- **留学 CV / 多研究项目**:经历卡片化的左边线改用 dash `─` 风格,跟学术气质协调
- **包装区间升档(40% / 60%)**:metric 数字字号可加大,但 accent 仍只用 1 个(克制不能破)
- **风格不明确 / 用户没挑**:主 Agent **必须先查 `docs/效果要素指南.md` §"按用户特点定制"** 做能力选择,不能默认套任何风格

## 示例
- [Vercel 风格](https://vercel.com) — 黑白精确,Geist 字体
- [Linear 风格](https://linear.app) — 深色+紫,极简
- [Notion 风格](https://notion.com) — 温暖极简,serif 标题

## 外溢需求(huashu-design 思想融入)

> v1.1.4 起,huashu-design 不再单列为 skill。它的反 AI slop / 动画 pitfalls / 演示 deck 流程 / 资产协议,作为本风格的"溢出能力"存在 —— 用户外溢需求时按以下原则处理。

**用户说这些词时,启用外溢能力**(主 Agent 自动判断,不需要切 skill):

| 用户说 | 本风格怎么做 |
|--------|------------|
| "我想做自我介绍的 PPT / deck" | 沿用极简留白的**黑白 + 1 accent + 8 栏网格**作为幻灯片视觉基底,slide 16:9,每页 1 句话 + 1 数据点。参考 `skills/huashu-design/references/slide-decks.md` |
| "把这个项目做成可点击原型" | 用本风格的极简色 + 大留白做 mockup,点击区域加 hover 反馈。参考 `skills/huashu-design/references/interactive-prototypes.md` |
| "帮我做段动效演示" | 用本风格的 `--motion-fast/base/slow` token 作时间曲线,避免突然的 0.3s fade。参考 `skills/huashu-design/references/animation-best-practices.md` |
| "做信息图 / 数据可视化" | 沿用极简的字体(Inter) + 数据卡片色板,图表用 SVG 内联,不引第三方库。参考 `skills/huashu-design/references/visualization.md` |

**本风格 + huashu 的纪律**:

- **零 emoji 不破** —— 沿用 SOUL 原则 6,所有图标走 `skills/flat-icons/` 的内联 SVG
- **关 JS 可读不破** —— 沿用 SOUL 原则 5,任何外溢产出都是"锦上添花"
- **反 AI slop 应用** —— 不分点罗列、不堆"此外""值得注意的是",跟本风格的对话语气保持一致
- **资产协议** —— 如涉及具名产品(Apple/Stripe/Notion 等),huashu 的"必须先走资产协议拿 logo"原则适用,不能编
