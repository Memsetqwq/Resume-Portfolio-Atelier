# Skill 仓库候选清单

> 给用户审查的候选目录。所有仓库均来自 GitHub 公开搜索(2026-06-29 抓取)。
> 审查通过后我会按风格归类,封装成 `skills/<风格名>/SKILL.md + template.html` 装入对应文件夹。
> 动效部分我已经筛掉了过度炫技的,留下的都是"锦上添花型"——你能感觉到,但不会觉得在表演。

---

## 0. 审查维度(供你过审时打分)

每个仓库我从这五个角度给适配度评级:

| 维度 | 问什么 |
|------|--------|
| **风格对位** | 是 4 个 MVP 风格之一(极简/杂志/赛博/手账),还是其他可扩展风格 |
| **单文件性** | 能不能抽出单文件 HTML,还是依赖构建工具 |
| **质量水位** | 代码/设计/排版是否经得起一个资深设计师看 |
| **学习价值** | 适合直接套用,还是更适合做参考启发 |
| **授权** | 仓库 license 是否允许 fork/改造后再分发 |

适配度分三档:
- **高** — 直接可作为 skill 模板
- **中** — 有参考价值,需做减法或改写
- **低** — 仅作风格启发,不建议直接用

---

## 1. 简历结构/数据源工具(基础层,5 个)

这类不是风格模板,而是"简历内容怎么结构化"的基础设施。MVP 阶段至少选 1 个作为内容 schema 参考。

