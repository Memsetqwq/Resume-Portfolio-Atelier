# SKILL: 手账拼贴

> 主 Agent 触发"风格匹配"且用户选了**手账拼贴**时,读本文件 + 套 `template.html`。

## 一句话
不规则网格 + 贴纸感 + 一点手写温度。

## 适用人群
- 学生(在校/申请)
- 文艺向(插画/写作/独立创作)
- 副业接单(设计/手作/咨询)
- 任何"我不想要正经模板"的人

## 视觉规则(精简版)
- 配色:奶油白(#FDFBF5) + 暖色 accent(蜜桃/薄荷/奶黄,选 2-3 个)
- 字体:Caveat(手写标题) + Inter(正文) + Patrick Hand(小标注)
- 字号:大标题 56-72px(手写字大更可爱)
- 留白:页面边距 32-48px,内容块**故意轻微错位**(rotate(-1deg)/rotate(1deg))
- 网格:CSS Grid 故意"破"出格子
- 装饰:**默认零 emoji**(整条红线),用 SVG 手绘小图标(stroke 风格,统一) + 胶带感(CSS 半透明矩形) + 手绘箭头(SVG) + 几何字符(`◆` `▲` `■` `●`)

## 风格亮点(每份简历都该有的手作锚点 + huashu 蒸馏)

> v1.1.4 加强版:手账拼贴的"手作温度"靠**胶带 + 手写 + 拼贴感**撑起来。每份出厂自带 ≥ 6 个亮点。

### 必装亮点(主 Agent 出 v1 默认加上)

- **◆ washi tape 胶带**:hero 区或章节标题 1 条半透明彩色矩形(蜜桃/薄荷/奶黄),rotate(-3deg)
  - 触发:**必装**,手账感的招牌
- **◆ chapter-mark 圆圈**:每个章节标题前 1 个 64px 圆,Caveat 手写数字 + 14px 描边,稍微旋转(±2°)
  - 触发:**必装**
- **◆ handwritten underline**:章节标题下方 1 条 SVG 曲线 underline(手绘抖动效果,2px 主 accent 描边)
  - 触发:**必装**
- **◆ date stamp 日期贴纸**:hero 区右上角 1 个撕纸边缘的不规则形 + 日期 + 月份 + 年份
  - 触发:**必装**(显示简历"做于何时")
- **◆ ¶ 联系符**:联系信息区每个联系方式前加 1 个手绘符号(mail / location / link / phone,SVG 统一 stroke 风格)
  - 触发:**必装**
- **◆ footer 印章 / 邮戳**:footer 1 个圆形 "DRAFT / APPROVED / 2026" 风格印章(略带 inked 纹理,45% opacity)
  - 触发:**必装**

### 手作排版(按用户特点选装)

- **polaroid 照片框**:作品图配白边 + 倾斜 rotate(1-2deg),用 CSS box-shadow 模拟相纸
- **vintage stamp**:用户如果有"奖项 / 比赛名次",用 1 个圆形印章呈现,墨色 50% opacity
- **手绘装饰箭头**:从 1 个区块指向另 1 个区块,SVG 曲线,起点粗终点细
- **纸张纹理**:全 body 用 SVG filter 给背景加 0.02 opacity 纸张纤维纹理(可选,装饰预算 ≤ 1 处)
- **torn paper 撕纸**:章节切换时 1 个撕纸边缘 SVG path(波浪线)分隔上下
- **手写 emphasized quote**:hero 区下方 1 句 Caveat 大字 quote(36-48px),手写感签名

### huashu 蒸馏(反 AI slop + visual storytelling)

1. **拒绝完美对齐** —— 故意 1-2px 错位,打破 AI 模板的"整齐划一"
2. **friendly tone** —— 措辞口语化(如"主 Agent 帮你裁"/"帮你量体"),不用"全面展示"这种官方话
3. **story-driven motion** —— 动效像"贴上去"或"翻折页",不用严肃 fade
4. **资产协议** —— 设计师接单的作品图必须是真实截图,不能用占位 placeholder
5. **rotate 上限** —— 所有元素 rotate ≤ 2°,胶带是装饰主角但不能铺满全屏

### 包装区间联动(v1.1.4)

- **20%(默认)**:washi tape + chapter-mark + handwritten underline 基础三件套
- **40%**:加 date stamp + polaroid 框(作品集场景),装饰可以铺开
- **60%**:加印章 / 邮戳 + 撕纸分隔 + 纸张纹理,装饰可以"满",但旋转仍 ≤ 2°

## 触发关键词
- "手账"/"拼贴"/"不规则"/"有温度"
- "学生"/"应届"
- 用户挑大厂风:Clay / Notion(温暖版) / Figma(轻量)

## 避坑点
- **零 emoji**(默认),用 SVG/CSS 装饰替代——手账感不靠 emoji,靠胶带 + 倾斜 + 手写字
- SVG 图标统一 stroke 风格,别混 fill 和 stroke
- 旋转别超过 2°
- 不用 Comic Sans
- 拼贴感要 1 个主轴(内容块左对齐),局部才"破"

## 动效(锦上添花,关 JS 也能读)
1. 滚动到区块时"贴上去"(scale 0.95→1 + 轻微旋转 1°→0°,300ms)

## 主 Agent 调用流程
1. 读本文 + `template.html`
2. 把用户内容按 `{{placeholder}}` 替换
3. 选 2-3 个暖色 accent(默认蜜桃+薄荷+奶黄)
4. 输出一份 `~/Downloads/<name>-journal-v1.html`
5. 自检:emoji 适度 / 旋转<2° / 主轴对齐

## 包装区间适配(v1.1 新)

**本风格常用默认区间:** 20-40%
- 学生/应届场景建议 20%(自己看着也舒服)
- 副业/接单场景可以 40-60%(用户自己看,可以稍高)
- 但 freelancer 写"主导""独立负责"还是建议先跟用户确认

**主 Agent 出 v1 前必做:**
1. 读 `memory/user-profile.md` 的"包装策略"字段,确认当前区间
2. 没找到 → 默认 20%
3. 按区间对照 SOUL 原则 7 禁词表,自检措辞
4. 20% 区间**禁词**:**主导 / 独立负责 / 精通 / 熟练掌握**
5. 40% 区间可以用"主导",但不能用"独立负责 / 精通"

**风格对包装的友好度:** 中(轻松感,20-40% 都合理,接单场景可 60%)

## 外溢需求(huashu-design 思想融入)

> v1.1.4 起,huashu-design 不再单列为 skill。它的反 AI slop / 动画 pitfalls / 演示 deck 流程 / 资产协议,作为本风格的"溢出能力"存在 —— 用户外溢需求时按以下原则处理。

**用户说这些词时,启用外溢能力**(主 Agent 自动判断,不需要切 skill):

| 用户说 | 本风格怎么做 |
|--------|------------|
| "我想做作品集 deck" | 沿用本风格的 Caveat 手写字 + 胶带 + 倾斜装饰做 16:9 deck,每页像翻一页手账。参考 `skills/huashu-design/references/slide-decks.md` |
| "作品集做成可点击原型" | 用本风格的胶带 + chapter-mark 圆圈 + 轻微旋转做导航,点击像翻折页。参考 `skills/huashu-design/references/interactive-prototypes.md` |
| "作品展示加动效" | 沿用本风格的"贴上去"感(scale + rotate 入场,80ms 间隔 stagger),别用严肃 fade。参考 `skills/huashu-design/references/animation-best-practices.md` |
| "做信息图 / 数据可视化" | 沿用本风格的暖色 + 不规则网格,图表用 SVG inline,手写标签。参考 `skills/huashu-design/references/visualization.md` |

**本风格 + huashu 的纪律**:

- **零 emoji 不破** —— 沿用 SOUL 原则 6,所有图标用 SVG 手绘(stroke 风格统一)
- **关 JS 可读不破** —— 沿用 SOUL 原则 5,任何外溢产出都是"锦上添花"
- **手账调皮语气贯穿** —— 外溢 deck / 原型也保持轻微 rotate + 胶带感,不要突然变严肃
- **旋转上限不破** —— 所有外溢产出里 rotate 都 ≤ 2°
- **资产协议** —— 如涉及具名产品(Apple/Stripe/Notion 等),huashu 的"必须先走资产协议拿 logo"原则适用,不能编

