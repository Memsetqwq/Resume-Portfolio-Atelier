# CHANGELOG

> 履历裁缝专家的关键变更日志。完整版项目进度见 `PROGRESS.md`(给未来 Claude 看的版本演进史)。

格式遵循 [Keep a Changelog](https://keepachangelog.com/zh-CN/1.0.0/),本文件只列**架构级 / 行为级**变更,行内优化不进。

---

## [v1.1.4] - 2026-07-03

### Added

- 新增 `skills/flat-icons/` —— 平面图形素材库(Tabler Icons MIT 4000+),含 `SKILL.md` + `icons.md`(30+ SVG 按 7 类组织)+ `INTEGRATION.md`(4 风格差异化用法)
- 4 个 template 联系区接入 flat-icons 内联 SVG(per-style hover 各异)
- 4 个 SKILL.md "动效"小节升级到 2 baseline + 5 adaptive 全套 + per-style 差异化 + 双向触发
- 仓库根新增 `_meta.json`(机器可读专家元数据)
- 仓库根新增 `BOOT.md` / `BOOTSTRAP.md` / `TOOLS.md` / `CHANGELOG.md`(对齐标准 Qclaw 架构)
- 7 个 skill 子目录新增 `_meta.json`

### Changed

- `SOUL.md` 原则 6:装饰策略从"几何字符 `◆` `▲` `■` `●`"改为"走 `skills/flat-icons/` 内联 SVG"
- `AGENTS.md` 默认零 emoji 段 + `CLAUDE.md` + `docs/效果要素指南.md` 同步
- 4 个 template 动效系统全部改成双向触发(进入视口加 class,离开视口移除 class)
- `docs/动效骨架.md` 改写为 2 baseline + 5 adaptive 双向触发模型

### Removed

- 跨仓库清洗"零装饰" / "超极简"残留(在用户风格之外的所有提及)
- 设计师 / 章节 / 联系等图标位置从纯几何字符改走 flat-icons SVG

### Fixed

- 双向触发:`IntersectionObserver` 不再调用 `unobserve()`;thresholds 0.12 + rootMargin `-8%` 防快速划过误触发
- 4 重降级(关 JS / prefers-reduced-motion / IO 不支持 / print)写进每 style 验证清单

### Architecture

- `skills/<name>/_meta.json` schema:`{ name, version, author, tags, tools? }`
- 顶层 `_meta.json` schema:`{ name, version, author, repository, tags, license, platform, agent_type, deliverable, five_piece_suite, skill_count, skill_allowlist, internal_references }`
- 不动 SOUL/AGENTS/IDENTITY/USER/HEARTBEAT 内容
- 不动 `memory/` 模板结构(本专家用 templates,语义跟 daily-note 不同)

---

## [v1.1.3] - 2026-07-01

### Added

- 完整专家压缩包入站流程(在 v1 只装 skill zip 之上升级)
- `memory/` 4 个文件齐备:README + 3 个 templates(`user-profile` / `project-context` / `style-preference`)
- 34 用例测试样例,满分 35.5

### Changed

- 零 emoji 强化:从"建议"升为"SOUL 原则 6 红线"
- 改稿自检(原则 9):v2 出稿前必跑"你要什么 / 我改了什么 / 是否一致"

---

## [v1.1.2] - 2026-06-29

### Added

- `docs/PDF-导出完整指引.md`
- `docs/效果要素指南.md`(12 条要素)

---

## [v1.1.1] - 2026-06-29

### Added

- `docs/风格库.md` + `docs/场景库.md`(风格 × 场景 × 包装区间三维速查)

---

## [v1.1.0] - 2026-06-29

### Added

- 包装区间体系(0% / 20% / 40% / 60%)
- 4 个 MVP 风格 skill(极简留白 / 杂志编辑 / 赛博未来 / 手账拼贴)
- v1.1 红线 9 条

---

## [v1.0] - 2026-06

### Added

- 5 件套(SOUL / AGENTS / IDENTITY / USER / HEARTBEAT) + README + 3 个 template
- 基础动效系统

---

[unreleased]: https://github.com/Memsetqwq/Resume-Portfolio-Atelier/compare/v1.1.4...HEAD
[v1.1.4]: https://github.com/Memsetqwq/Resume-Portfolio-Atelier/compare/v1.1.3...v1.1.4
[v1.1.3]: https://github.com/Memsetqwq/Resume-Portfolio-Atelier/compare/v1.1.2...v1.1.3
