# 4 个风格怎么用图标 / Per-Style Icon Integration

> 把 `icons.md` 的图标按风格差异化用起来——不是"复制粘贴",而是让图标成为风格的**有机组成**。

---

## 总原则(4 风格通用)

1. **图标服务于文字,不是替代文字** — 永远让 `<svg>` + 文字同行,不是孤悬的 SVG
2. **图标 ≤ 装饰总量 30%** — 一页 HTML 的视觉重量,图标占 1/3 以下
3. **每个章节图标最多 1 个** — 不要"工作 + 教育 + 项目 + 技能"全挂图标,挑 2 个最关键的
4. **颜色全部走 `currentColor`** — 不写死 `#000` / `#fff`,CSS `color` 控制

---

## 一、极简留白(Minimal Whitespace)

**气质诉求**:克制、安静、内容承担视觉重量。**图标必须细、轻、少**。

### 用什么

- 联系区:**全部用**(`mail` `link` `brand-github` `map-pin` `phone` `globe` 6 选实际有的)
- 章节标题:**不用图标**(极简留白用大字号 + 留白撑气场,图标反而吵)
- 装饰:`star` `sparkle` 最多 1-2 个,做 hero 区/作品集封面"点睛"

### 怎么用(细 + 安静)

```html
<!-- 联系区:16px, stroke-width=1.5(从默认 2 降级) -->
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" 
     stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
  <rect x="2" y="4" width="20" height="16" rx="2"/>
  <path d="m22 7-10 5L2 7"/>
</svg>

<!-- CSS:颜色用 ink-soft(灰),hover 才变 accent -->
.contact-item { color: var(--ink-soft); transition: color var(--motion-fast) var(--ease-out); }
.contact-item:hover { color: var(--accent); }
```

### 动效

- **hover**:颜色从 `ink-soft` → `accent`(灰→品牌色),**不加位移**(保持安静)
- **reveal**:不单独给图标加 reveal,跟父元素一起 fade
- **不要**:旋转 / 缩放 / 上跳等"活泼"动效

### 自检

- [ ] stroke-width ≤ 1.5
- [ ] 颜色用 ink-soft / accent 两个,不用强色
- [ ] hover 不会上下移动
- [ ] 没有"大尺寸装饰图标"(最大 24px)

---

## 二、杂志编辑(Magazine Editorial)

**气质诉求**:编辑感、版式美学、文字为主、图标是"版面配饰"。

### 用什么

- 联系区:**用**(`mail` `brand-github` `map-pin` `phone`),但放**页脚**而不是 header
- 章节标题:**用** — `briefcase` `school` `award` 等做"刊头图标"(28-36px)
- 装饰:`star` `sparkles` 撒在 hero 大标题旁(模仿杂志封面"配饰")

### 怎么用(粗 + 编辑感)

```html
<!-- 章节标题旁的刊头图标:32px, stroke-width=2 -->
<h2>
  <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor"
       stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">
    <rect x="3" y="7" width="18" height="13" rx="2"/>
    <path d="M8 7V5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"/>
    <path d="M3 13h18"/>
  </svg>
  EXPERIENCE
</h2>
```

```css
h2 svg {
  color: var(--accent);
  vertical-align: middle;
  margin-right: 12px;
  /* 滚动渐显时,SVG 在文字前先显现 */
  transition: transform var(--motion-base) var(--ease-out);
}
```

### 动效

- **reveal**:图标随父 h2 一起 reveal(translateY(12px) → 0)
- **hover 链接**:颜色 + 1px 下划线位移
- **章节图标**:滚动到视区时,SVG 从 `opacity 0` → 1,**轻微 rotate(-4deg) → 0**(模仿版面"调整角度")

### 自检

- [ ] stroke-width = 2(默认,保持编辑感粗线)
- [ ] 章节图标 ≤ 36px
- [ ] hero 区可撒 2-3 个装饰图标但**不超 3 个**
- [ ] 颜色用 accent(深色版用 accent + 灰白)

---

## 三、赛博未来(Cyber Future)

**气质诉求**:终端、霓虹、技术原生。**图标必须是"命令行能打的"那种感觉**。

### 用什么

- 联系区:**用 monospace 配色** — `mail` `link` `brand-github` `terminal`
- 章节标题:**不用通用图标**,直接用 ASCII 字符(`▸` `▰`)+ 文字,**不用 SVG 图标**
- 装饰:`sparkles` `target` 模拟"系统徽章",放 hero 区

### 怎么用(等宽字体 + 霓虹)

```html
<!-- 联系区用单色描边 + 等宽字体包裹 -->
<span class="contact-item">
  <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="#00FF88"
       stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
    <rect x="2" y="4" width="20" height="16" rx="2"/>
    <path d="m22 7-10 5L2 7"/>
  </svg>
  <code>hi@cyber.dev</code>
</span>
```

```css
.contact-item code {
  font-family: var(--font-mono);
  color: var(--ink-soft);
}
.contact-item:hover svg { stroke: var(--accent-2); filter: drop-shadow(0 0 4px var(--accent-2)); }
```

### 动效

- **hover**:stroke 色变 + `drop-shadow` 霓虹光晕(`0 0 4px var(--accent)`)
- **reveal**:不专门给图标做,跟容器一起
- **闪烁**:hero 区的 `sparkles` 可加 `animation: blink 1.6s infinite`(配光标 blink)

### 自检

