# SKILL: 杂志编辑

> 主 Agent 触发"风格匹配"且用户选了**杂志编辑**时,读本文件 + 套 `template.html`。

## 一句话
像一本高端杂志的内页,大标题大图,网格克制。

## 适用人群
- 设计师/插画师/创意工作者
- 摄影师/艺术家
- 建筑师/工业设计
- 任何"作品就是简历"的人

## 视觉规则(精简版)
- 配色:深色背景(#0F0F0F) + 奶白文字(#F5F1E8) + 1 个章节色(深红/墨绿/焦糖)
- 字体:EB Garamond(标题) + Inter(正文) + JetBrains Mono(图注)
- 字号:大标题 80-120px,图注 11-13px(反差大)
- 留白:页面边距 32px(密度高)
- 网格:12 栏非对称,大胆断栏
- 装饰:大写罗马数字章节号 / 细线分隔 / 数字+文字混排

## 风格亮点(每份作品集都该有的编辑感锚点 + huashu 蒸馏)

> v1.1.4 加强版:杂志编辑的"编辑感"靠**标志性视觉元素撑起来**,不靠炫技。每份出厂自带 ≥ 6 个亮点。

### 必装亮点(主 Agent 出 v1 默认加上)

- **◆ CHAPTER 罗马数字**:每个章节左上角 120px EB Garamond I/II/III,8-12% opacity,白色描边
  - 触发:**必装**,这是杂志感的招牌
- **◆ ISSUE NO. + DATE**:hero 顶部 1 行 "ISSUE NO. 2026 / 2026.JUL" 风格化小字(JetBrains Mono)
  - 触发:**必装**,强化"期号"概念
- **◆ ¶ 段落起始符**:每段经历 / 项目 bullet 开头 1 个 ¶ pilcrow 符号作为视觉锚
  - 触发:**必装**,给文字段落"段落起始感"
- **◆ 首字下沉(drop cap)**:正文段首字母放大 4-5 行高度,EB Garamond 斜体,accent 色
  - 触发:**必装**(在自传 / 关于我 / 项目介绍段)
- **◆ 作品灰度 → 彩色**:作品图默认 100% 灰度,hover 时平滑转彩色(已实现)
  - 触发:作品集场合**必装**
- **◆ CONTACT 区块尾符**:联系信息尾部 1 个 ¶ 大符号(80px) + "end of issue" 11px 斜体小字
  - 触发:**必装**,呼应杂志的"刊号"结束感

### 编辑式排版(按用户特点选装)

- **大图 break**:作品集场合,1 张封面作品占满首屏宽度(180-260px 高度),禁止缩到 50% 以下
- **magazine caption**:每个作品配 1 行 11px 斜体说明 —— "项目名 · 角色 · 年份"
- **pull quote 中断**:1-2 句核心总结单独占 1 屏,大号斜体衬线 + 深色背景块
- **侧栏旁注(margin note)**:正文 + 11px 斜体小注穿插,占右栏空间(杂志感最强的小手段)

### huashu 蒸馏(Apple gallery showcase + cinematic patterns)

1. **慢节奏 reveal**(400-600ms) —— 不用快速 fade,要 magazine 翻页的感觉
2. **印刷级 typography** —— EB Garamond + Inter + JetBrains Mono 三层,字号反差 80-120px vs 12-14px caption
3. **chapter 编排** —— 每个章节像翻一页,顶部罗马数字 + 章节名 + issue date
4. **choreography** —— 章节内子元素 stagger 入场(80ms 间隔),不用同步出现
5. **资产协议** —— 设计师作品配图、公司 logo / 品牌色优先用官方 SVG,不能用 emoji 占位

### 包装区间联动(v1.1.4)

- **20%(默认)**:CHAPTER + ISSUE NO. + ¶ + drop cap 基础四件套,作品图用占位
- **40%**:加首字下沉 + caption,作品图必须有(占位不给)
- **60%**:加 pull quote 中断 + 侧栏旁注 + 大图 break,装饰可以铺开

## 触发关键词
- "杂志"/"editorial"/"大气"/"艺术感"
- "设计师向"/"插画师"
- 用户挑大厂风:The Verge / WIRED / Sanity / Apple

## 避坑点
- 不要塞太多作品图(3-5 个核心够)
- 字体不超过 3 个字族
- 字号反差要够
- 黑底正文 contrast 至少 4.5:1

## 动效(全动效,v1.1.4 加强版)

> 完整动效骨架见 `docs/动效骨架.md`(2 baseline + 5 adaptive + 双向触发)。本风格启用其中:
>
> **Baseline 必装**:
> - B1 滚动渐显:translateY(12px)→ 0,400ms(略柔,editorial 节奏),IntersectionObserver **双向触发**
> - B2 链接 hover:border-bottom-color 灰 ↔ 米白,150ms
>
> **Adaptive 按用户特点启用**:
> - A1 数字递增:**不装**(杂志编辑无 metric card 视觉位,数字不进硬指标)
> - A2 Hero stagger(双向):`.masthead` 内 ISSUE NO. / 姓名 / contact **150ms 间隔**(慢,editorial 节奏)
> - A3 章节 accent line 绘制:**name 下划线 64px → 120px 渐进**,作品 FIG. 编号滑入
> - A4 子元素 stagger reveal:`.chapter` `.contact` `.footer` 容器子元素 **80ms 间隔**(略慢,翻页感)
> - A5 装饰元素微动效:**hero "00" 罗马数字双向入场** + ◆ 角标缩放 + ¶ 符号 hover 旋转 + footer accent-mark spin + masthead issue-tag 滑入 + work 卡片灰度→彩色
>
> **本风格特色**:用**节奏最慢**(400ms reveal / 150ms stagger)+ **作品级动效**(灰度→彩色 / 罗马数字 / 刊号期号)+ **CHAPTER 编排感**,让"翻一页杂志"的节奏贯穿全卷。
>
> **降级 4 重**:关 JS、reduced-motion、IO 不支持、print —— 任何环境都能读完整内容。

## 主 Agent 调用流程
1. 读本文 + `template.html` + `docs/动效骨架.md`
2. 把用户作品图按 `{{placeholder}}` 替换(图大且少)
3. 选 1 个章节色(默认 #B91C1C 深红)
4. 输出一份 `~/Downloads/<name>-portfolio-v1.html`
5. 自检:大图清晰 / 字号反差够 / 双向触发生效(滚到底再滚回顶,作品卡片重放灰度→彩色)

## 包装区间适配(v1.1 新)

**本风格常用默认区间:** 20-40%
- 设计师向可以稍高到 40%,但不放 60%(杂志感强,过度拔高像吹牛)
- 留学/求职场景建议 20%
- freelance 接单场景可以 40%

**主 Agent 出 v1 前必做:**
1. 读 `memory/user-profile.md` 的"包装策略"字段,确认当前区间
2. 没找到 → 默认 20%
3. 按区间对照 SOUL 原则 7 禁词表,自检措辞
4. 20% 区间**禁词**:**主导 / 独立负责 / 精通 / 熟练掌握**
5. 40% 区间可以用"主导",但不能用"独立负责 / 精通"

**风格对包装的友好度:** 中(留白 + 编辑感平衡,20-40% 都合理)

## 外溢需求(huashu-design 思想融入)

> v1.1.4 起,huashu-design 不再单列为 skill。它的设计哲学作为本风格的"溢出能力"存在。

**用户说这些词时,启用外溢能力**:

| 用户说 | 本风格怎么做 |
|--------|------------|
| "我想做作品集 deck" | 沿用本风格的 EB Garamond 大标题 + 章节罗马数字 I/II/III,做 1920×1080 slide deck,每页一张作品 + 章节号,整体像一本数字杂志。参考 `skills/huashu-design/references/slide-decks.md` |
| "作品集做成可点击原型" | 用本风格的网格 12 栏 + 罗马数字章节做导航,点击章节平滑滚动。参考 `skills/huashu-design/references/interactive-prototypes.md` |
| "作品展示加动效" | 沿用本风格的慢节奏 reveal(400ms+),作品 hover 时灰度→彩色(已在 template 里),不用快速 fade。参考 `skills/huashu-design/references/animation-best-practices.md` |
| "做信息图 / 项目数据图" | 沿用本风格的编辑感排版,图表用 SVG inline,深色背景配奶白图注。参考 `skills/huashu-design/references/visualization.md` |

**本风格 + huashu 的纪律**:零 emoji 不破 / 关 JS 可读不破 / 编辑感语气贯穿 / 涉及具名品牌走资产协议。