| 仓库 | Stars | 简介 | 适配度 | 备注 |
|------|-------|------|--------|------|
| [prat0318/json_resume](https://github.com/prat0318/json_resume) | - | JSON 数据→HTML/PDF/Markdown 简历生成器 | **中** | 字段 schema 规范可参考,主题样式偏老,需重做 |
| [rbardini/resumed](https://github.com/rbardini/resumed) | - | Markdown→简历(JSON Resume 生态) | **中** | 写法清爽,主题可换。Markdown-first 是我倾向的 |
| [hacksalot/HackMyResume](https://github.com/hacksalot/HackMyResume) | - | 多格式输出(HTML/MD/PDF/JSON) | **低** | 仓库较老(2018),依赖 Node 工具链,不一定稳 |
| [IvanIsCoding/ResuLLMe](https://github.com/IvanIsCoding/ResuLLMe) | - | 用 LLM 增强简历内容 | **中** | 思路对路(LLM 帮写更好),可作内容生成参考 |
| [Maloquiin/cv-as-code](https://github.com/Maloquiin/cv-as-code) | 2 | YAML→双语 HTML+PDF | **中** | 双语思路值得借鉴,代码量小,易 fork |

> 我的建议:MVP 阶段先用 `rbardini/resumed` 的 JSON Resume schema 做内容契约,内容由 LLM 填,样式由各风格 skill 套。

---

## 2. 风格模板(核心层,12 个)

按 4 个 MVP 风格分组,再加 4 个扩展风格。

### 2.1 极简留白(3 个候选)

| 仓库 | Stars | 简介 | 适配度 | 备注 |
|------|-------|------|--------|------|
| [ivansaul/personal-portfolio](https://github.com/ivansaul/personal-portfolio) | 166 | 全响应式单页作品集,Python 生成 | **高** | 结构清楚,代码规范,适合改造成"克制冷淡"模板 |
| [mindattic/ryandebraal.com](https://github.com/mindattic/ryandebraal.com) | 1 | 单文件 HTML 简历,无依赖 | **高** | 纯手写,体量小,最适合"打开就能改" |
| [Innei/Yohaku](https://github.com/Innei/Yohaku) | 127 | "余白"排版设计系统,极简三色中性 | **中** | 名字就是余白,系统性强但偏文档站,需提炼 |

### 2.2 杂志编辑(3 个候选)

| 仓库 | Stars | 简介 | 适配度 | 备注 |
|------|-------|------|--------|------|
| [johnnynguynn/johnny-portfolio](https://github.com/johnnynguynn/johnny-portfolio) | 0 | 编辑杂志风格,摄影+项目 | **中** | 0 星但风格对口,作风格启发 |
| [RajarsiGit/personal-portfolio](https://github.com/RajarsiGit/personal-portfolio) | 0 | React+Vite+Tailwind 现代编辑风 | **低** | 依赖 React,不符合"单文件 HTML"约束,作参考 |
| [MinhajulAkib/Portfolio](https://github.com/MinhajulAkib/Portfolio) | 1 | 趋势单页模板,时尚感 | **中** | 视觉华丽,需"做减法"才出杂志味 |

> 杂志风整体 GitHub 资源偏少,可能需要从 dribbble/behance 反推模板。

### 2.3 赛博未来(3 个候选)

| 仓库 | Stars | 简介 | 适配度 | 备注 |
|------|-------|------|--------|------|
| [siskrishna/Personal_Portfolio](https://github.com/siskrishna/Personal_Portfolio) | 1 | 5 主题切换含 cyberpunk,动效完整 | **中** | 主题切换思路好,动效过密需"做减法"——契合"锦上添花"原则 |
| [Utka7784/Utkarsh-Portfolio](https://github.com/Utka7784/Utkarsh-Portfolio) | 0 | 终端风格+glitch 动效 | **中** | Hacker 主题纯粹,适合工程师向 |
| [SaiSugeet/Portfolio_Website](https://github.com/SaiSugeet/Portfolio_Website) | 0 | 赛博风+后端/ML 作品 | **中** | 行业定位(后端/AI)匹配赛博气质 |

### 2.4 手账拼贴(2 个候选)

| 仓库 | Stars | 简介 | 适配度 | 备注 |
|------|-------|------|--------|------|
| [bearlike/Pixel-Portfolio-Webite](https://github.com/bearlike/Pixel-Portfolio-Webite) | 95 | Nintendo 像素风,No BS 响应式 | **中** | 像素感是"手账"的硬核变体,适合学生/独立游戏向 |
| [designerdada/flat-mini-portfolio](https://github.com/designerdada/flat-mini-portfolio) | 13 | HTML/CSS 平面迷你作品集 | **中** | 极简平面,可作手账风"低配版"参考 |

> 手账/拼贴风的开源 HTML 模板很稀缺,后续可能要 CSS 网格 + transform 自己写。

### 2.5 扩展风格候选(4 个)

| 仓库 | Stars | 风格 | 适配度 | 备注 |
|------|-------|------|--------|------|
| [BorisEdison/Devfolio](https://github.com/BorisEdison/Devfolio) | 20 | 暗色开发者风 | **中** | 适合"夜间模式"扩展 |
| [Psiale/portfolio](https://github.com/Psiale/portfolio) | 15 | Tailwind 极简 | **低** | 依赖 Tailwind 工具链,纯参考 |
| [Sofiane-Bahmed/portfolio-template](https://github.com/Sofiane-Bahmed/portfolio-template) | - | 主题切换+动效 | **中** | 主题切换思路可借鉴 |
| [CyberBoyAyush/Simple-Portfolio](https://github.com/CyberBoyAyush/Simple-Portfolio) | 64 | 极简单页 | **高** | 适合"普通模板风"做对照 |

---

## 3. 设计工具(辅助层,5 个)

这类不进 skill 库,而是作为"主理人帮用户做判断"时调用的工具参考。

| 仓库 | Stars | 类型 | 用途 |
|------|-------|------|------|
| [NateBaldwinDesign/proportio](https://github.com/NateBaldwinDesign/proportio) | 155 | 比例尺工具 | 字号/间距/图标尺寸的等比缩放 |
| [johnpolacek/design-system-playground](https://github.com/johnpolacek/design-system-playground) | 161 | 排版/配色 playground | 快速试字号+配色组合 |
| [dembrandt/dembrandt](https://github.com/dembrandt/dembrandt) | 1970 | 设计 token 提取 | 从用户参考网站提色/字体(用前需确认版权) |
| [lukejacksonn/Malette](https://github.com/lukejacksonn/Malette) | 17 | 配色生成器 | 轻量配色工具,易部署 |
| [animate-css/animate.css](https://github.com/animate-css/animate.css) | 82629 | CSS 动效库 | 经典动效,**只用 1-2 个 class,不堆**——契合"锦上添花" |

---

## 4. 资源索引(awesome 列表,2 个)

> 不作为 skill 源,仅作扩展灵感池。

- [smaranjitghose/awesome-portfolio-websites](https://github.com/smaranjitghose/awesome-portfolio-websites) — 社区维护的作品集 awesome 列表
- [Evavic44/portfolio-ideas](https://github.com/Evavic44/portfolio-ideas) — 作品集创意点子集合

---

## 5. 我推荐的首批入选(MVP 阶段)

按"少而精"原则,先把以下 6 个封装成 skill,后续按需扩展:

| 风格 | 首选仓库 | 备选仓库 |
|------|---------|---------|
| 极简留白 | mindattic/ryandebraal.com | ivansaul/personal-portfolio |
| 杂志编辑 | johnnynguynn/johnny-portfolio | MinhajulAkib/Portfolio(需做减法) |
| 赛博未来 | Utka7784/Utkarsh-Portfolio | siskrishna/Personal_Portfolio(动效需减) |
| 手账拼贴 | bearlike/Pixel-Portfolio-Webite | designerdada/flat-mini-portfolio |
| 内容契约 | rbardini/resumed(JSON Resume schema) | — |
| 动效点缀 | animate-css/animate.css(限 1-2 个 class) | — |

---

## 6. 审查格式建议

你可以这样回复我:

```
1. **[x] 极简留白**: mindattic/ryandebraal.com(直接用) / ivansaul/personal-portfolio(作参考)
2. **[x] 杂志编辑**: johnnynguynn/johnny-portfolio(做模板)
3. **[-] 赛博未来**: 暂缓,等后续 v1.1
4. **[x] 手账拼贴**: bearlike/Pixel-Portfolio-Webite
5. **[x] 内容契约**: rbardini/resumed
6. **[-] 动效库**: 暂不引入,纯 CSS transition
...
```

或者直接说"按你推荐的来"或"全部通过"都行。

---

## 7. 已知缺口

- **杂志风** GitHub 资源质量参差,可能要从 dribbble 找视觉参考
- **手账拼贴** 没有现成模板,可能需要主理人原创 CSS 网格
- **真正高质量的极简/编辑风** 多为付费模板(如 Read.cv、Super.so),开源稀缺

这些缺口不影响 MVP 落地,但 v1.1 迭代时需要补。
