# 精选图标 / Curated Tabler Icons

> 30+ 个按**场景分类**精选的 Tabler Icons(MIT)。
> 全部内联 SVG,**直接复制到 HTML** 即可使用,样式跟 `currentColor` 走。

---

## 通用约定

每个 SVG 默认属性:

| 属性 | 值 | 原因 |
|------|----|------|
| `viewBox` | `0 0 24 24` | Tabler 标准,所有图标同尺寸 |
| `fill` | `none` | 线稿风格 |
| `stroke` | `currentColor` | 颜色由 CSS `color` 决定 |
| `stroke-width` | `2`(极简留白改 `1.5`) | 主线宽 |
| `stroke-linecap` | `round` | 圆角线帽,视觉柔和 |
| `stroke-linejoin` | `round` | 同上 |

**大小**:默认 `width="16" height="16"`(联系信息区)、`24`(章节图标)、`32-36`(装饰大图标)。

**颜色**:CSS 控制 — `color: var(--accent)` / `color: var(--ink-soft)` 等。

---

## 一、联系类(Contact) — 6 个

放 **header 联系区**(邮箱 / GitHub / 地点 / 电话 / LinkedIn / 网站)。

### mail(邮箱)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <rect x="2" y="4" width="20" height="16" rx="2"/>
  <path d="m22 7-10 5L2 7"/>
</svg>
```

### link(链接)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M9 15a4 4 0 0 1 0-6l3-3a4 4 0 0 1 6 6l-1 1"/>
  <path d="M15 9a4 4 0 0 1 0 6l-3 3a4 4 0 0 1-6-6l1-1"/>
</svg>
```

### brand-github(GitHub)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M9 19c-4.3 1.4-4.3-2.5-6-3m12 5v-3.5c0-1 .1-1.4-.5-2 2.8-.3 5.5-1.4 5.5-6a4.6 4.6 0 0 0-1.3-3.2 4.2 4.2 0 0 0-.1-3.2s-1.1-.3-3.5 1.3a12.3 12.3 0 0 0-6.2 0C6.5 2.8 5.4 3.1 5.4 3.1a4.2 4.2 0 0 0-.1 3.2A4.6 4.6 0 0 0 4 9.5c0 4.6 2.7 5.7 5.5 6-.6.6-.6 1.2-.5 2V21"/>
</svg>
```

### map-pin(地点)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M9 11a3 3 0 1 0 6 0 3 3 0 0 0-6 0z"/>
  <path d="M17.657 16.657 13.414 20.9a2 2 0 0 1-2.827 0l-4.244-4.243a8 8 0 1 1 11.314 0z"/>
</svg>
```

### phone(电话)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M5 4h4l2 5-2.5 1.5a11 11 0 0 0 5 5L15 13l5 2v4a2 2 0 0 1-2 2A16 16 0 0 1 3 6a2 2 0 0 1 2-2z"/>
</svg>
```

### globe(网站)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <circle cx="12" cy="12" r="9"/>
  <path d="M3 12h18"/>
  <path d="M12 3a14 14 0 0 1 0 18"/>
  <path d="M12 3a14 14 0 0 0 0 18"/>
</svg>
```

---

## 二、章节类(Section) — 5 个

放 **h2 标题旁 / 章节图标位**(工作 / 教育 / 项目 / 技能 / 奖项)。

### briefcase(工作经历)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <rect x="3" y="7" width="18" height="13" rx="2"/>
  <path d="M8 7V5a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"/>
  <path d="M3 13h18"/>
</svg>
```

### school(教育 / 学历)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M22 10 12 4 2 10l10 6 10-6z"/>
  <path d="M6 12v5a6 6 0 0 0 12 0v-5"/>
</svg>
```

### book(项目 / 阅读)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M3 4h13a3 3 0 0 1 3 3v13a3 3 0 0 0-3-3H3z"/>
  <path d="M3 4v13"/>
</svg>
```

### bulb(技能 / 想法)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M9 18h6"/>
  <path d="M10 22h4"/>
  <path d="M12 2a7 7 0 0 0-4 12.7V17h8v-2.3A7 7 0 0 0 12 2z"/>
</svg>
```

### award(奖项)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <circle cx="12" cy="9" r="6"/>
  <path d="m8.21 13.89-1.21 7.11 5-3 5 3-1.21-7.12"/>
</svg>
```

---

## 三、装饰类(Decoration) — 5 个

放 **hero 区 / 章节开头 / 引用区**,做大尺寸装饰(28-48px)。

### star(星)

```html
<svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="m12 2 3.09 6.26L22 9.27l-5 4.87 1.18 6.88L12 17.77l-6.18 3.25L7 14.14 2 9.27l6.91-1.01z"/>
</svg>
```

### heart(心)

```html
<svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M19.5 13.572 12 21l-7.5-7.428A5 5 0 1 1 12 6.586a5 5 0 1 1 7.5 6.986z"/>
</svg>
```

### sparkles(闪光)

```html
<svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="m12 3-1.9 5.8a2 2 0 0 1-1.3 1.3L3 12l5.8 1.9a2 2 0 0 1 1.3 1.3L12 21l1.9-5.8a2 2 0 0 1 1.3-1.3L21 12l-5.8-1.9a2 2 0 0 1-1.3-1.3z"/>
</svg>
```

### sparkle(小闪光)

```html
<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round">
  <path d="M12 3v3"/><path d="M12 18v3"/><path d="M3 12h3"/><path d="M18 12h3"/>
  <path d="m5.6 5.6 2.1 2.1"/><path d="m16.3 16.3 2.1 2.1"/><path d="m5.6 18.4 2.1-2.1"/><path d="m16.3 7.7 2.1-2.1"/>