- [ ] 描边色 = `#00FF88` / `#A855F7` / `#F472B6`(monospace 霓虹三选一)
- [ ] hover 时图标有 `drop-shadow`
- [ ] 章节标题**不挂 SVG 图标**(用 ASCII 字符)
- [ ] 没装饰图标的视觉重量过大(≤ 2 个)

---

## 四、手账拼贴(Scrapbook Collage)

**气质诉求**:温度感、不规则、手作。**图标要"贴上去"的调皮感**。

### 用什么

- 联系区:**用** + 加 `transform: rotate(-2deg)`(贴歪一点)
- 章节标题:**用** — `briefcase` `book` `bulb` 做"贴纸感"标题装饰
- 装饰:`heart` `star` `sparkle` 撒满(手账风格就是要散落)

### 怎么用(贴纸 + 旋转)

```html
<!-- 章节图标像贴纸一样歪贴 -->
<h2>
  <svg class="sticker" width="28" height="28" viewBox="0 0 24 24" fill="none"
       stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
    <rect x="3" y="7" width="18" height="13" rx="2"/>
    <path d="M8 7V5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"/>
    <path d="M3 13h18"/>
  </svg>
  工作经历
</h2>

<!-- 装饰图标散落 -->
<svg class="deco heart" width="40" height="40" ...>...</svg>
<svg class="deco star" width="32" height="32" ...>...</svg>
```

```css
.sticker {
  color: var(--accent);
  transform: rotate(-4deg);
  transition: transform var(--motion-base) var(--ease-out);
}
.sticker:hover { transform: rotate(-2deg) scale(1.08); }

.deco.heart { position: absolute; top: 60px; right: 40px; opacity: 0.85; transform: rotate(8deg); }
.deco.star  { position: absolute; top: 200px; right: 100px; opacity: 0.7; transform: rotate(-12deg); }
```

### 动效

- **sticker hover**:`rotate(-4deg) → rotate(-2deg) scale(1.08)`(从歪到稍正 + 放大,像"按住看")
- **deco 图标**:`animation: float 3s ease-in-out infinite`(轻微上下浮,3-5s 周期)
- **reveal**:`scale(0.95) rotate(2deg) → scale(1) rotate(0)`,300ms,带弹性

### 自检

- [ ] 章节图标带 `transform: rotate(...)`(贴歪)
- [ ] 装饰图标 ≤ 5 个,撒在不同位置不堆叠
- [ ] 颜色用 accent 或手账暖色(橘 / 黄 / 粉 / 蓝)
- [ ] 整体视觉有"手作"温度,不冷

---

## 风格适配速查表

| 风格 | stroke-width | 颜色 | 大小(联系) | 大小(章节) | 大小(装饰) | hover 行为 |
|------|-------------|------|-----------|-----------|-----------|----------|
| **极简留白** | **1.5** | ink-soft → accent | 16 | 不挂 | 24(max) | 颜色变 |
| **杂志编辑** | 2 | accent(强) | 16 | 32-36 | 28-32 | 颜色 + 微旋转 |
| **赛博未来** | 2 | 霓虹单色 | 14 | 不挂 SVG | 16-20 | 颜色 + drop-shadow |
| **手账拼贴** | 2 | accent 暖色 | 16 | 28 | 32-40 | rotate + scale |

---

## 关键反例(主 Agent 必避)

### 1. 不要"什么图标都加"

错误做法 — 全文堆图标:

```html
<!-- ❌ 反例 -->
<h2>📧 工作经历 💼</h2>
<h2>📚 教育 🎓</h2>
<h2>💡 技能 🛠️</h2>
<h2>🏆 奖项 ⭐</h2>
```

正确做法 — **最多挑 2-3 个关键章节挂图标**,其他章节用排版撑:

```html
<!-- ✅ 正例 -->
<h2>工作经历</h2>
<h2>项目作品</h2>  <-- 关键章节挂图标
<h2>教育背景</h2>
<h2>技能</h2>
```

### 2. 不要"图标抢文字戏"

图标视觉重量 ≤ 30%。如果图标比章节标题还大、还亮,就是抢戏:

```css
/* ❌ 反例 */
h2 svg { width: 64px; color: var(--accent); }  /* 标题被图标吞了 */

/* ✅ 正例 */
h2 svg { width: 28px; color: var(--accent-soft); }  /* 图标辅助,不抢 */
```

### 3. 不要"5 个不同颜色"

```html
<!-- ❌ 反例 -->
<svg style="color: red">...</svg>
<svg style="color: blue">...</svg>
<svg style="color: green">...</svg>
```

只用 `--accent` + `--ink-soft` 两个色,hover 切换。

### 4. 不要"图标代替文字"

图标永远是**辅助**。可访问性:

```html
<!-- ✅ 正例:aria-hidden="true" 让屏幕阅读器跳过,文字单独有含义 -->
<a href="mailto:hi@example.com" class="contact-item">
  <svg aria-hidden="true" ...>...</svg>
  hi@example.com
</a>
```

---

## 主 Agent 自检(出 v1 前必查)

- [ ] 图标总数 ≤ 12 个 / 一页 HTML(不堆砌)
- [ ] 每个图标都有 `aria-hidden="true"`(除非要单当文字的)
- [ ] 颜色走 CSS `color` + `currentColor`,没写死 hex
- [ ] 大小用 `width` / `height` 属性,不用 CSS `font-size`
- [ ] hover 动效跟其他元素一致(`var(--motion-fast)`)
- [ ] 没把不熟悉的技术 / 没用过的品牌放技能区

---

_Last updated: 2026-07-03_