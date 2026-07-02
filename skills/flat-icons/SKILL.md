# 平面图形素材库 / Flat Icons Library

> **主 Agent 遇到"需要个图标"时,来这里找**。
> 不再依赖几何字符(`◆` `▲` `■` `●`),而是用真正的**平面图形** —— 内联 SVG,可直接粘贴进 HTML,样式跟着 `currentColor` 走。

---

## 一句话

**Tabler Icons(18k+ stars, MIT, 4000+ 个)作为主库**,按场景精选 30+ 个常用图标,主 Agent 按需求直接复制 SVG 进 HTML。

---

## 为什么选 Tabler(而不是 Lucide / Heroicons / Phosphor)

| 候选库 | GitHub stars | 数量 | 协议 | 选 / 不选 |
|--------|-------------|------|------|----------|
| **Tabler Icons** | **18k+** | **4000+** | MIT | ✓ **主选** |
| Heroicons | 22k+ | ~300 | MIT | 备选(数量少) |
| Lucide | 6.5k+ | 1500+ | ISC | 备选(线条更细) |
| Phosphor | 5k+ | 1500+ | MIT | 备选(风格不同,更"胖") |
| Iconify | 5k+ | 200k+(聚合) | Apache 2.0 | 不选(需要 JS / 联网) |

**选 Tabler 的理由**:
1. **数量最多**(4000+) —— 履历裁缝 4 个风格,联系 / 章节 / 装饰 / 操作各 6-10 个,加起来要 30+ 图标,Tabler 全覆盖
2. **协议 MIT** —— 可商用、可改、可嵌 HTML
3. **线条粗细 2px、圆角线帽** —— 视觉中性,4 个风格都能适配(配 `currentColor` 改色)
4. **每个图标独立 SVG 文件** —— 内联 HTML 不用额外请求
5. **上游仓库** [tabler/tabler-icons](https://github.com/tabler/tabler-icons)

---

## 怎么用(主 Agent 操作流程)

1. **判断要什么图标** —— 联系 / 章节 / 装饰 / 操作 / 数据 / 时间,看 [`icons.md`](icons.md) 对应分类
2. **复制 SVG 进 HTML** —— 把代码块里的 `<svg>` 直接 paste 进 `<body>`,放在合适位置
3. **改样式** —— SVG 默认 `stroke="currentColor"`,CSS 设 `color: var(--accent)` 就改色;改大小用 `width` / `height` 属性
4. **加 hover/动效** —— 跟其他元素一样,包 `<a>` 或 `<span>` + CSS transition

**示例**(放进 HTML):
```html
<a href="mailto:hi@example.com" class="contact-item">
  <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
    <rect x="2" y="4" width="20" height="16" rx="2"/>
    <path d="m22 7-10 5L2 7"/>
  </svg>
  hi@example.com
</a>
```

```css
.contact-item {
  display: inline-flex;
  align-items: center;
  gap: 6px;
  color: var(--ink-soft);
  transition: color 150ms ease;
}
.contact-item:hover { color: var(--accent); }
```

---

## 4 个风格怎么选(图标风格建议)

| 风格 | 推荐图标风格 | 备注 |
|------|------------|------|
| 极简留白 | Tabler **outline**(默认)+ `stroke-width: 1.5`(更细) | 配合 Inter 字体细线气质 |
| 杂志编辑 | Tabler outline + `stroke-width: 2`(默认) | 经典编辑感 |
| 赛博未来 | Tabler outline + **monospace 配色**(#00FF88 / #A855F7)+ `stroke-width: 2` | 终端命令行感 |
| 手账拼贴 | Tabler outline + **slight rotate 1°** + 配手写字体 | 贴纸调皮感 |

**所有风格通用规则**:
- 默认大小 16-24px(联系信息区);章节图标可以 28-36px
- 颜色用 `currentColor`,CSS 设 `color: var(--accent)` 或 `var(--ink)`
- hover 时颜色变 + 微微位移(向上 1px / 旋转 4°)做"活泼"感
- 不要超过 3 个动效叠加在图标上

---

## 文件清单

```
skills/flat-icons/
├── SKILL.md          ← 本文件(库介绍 + 怎么用)
├── icons.md          ← 30+ 精选图标(分类 + 内联 SVG 代码块)
└── INTEGRATION.md    ← 4 个风格怎么用(图标风格 / hover / 动效)
```

---

## 扩展性

- **需要更多图标** —— 主 Agent 查 [tabler-icons.io](https://tabler-icons.io)(在线浏览),把 SVG 复制进 `icons.md` 对应分类,或者直接 inline 进 HTML
- **要其他风格**(手绘 / 复古 / 像素)—— 看 `INTEGRATION.md` 末尾"备用库"段
- **要矢量品牌 logo**(公司 / 学校 / 技术栈)—— 不在本库,走 `huashu-design/INTEGRATION.md` §资产协议

---

## 主 Agent 自检(出 v1 前必查)

- [ ] 用了图标的地方,SVG 是从本库或 Tabler 上游 inline 来的,**不是 emoji 字符**
- [ ] SVG `stroke="currentColor"`,颜色由 CSS `color` 控制(没写死黑色)
- [ ] 大小用 `width` / `height` 属性,不用 CSS `font-size`
- [ ] hover 动效跟其他元素一致(`var(--motion-fast)`)
- [ ] 没在 1 个元素上堆 3+ 个图标

---

_Last updated: 2026-07-03, v1.1.4 加强:从几何字符升级为平面图形素材库_