</svg>
```

### circle-dot(圆点强调)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <circle cx="12" cy="12" r="9"/>
  <circle cx="12" cy="12" r="3" fill="currentColor"/>
</svg>
```

---

## 四、操作类(Action) — 5 个

放 **CTA 按钮 / 链接箭头 / 状态标记**。

### arrow-right(箭头)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M5 12h14"/>
  <path d="m12 5 7 7-7 7"/>
</svg>
```

### arrow-up-right(外链箭头)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M7 17 17 7"/>
  <path d="M7 7h10v10"/>
</svg>
```

### check(对勾)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M5 12l5 5L20 7"/>
</svg>
```

### download(下载)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 17v2a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-2"/>
  <path d="M7 11l5 5 5-5"/>
  <path d="M12 4v12"/>
</svg>
```

### external-link(外链)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M15 3h6v6"/>
  <path d="M10 14 21 3"/>
  <path d="M21 14v7H3V3h7"/>
</svg>
```

---

## 五、数据类(Data) — 4 个

放 **数字 / metric / 成果展示区**。

### chart-bar(柱状图)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M3 3v18h18"/>
  <rect x="7" y="12" width="3" height="6"/>
  <rect x="12" y="8" width="3" height="10"/>
  <rect x="17" y="4" width="3" height="14"/>
</svg>
```

### chart-line(折线图)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M3 3v18h18"/>
  <path d="m7 14 4-4 4 4 5-6"/>
</svg>
```

### trending-up(上升)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="m3 17 6-6 4 4 8-8"/>
  <path d="M14 7h7v7"/>
</svg>
```

### target(目标)

```html
<svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <circle cx="12" cy="12" r="9"/>
  <circle cx="12" cy="12" r="5"/>
  <circle cx="12" cy="12" r="1" fill="currentColor"/>
</svg>
```

---

## 六、时间类(Time) — 3 个

放 **教育年份 / 项目时间 / 工作年限**。

### calendar(日历)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <rect x="3" y="5" width="18" height="16" rx="2"/>
  <path d="M16 3v4"/>
  <path d="M8 3v4"/>
  <path d="M3 11h18"/>
</svg>
```

### clock(时钟)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <circle cx="12" cy="12" r="9"/>
  <path d="M12 7v5l3 3"/>
</svg>
```

### hourglass(沙漏)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M5 22h14"/>
  <path d="M5 2h14"/>
  <path d="M17 22v-4.172a2 2 0 0 0-.586-1.414L12 12l-4.414 4.414A2 2 0 0 0 7 17.828V22"/>
  <path d="M7 2v4.172a2 2 0 0 0 .586 1.414L12 12l4.414-4.414A2 2 0 0 0 17 6.172V2"/>
</svg>
```

---

## 七、品牌 / 技术(Brand) — 4 个

放 **技能区 / 项目技术栈**。注意:仅当用户**实际用过该技术**时再用,绝不堆砌。

### brand-twitter(X)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M4 4l11.7 16 4.3-16"/>
  <path d="M4 20l6.7-7"/>
  <path d="M20 4l-6.7 7"/>
</svg>
```

### brand-linkedin(LinkedIn)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <rect x="3" y="3" width="18" height="18" rx="2"/>
  <path d="M8 11v5"/>
  <path d="M8 8v.01"/>
  <path d="M12 16v-5"/>
  <path d="M16 16v-3a2 2 0 0 0-4 0"/>
</svg>
```

### code(代码)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="m8 18-6-6 6-6"/>
  <path d="m16 6 6 6-6 6"/>
</svg>
```

### terminal(终端)

```html
<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
  <path d="M5 7l5 5-5 5"/>
  <path d="M12 19h7"/>
</svg>
```

---

## 主 Agent 自检(出 v1 前必查)

- [ ] 用了图标的地方,SVG 是从本文件或 Tabler 上游 inline 的,**不是 emoji 字符或几何字符**
- [ ] SVG `stroke="currentColor"`,颜色由 CSS `color` 控制(没写死黑色)
- [ ] 大小用 `width` / `height` 属性,不用 CSS `font-size`
- [ ] 没在 1 个元素上堆 3+ 个图标
- [ ] hover 动效跟其他元素一致(`var(--motion-fast)`)
- [ ] 没把不熟悉的技术 / 没用过的品牌放技能区

---

## 怎么扩展

- **更多图标** — 主 Agent 查 [tabler-icons.io](https://tabler-icons.io),把 SVG 复制进本文件对应分类,或直接 inline 进 HTML
- **要其他风格**(手绘 / 复古 / 像素)— 主 Agent 自查上游库,不是本库范围
- **品牌 logo 矢量** — 不在本库,公司 / 学校 / 公认技术栈查官方 brand kit

---

_Total: 30+ icons across 7 categories. Last updated: 2026-07-03_