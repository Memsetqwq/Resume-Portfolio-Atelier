# TOOLS.md

履历裁缝主交付**单文件 HTML 简历 / 作品集**,不使用 shell / 数据库 / 远程连接等外部运行时工具。本文件记录约定 + Skill 工具边界。

## 专业 Skills

| Skill | 用途 | 优先级 |
|-------|------|--------|
| `极简留白` | 工程师 / 产品 / 咨询 / 应届求职首选;黑白 + 1 accent;克制排版 + 编辑式 pull quote + 大数字 hero | P0 |
| `杂志编辑` | 设计师 / 插画师 / 作品集首选;深色 + 大标题 + 编辑感;CHAPTER 罗马数字 + 作品灰度→彩色 | P0 |
| `赛博未来` | 后端 / AI / 极客向;终端 + 翠绿/紫霓虹 + status bar + ASCII 边框 | P0 |
| `手账拼贴` | 学生 / 接单 / 副业;不规则网格 + 贴纸 + 手写温度 + washi tape | P0 |
| `大厂风格`(内部参考) | 用户不明确时的默认推荐起点;精选 14 家大厂设计语言 + 73 家完整入口 | P1 |
| `huashu-design`(内部参考) | 反 AI slop / 动画 pitfalls / 演示 deck 流程 / 资产协议 —— 已融入每个 style 的 SKILL.md "外溢需求"段 | P2 |
| `flat-icons`(内部参考) | Tabler Icons MIT 4000+ 个平面图形;替代之前的几何字符 `◆` `▲` `■` `●` | P1 |

## 内部参考资源(主 Agent 内部读,不进 Qclaw allowlist)

`skills/大厂风格/DESIGN-INDEX.md`、`skills/huashu-design/references/`、`skills/flat-icons/icons.md` 都是**主 Agent 内部读**的资料,不通过 Qclaw skill loader 加载。
- 用大厂风时 → 主 Agent 读 `skills/大厂风格/DESIGN-INDEX.md` 给用户挑
- 用图标时 → 主 Agent 从 `skills/flat-icons/icons.md` 复制 inline SVG 进 HTML
- 外溢(PPT / 原型 / 动画 / 可视化)→ 主 Agent 读对应 style SKILL.md 末尾"外溢需求"段 + `skills/huashu-design/references/`

## Skill 子目录约定

每个 `skills/<name>/` 目录都应该具备:
- `SKILL.md`(主 Agent 必读,7 项必填)
- `template.html`(主 Agent 套用,6 项必填)
- `_meta.json`(机器可读元数据,Qclaw allowlist 检索用)

可选:
- `references/`(深文档,如 `huashu-design` 的 `references/`)
- `assets/`(静态素材,如未来需要 SVG sprite / JSON Resume sample)

**无需 `scripts/`**:本专家不依赖运行时脚本,所有逻辑走 HTML 端 CSS + 内联 JS。

## 字体与 CDN 约定

- 4 个 MVP 风格共用 Google Fonts:
  - Inter(主字体,工程师 / 产品 / 数据 / 咨询)
  - EB Garamond(标题衬线,杂志编辑 / 极简留白的 pull quote)
  - JetBrains Mono(等宽,赛博未来 / 终端风 / skill 标签)
  - Caveat + Patrick Hand(手写,手账拼贴)
  - Noto Sans SC(中文混排 fallback)
- CDN 失败时,fallback 到系统字体(`-apple-system, BlinkMacSystemFont, ...`)
- 离线场景也保证渲染,见 `docs/PDF-导出完整指引.md`

## 部署 / 工具

部署相关工具链(Qclaw 平台):
- `deploy.ps1`(Windows 部署脚本,见 `DEPLOY.md`)
- `openclaw.json` 的 agent `skills` 数组必须含 4 项

## 包装区间工具

`memory/user-profile.md` 的"包装策略"字段是核心:
- 0% / **20% (默认)** / 40% / 60% 四档
- 20% 禁词:主导 / 独立负责 / 精通 / 熟练掌握
- 措辞可以升,事实不能改(任何区间下都禁编造)

## 不应使用的方式

- **不动数据目录 / 数据库 / SSH 连接** —— 本专家不涉及
- **不用 emoji** —— 默认零彩色 emoji,走 `skills/flat-icons/` 的内联 SVG(SOUL 原则 6)
- **不用复杂外部动效库**(GSAP / Framer Motion) —— 全部 CSS + 内联 JS,关 JS 也能读
- **不用第三方图表库**(Chart.js / D3) —— 图表用 SVG inline,见 `docs/效果要素指南.md`
- **不外包 ATS 解析** —— 投外企时提醒备 PDF,但 HTML 不为了 ATS 100% 通过而妥协
- **不替用户做主观价值判断** —— "GPA 太低不能说" 这种话不说

`TOOLS.md` 只记录约定,不赋予工具权限。实际可用性由运行环境 + 用户偏好决定。
