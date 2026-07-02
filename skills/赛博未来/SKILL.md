# SKILL: 赛博未来

> 主 Agent 触发"风格匹配"且用户选了**赛博未来**时,读本文件 + 套 `template.html`。

## 一句话
终端 + 霓虹 + 一点 glitch,不浮夸。

## 适用人群
- 后端/底层/系统工程师
- 安全/密码学/AI 研究
- 黑客马拉松选手
- 任何"我就要不一样"的技术人

## 视觉规则(精简版)
- 配色:深空黑(#0A0A0F) + 翠绿(#00FF88) + 紫(#A855F7) + 警示黄(#FFD600)
- 字体:JetBrains Mono(主体等宽) + Inter(长正文)
- 字号:大标题 32-48px(等宽字大反而难读)
- 留白:页面边距 48px,区块 60px
- 装饰:`>` 提示符 / `$` 命令行 / 闪烁光标 / ASCII 边框

## 风格亮点(每份简历都该有的终端感锚点 + huashu 蒸馏)

> v1.1.4 加强版:赛博未来的"终端感"靠**命令行 + 霓虹 + glitch** 撑起来。每份出厂自带 ≥ 6 个亮点。

### 必装亮点(主 Agent 出 v1 默认加上)

- **◆ `$` prompt + 闪烁光标**:hero 区打 "$ whoami" 模拟终端,1s 后输出姓名,持续闪烁光标
  - 触发:**必装**,终端风的招牌
- **◆ status bar 顶部状态条**:top: 0 横线 + 绿点 PULSE + 系统信息 `[uptime 42d · cpu 12% · me@resumé]`,类似 tmux status-line
  - 触发:**必装**
- **◆ ASCII 边框**:核心区块用 rounded / double-line 边框 + corner 装饰(`╭──╮` / `┌──┐`)
  - 触发:**必装**
- **◆ glitch hover**:链接 / 章节标题 hover 时 RGB 错位动画(翠绿 + 紫 1px 错位,150ms)
  - 触发:**必装**
- **◆ `█` 加载进度条**:章节里偶尔出现的 `loading ████████░░░░` 风格进度块
  - 触发:**必装**(在核心 skill 章节)
- **◆ 终端输出模拟**:每段项目 bullet 前加 `$ command --flag → output` 风格的命令行提示
  - 触发:**必装**

### 技术排版(按用户特点选装)

- **命令历史 log block**:hero 区下方 1 个 `<pre>` 块,模拟"用户最近做的事"(`$ whoami` → 姓名 · `$ cat skills.txt` → 输出技能表 · `$ history | tail -5` → 命令历史)
- **ASCII 技能雷达 / 进度图**:用 SVG inline 画技能分布雷达图,或 level bar(00-FF HEX 风格)
- **CRT 扫描线**:全 hero 区用 SVG filter 给主标题加 5% opacity 横向扫描线(可选,装饰预算 ≤ 1 处)
- **HEX 色块**:配色用 `#00FF88` / `#A855F7` 等 HEX 写法代替普通颜色名,强化代码感
- **system call summary**:联系方式区用"系统调用"格式呈现,`$ mail -s "hi" you@example.com`

### huashu 蒸馏(cinematic patterns + animation pitfalls)

1. **快节奏 + 即时反馈** —— 动效 200ms 内,符合终端"按键即出"气质
2. **cinematic state machine** —— hero 编排 "prompt → 输出 → 列表" 三段式,**不要循环动画**(那是 AI slop 典型)
3. **animation pitfalls** —— 别让 placeholder code 持续滚动 / 别让光标永远闪烁
4. **资产协议** —— 后端技术栈 logo(GitHub / Docker / Kubernetes 等)走 SVG 协议,不能靠 emoji 占位
5. **ASCII 矢量** —— 用 SVG inline 画 ASCII-style 图表,不引第三方 chart 库

### 包装区间联动(v1.1.4)

- **20%(默认)**:prompt + 闪烁光标 + ASCII 边框 + status bar + glitch hover 基础五件套
- **40%**:加命令历史 log block + HEX 色块,hero 区可以多输出几行
- **60%**:加 CRT 扫描线 / ASCII 技能雷达加强,但动效数量仍受 4 动效上限约束

## 触发关键词
- 配色比例:黑 80% + 主色 15% + 警示色 5%

## 触发关键词
- "赛博"/"cyberpunk"/"黑客"/"终端"
- "技术向"/"后端"
- 用户挑大厂风:Cursor / Raycast / VoltAgent / ElevenLabs

## 避坑点
- 别堆砌动效,glitch 1 处够
- 配色比例别反客为主
- 等宽长段落读起来累,超 3 行换 Inter
- 别写假代码当装饰

## 动效(全动效,v1.1.4 加强版)

> 完整动效骨架见 `docs/动效骨架.md`(2 baseline + 5 adaptive + 双向触发)。本风格启用其中:
>
> **Baseline 必装**:
> - B1 滚动渐显:translateY(4px)→ 0,**200ms**(`--motion-base` 局部覆盖为 200ms,符合终端即时反馈气质),IntersectionObserver **双向触发**
> - B2 链接 hover:**色 + border 同时变**(翠绿 ↔ 紫,带 dashed border,glitch 感),150ms
>
> **Adaptive 按用户特点启用**:
> - A1 数字递增:不装硬数字 metric;**技能条 bar 进入视口扩展 0→percentage**(双向触发,离开时复位)
> - A2 Hero stagger(双向):`.prompt-line + h1` 容器子元素 **80ms 间隔**(快,"终端逐行打印"感)
> - A3 章节 accent line 绘制:section-title 下划线绘制 + 技能水平 bar 扩展
> - A4 子元素 stagger reveal:`.chapter` `.skill-bar` `.item` 容器子元素 **50ms 间隔**(最速,终端节奏)
> - A5 装饰元素微动效:**hero ASCII 双向入场** + status bar 滑入 + status dot pulse + command line hover 变色 + footer exit code hover + terminal-exit 各元素 stagger
>
> **本风格特色**:用**节奏最快 + 距离最短**(200ms / 4px / 50ms stagger)+ **glitch 错位感**(RGB split / dashed border)+ **skill bar 扩展**(技术感数据可视化),让"按键即出"的终端气质贯穿全文。
>
> **降级 4 重**:关 JS、reduced-motion、IO 不支持、print —— 任何环境都能读完整内容。

## 主 Agent 调用流程
1. 读本文 + `template.html` + `docs/动效骨架.md`
2. 把用户技术栈/项目按 `{{placeholder}}` 替换
3. 默认 accent 用翠绿(#00FF88)
4. 输出一份 `~/Downloads/<name>-cyber-v1.html`
5. 自检:等宽字体主导 / 配色比例 80/15/5 / 双向触发生效(滚到底再滚回顶,技能条重扩展)

## 包装区间适配(v1.1 新)

**本风格常用默认区间:** 20%
- 技术向最稳,克制最稳
- 黑屏 + 等宽字体 + 终端装饰,措辞浮夸反而掉价
- 不建议放 40%+ —— 黑客风靠"实在",不靠包装

**主 Agent 出 v1 前必做:**
1. 读 `memory/user-profile.md` 的"包装策略"字段,确认当前区间
2. 没找到 → 默认 20%
3. 按区间对照 SOUL 原则 7 禁词表,自检措辞
4. 20% 区间**禁词**:**主导 / 独立负责 / 精通 / 熟练掌握**

**风格对包装的友好度:** 低(技术向,克制 = 专业)

## 外溢需求(huashu-design 思想融入)

> v1.1.4 起,huashu-design 不再单列为 skill。它的设计哲学作为本风格的"溢出能力"存在 —— 本风格的终端感天然适合做技术类 demo / 数据可视化。

**用户说这些词时,启用外溢能力**:

| 用户说 | 本风格怎么做 |
|--------|------------|
| "我想做技术分享 deck" | 沿用本风格的命令行 prompt + status bar + 翠绿/紫双色,做 16:9 deck,每页用"$ command --flag"格式,整体像 tmux 输出。参考 `skills/huashu-design/references/slide-decks.md` |
| "做个可交互的项目 demo" | 用本风格的命令行 + 终端光标做导航,点击执行模拟命令。参考 `skills/huashu-design/references/interactive-prototypes.md` |
| "数据可视化" | 沿用本风格的技能条(level bar) + ASCII 边框做柱状图/进度图,SVG inline,不用 chart 库。参考 `skills/huashu-design/references/visualization.md` |
| "项目演示加动效" | 用本风格的快节奏(200ms)+ status bar pulse,不要慢 reveal,符合"终端即时反馈"气质。参考 `skills/huashu-design/references/animation-best-practices.md` |

**本风格 + huashu 的纪律**:零 emoji 不破 / 关 JS 可读不破 / 终端/命令行语言风格贯穿 / 别写假代码当装饰(本风格避坑点)。
