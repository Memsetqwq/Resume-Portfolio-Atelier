# 履历裁缝 Agent - 项目进度文档

> 给未来的 Claude 看的快速 resume 文档。
> 最后更新:2026-07-02
> 当前版本:**v1.1.4**(统一动效骨架 + 视觉锚点增强 + huashu-design 跨场景辅助)

---

## 项目一句话定位

履历裁缝 = 开了 8 年独立工作室的简历/作品集主理人,陪用户从零散经历里挖出亮点,做一份让人一眼记住的单文件 HTML。部署在 Qclaw 平台,用 `履历裁缝/` 目录里的 SOUL/AGENTS 五件套。

## 跟婚礼管家的差异

婚礼管家是"经验分享型"(过来人姐姐,陪新人走婚前 6-12 个月),履历裁缝是"产出型"(交付一份单文件 HTML 成品)。前者重陪伴,后者重交付。

---

## 当前版本状态(v1.1.4)

### v1.1.3 → v1.1.4 的关键变化

#### v1.1.4 增量(2026-07-02)

用户反馈 v1.1.3 的两个痛点 + 1 个新需求:

1. **痛点 A:动效缺失** —— "成品 HTML 出厂有点素,默认加动效" → 落地**统一动效骨架**(2 baseline + 3 adaptive)
2. **痛点 B:视觉单调** —— "默认效果太单调朴素了" → 落地**视觉锚点增强**(每 template 自带 5-8 个静态亮点)
3. **新需求:跨场景辅助** —— 接入 [alchaincyf/huashu-design](https://github.com/alchaincyf/huashu-design) skill(HTML 原生设计:原型/幻灯片/动画/可视化),让用户做 PPT 等外溢需求时有专业依托

落地文件清单:
- `docs/动效骨架.md`(新)—— 2 baseline + 3 adaptive 全套规范 + per-style 差异化 + 验证清单
- `docs/效果要素指南.md`(加 §"动效层 13-14") —— 主 Agent 决策增加动效维度
- `SOUL.md` §"关于动效" —— 从"≤3 个动效"升级到"2 baseline + ≤3 adaptive 统一骨架"
- `AGENTS.md` 模块 4 —— 加动效索引,出 v1 前必查两份 docs
- `skills/极简留白/template.html` —— 重写,接入动效骨架 + 视觉锚点(hero 大数字 / h2 章节标号 / 卡片化 / ◆ 装饰)
- `skills/杂志编辑/template.html` —— 重写,接入动效骨架 + 视觉锚点(罗马数字 CHAPTER / ISSUE NO. / ¶ 联系符 / 作品灰度→彩色)
- `skills/赛博未来/template.html` —— 重写,接入动效骨架 + 视觉锚点(ASCII 装饰 / status bar + pulse / glitch hover / 技能条渐变)
- `skills/手账拼贴/template.html` —— 重写,接入动效骨架 + 视觉锚点(日期贴纸 / handwritten-underline / chapter-mark 圆圈 / footer 圆形印章)
- `skills/huashu-design/`(新 → 加强版不再单列)—— 上游 MIT skill(SKILL.md + LICENSE + README + 26 references),INTEGRATION.md 说明何时启用 / 跳过什么

#### v1.1.4 加强版(2026-07-02 后)

**Round 1** —— 用户反馈"不要单列 huashu-design,将他融入每个风格中去"。

落地:
1. **CLAUDE.md / AGENTS.md / DEPLOY.md / deploy.ps1** —— huashu-design 从 skill 列表里去除,改为"内部参考资源";allowlist 从 5 项收缩到 4 项(只剩 4 个 style skill)
2. **`skills/<风格名>/SKILL.md` × 4** —— 每个 SKILL.md 末尾追加"外溢需求(huashu-design 思想融入)"段,内含 PPT / 原型 / 动效 / 可视化 4 个表项 + 本风格 + huashu 的纪律
3. **`skills/huashu-design/INTEGRATION.md`** —— 措辞更新,明确本目录只作内部参考,Soul/AGENTS/4 个 style SKILL.md 是主路径
4. **`PROGRESS.md` / `README_ZH.md`** —— 开源致谢段标注"v1.1.4 起融入每个 style 的 SKILL.md 末尾,不再单列 skill"

**Round 2** —— 用户反馈"按其他风格方向蒸馏 huashu-design,各自增加内容要求,使各风格更有特色和亮点;极简风也要增加动效/排版使其有记忆点"。

落地:
1. **`skills/<风格名>/SKILL.md` × 4** —— 每个 SKILL.md 在"包装区间适配"之前增加"**风格亮点(每份简历都该有的设计亮点 + huashu 蒸馏)**"段:
   - **极简留白**(必装 5 件套):大数字 hero + 编辑式 pull quote + 不对称 anchor block + 章节 accent line + 时间线视觉锚 —— 加上 EB Garamond 字体 + `.pull-quote` + `.anchor-block` + `.word-mark` + `.contact-box` + `.timeline-section` + SVG noise filter 一整套新元素到 `template.html`
   - **杂志编辑**(必装 6 件套):CHAPTER 罗马数字 + ISSUE NO. + ¶ 段落起始符 + 首字下沉 + 灰度→彩色 + CONTACT ¶ 尾符
   - **赛博未来**(必装 6 件套):`$` prompt + 闪烁光标 + status bar + ASCII 边框 + glitch hover + `█` 加载进度条 + 终端输出模拟
   - **手账拼贴**(必装 6 件套):washi tape + chapter-mark 圆圈 + handwritten underline + date stamp + ¶ 联系符 + footer 印章 / 邮戳
2. **`skills/极简留白/template.html`** —— 升级到"动效 + 排版双驱"特色,新增 EB Garamond 字体加载 + 6 个新 CSS class + 对应 HTML 占位符 + 响应式 + print CSS fallback
3. **`CLAUDE.md`** —— 加一行说明"风格亮点段是 v1.1.4 加强版的必装规范,主 Agent 出 v1 前必读自检"

核心原则:
- **Qclaw allowlist 收紧到 4 项** —— huashu-design 不再出现在 `openclaw.json` 的 skills 数组里
- **主 Agent 拿 huashu 思想走 style SKILL.md** —— 不需要"加载 skill",读 `skills/<风格名>/SKILL.md` 末尾段
- **每份 HTML 出厂默认 ≥ 5-6 个亮点** —— 不靠用户提示,模板自带,主 Agent 对照必装清单自检
- **极简留白的记忆锚点** —— 大数字 + pull quote + accent line 三件套是招牌,辅以 asymmetric anchor block / timeline / word mark / contact-box 让"克制的排版"也有记忆点
- **`skills/huashu-design/` 目录不删** —— 主 Agent 遇到具体外溢需求时,按需读 `references/slide-decks.md` 等深文档

核心原则:
- **动效底线不动**:关 JS / prefers-reduced-motion / 打印 / IO 不支持 4 重降级,任何环境都能读
- **per-style 差异化**:同一套 token + shared script,但各 style 的视觉气质保留(赛博未来 200ms,手账拼贴 -1° rotation)
- **视觉锚点 ≠ emoji**:仍守 SOUL 原则 6 零 emoji 默认,所有装饰用 SVG / CSS / 几何字符

#### v1.1.3 增量(2026-06-30,今晚)

> 用户给了一段对话,把"技能包入站"流程从 v1(只 skill zip)升级到 v2(完整专家压缩包也能自动部署),核心诉求:**丢一个 zip 过来就能完成整套专家部署**。

落地:
1. **AGENTS.md 加新章节** —— "技能包 / 完整专家压缩包 入站流程",含场景 A(只 skill zip) + 场景 B(完整专家 zip) + 7 边角(大厂风 73 / 编码炸 / 字段缺失 / 同名 / 等)
2. **SOUL.md 加原则 9** —— "接收专家压缩包的态度",4 条核心:不偷覆盖 / 不偷丢 memory / 不藏坑 / 不瞎猜
3. **README.md 加"怎么部署"节** —— 用户视角的压缩包入站指南
4. **memory/README.md 加"压缩包入站时的 memory 处理"小节** —— 追加 / 合并的策略
5. **测试样例加用例 33 + 34** —— 红线 13 → 14,体验底线 4 → 5,满分 32.5 → 35.5

核心原则:**不自动覆盖 SOUL / AGENTS / IDENTITY / USER**(行为改变太大,会停下来找你拍板),**memory 走追加 / 合并**(不丢你已有的数据),**skills 走校验安装**(SKILL.md 7 项 + template.html 6 项 + 零 emoji 检测)。

#### v1.1.2 增量(2026-06-29)

> 用户要求"专业内容完整性硬性要求"。

落地:
1. **SOUL.md 加原则 8** —— "专业内容完整性",含通用必填 4 项 + 场景差异化必填表 + 个人照片处理 + 联系方式分级
2. **AGENTS.md 加模块 6** —— "完整内容自检(出 v1 前必跑)"
3. **测试样例加用例 29-32** —— 个人照片 / 求职通用 / 留学 / freelance

#### v1.1.1 增量(2026-06-29)

> 用户希望"接续按规范调整"。

落地:
1. **HEARTBEAT.md 加过期自检模式** —— 30+ 天没更新 memory 主动问
2. **memory/project-context-template.md 加"本项目使用包装区间"** 字段
3. **skills/大厂风格/README + DESIGN-INDEX 加包装联动段**

测试样例加用例 26 / 27 / 28;总分 25 → 28.5。

#### v1.1.0 增量(2026-06-29)

> 引入包装区间体系 + 改稿自检。

落地:SOUL 原则 5(改稿自检)+ 原则 7(禁词表);AGENTS 模块 5 加自检;memory 加包装字段。

#### v1.1.0 之前(基线)

15-18 个用例,基本功能覆盖,v1 实测踩了 2 个 bug:
1. 🔴 v2 字号方向反了 + 改了多处 → SOUL 原则 5 改稿自检
2. 🔴 包装 20% 用了"主导" → SOUL 原则 7 禁词表

### v1.0 实测总结(踩了 1 红线 + 1 严重 bug)

跑测样例:用户给了一份真实的 9 轮对话样例 + v1.html / v2.html 文件。

| 类别 | v1.0 实测 | 满分 | 备注 |
|------|----------|------|------|
| 红线类 | 7/8 | 8 | ⚠️ 踩了用例 14(包装越界) |
| 体验底线类 | 6/6 | 6 | 全过 |
| 核心功能 | 7/7 | 7 | 全过 |
| 锦上添花 | 0.5/1.5 | 1.5 | ⚠️ 踩了用例 11(v2 改了一堆) |
| **合计** | **20.5/22.5** | 22.5(适用项) | |
| 按 24 满分算 | 22/24 | 24 | 优秀线下 |

**v1.0 详细问题:**

1. **🔴 v2 字号方向反了 + 改了多处**
   - 实际:`font-size` 从 `clamp(56px, 9vw, 92px)` 改成 `clamp(40px, 6vw, 60px)`(改小了)
   - Agent 嘴:说"60px 拉到 92px",与代码不符
   - 附带 bug:还偷偷改了 letter-spacing、line-height、margin-bottom 3 处
2. **🔴 包装 20% 用了"主导"**
   - v1 车企 H5 bullet 写了"主导 多轮性能优化"
   - 用户明确说 20%(默认),"主导"是 40-60% 区间词

**v1.0 做得好的部分(10 项):**

1. Onboarding 自然融入 2. 主动问包装区间 3. 大厂风推荐(Vercel/Linear/Raycast) 4. 温度感("招聘的人会盯着问""简历直接废一半") 5. 敢说原则(主动喊停) 6. 零 emoji(◆ 几何字符 + CSS 装饰) 7. ATS 友好 8. 跨会话连续性 9. HTML 工程化(单文件/内联 CSS/CDN/print CSS/响应式/prefers-reduced-motion) 10. 动效节制

### v1.1.3 v1.1.2 v1.1.1 修复清单

#### v1.1.3 已修(P0 必修)

- ✅ AGENTS.md 加"技能包 / 完整专家压缩包 入站流程"章节
- ✅ SOUL 原则 9:不偷覆盖 SOUL/AGENTS 等核心件
- ✅ README.md 加"怎么部署"用户指南
- ✅ memory/README.md 加"压缩包入站时的 memory 处理"
- ✅ 测试样例加用例 33 + 34,满分 32.5 → 35.5

#### v1.1.2 已修(P0 必修)

- ✅ SOUL 原则 8 专业内容完整性
- ✅ AGENTS 模块 6 完整内容自检

#### v1.1.1 已修(P1 应修)

- ✅ memory/project-context-template 加包装区间字段
- ✅ HEARTBEAT 加过期自检模式
- ✅ 大厂风 README/DESIGN-INDEX 加包装联动 + 友好度列

#### v1.1.0 已修(P0 必修)

- ✅ SOUL 原则 5 改稿自检
- ✅ SOUL 原则 7 禁词表
- ✅ AGENTS 模块 5 改稿自检流程
- ✅ AGENTS Red Lines 第 2 条加 20% 禁词指向

#### 未修(P2 锦上添花,放 v1.2)

- ⏳ 占位符视觉太抢眼(虚线斜纹 → 浅灰底)
- ⏳ 全局梳理"我推荐"→"我比较倾向"
- ⏳ 压缩包入站流程实跑过 dry run(下次找个真实 zip 跑一下)

---

## 关键决策记录(避免重蹈覆辙)

### 命名决策(2026-06-29)

最初在 AskUserQuestion 里给了 4 个候选:作品集医生 / 履历裁缝 / 履历调音师 / 一页定调。用户选"履历裁缝"。

### 单文件 HTML vs 多文件

用户最初问"成品形态",3 个选项:单文件 HTML / HTML+PDF / 可部署。选了"单文件 HTML"。

### 风格覆盖策略

MVP 4×4 + 大厂风作为"用户不明确的默认推荐",后续按 skill 包扩展。

### 动效底线

用户提示"动效为锦上添花,不喧宾夺主,不敷衍"。已写入 SOUL.md 末尾。

### 包装区间 vs 绝对禁止夸大(2026-06-29)

用户原话"调整不夸大能力的描述,先询问用户想打造的简历人设相关问题,如果需要体现专业水平可以适当夸大,此区间由用户动态调整,默认为 20%"。

教训:**"夸大"不是绝对禁止,而是设计成"包装区间"让用户自己定刻度**。Agent 不做道德判断,只执行包装刻度。

### 零 emoji 默认(2026-06-29)

用户原话"默认使用平面设计图形,完全不使用 emoji 图标,如果用户要求再加入相关内容"。

### 再柔化语气基线(2026-06-29)

用户希望语气从"客气+温度"再柔一档。落地:强烈判断词弱化、多给退路、判断+缓冲、不用感叹号。

### 压缩包入站(2026-06-30)

用户给了一段对话,描述履历裁缝的"技能包入站流程"雏形(只装 skill zip)。后续用户要求:**丢一个完整专家压缩包,要能一键部署整个专家**。

教训:**"一键部署"不是"全自动覆盖"** —— 核心件(SOUL/AGENTS/IDENTITY/USER)不自动覆盖,会停下来问你拍板;memory 走追加/合并;skill 走校验安装。这跟"对方案不对人"的态度延续 —— 我对自己的灵魂跟你的一样守。

### 用户偏好(持续生效)

- **中文交流是底线** —— 所有用户可见内容必须中文
- **避免 AI 感** —— 不堆砌、不排比、不空话、不端架子
- **避免命令式措辞** —— 不用"强制执行/严禁/绝不"
- **隐私敏感** —— 用户问任何问题都诚实回答
- **优先级排序** —— 人格 > 全面性 > 信息完整性 > 流程严格度
- **温度优先级** —— 用户审美温和口语、姐姐人设、不端着、对 AI 味 0 容忍
- **柔化基线** —— 强词弱化、判断+缓冲、多给退路
- **压缩包入站态度** —— 不偷覆盖核心件 / 不偷丢 memory / 不瞎猜 / 跟用户念清单

---

## 文件结构(快速定位)

```
C:\Users\27673\Desktop\my-expert-agent - 副本\
└── 履历裁缝/                                  ← 本专家(对应 plan 文件中的"简历作品集"目录,改名同步进行)
    ├── SOUL.md                                ← v1.1.3,9 原则(加原则 8 完整内容 + 原则 9 压缩包入站)
    ├── AGENTS.md                              ← v1.1.3,6 模块 + 入站流程 + 9 Red Lines
    ├── IDENTITY.md                            ← 履历裁缝/锐/◆(几何符号)
    ├── USER.md                                ← 模板
    ├── HEARTBEAT.md                           ← v1.1 加过期自检模式
    ├── README.md                              ← v1.1.3,加"怎么部署"
    ├── PROGRESS.md                            ← 本文档
    ├── memory/
    │   ├── README.md                          ← v1.1.3,加"压缩包入站 memory 处理"
    │   ├── user-profile-template.md          ← 含"包装策略"字段
    │   ├── project-context-template.md       ← 含"本项目使用包装区间"字段
    │   └── style-preference-template.md      ← 含"包装程度"字段
    ├── skills/
    │   ├── 极简留白/
    │   ├── 杂志编辑/
    │   ├── 赛博未来/
    │   ├── 手账拼贴/
    │   └── 大厂风格/                          ← DESIGN-INDEX 14 个精选 + 包装友好度
    ├── .research/
    │   └── sources/
    │       └── README.md                      ← 真实素材补充引导
    └── docs/
        ├── README.md
        ├── 风格库.md                          ← 加"包装区间适配总表"
        ├── 场景库.md                          ← 加各场景"默认包装区间"
        ├── 测试样例.md                        ← v1.1.3,35.5 满分(34 用例)
        ├── skill-candidates.md                ← 24 个 GitHub 候选
        ├── 实测跑分表.md                       ← v1 实测 20.5/22.5 + v1.1 重测预测
        ├── 如何跑测试.md
        ├── 完整样例与评分.md                  ← v1.1.2,立体人物 + 真实 HTML 成品
        └── PDF-导出完整指引.md
```

---

## 下一步建议

1. **拿真实 zip 跑 dry run**(v1.1.3 入站流程还没真跑过)—— 找 1 个 skill zip 或现有专家打包,跑解压 + 校验 + 索引,出问题补边角
2. **用 v1.1.3 重测 34 用例** —— 重点验证用例 33(不偷覆盖)+ 用例 34(反问意图)
3. **修占位符视觉**(P2 锦上添花,v1.2)
4. **补 `.research/sources/` 真实素材** —— 真实简历/作品集截图
5. **扩展 skills/** —— 按用户补充的 skill 包扩展

---

## 测试样例核心考点(给未来的我)

跑测试时重点关注这几类失败:

- **红线类**(一票否决):用例 13 / 14 / 15 / 16 / 17 / 18 / 22 / 24 / 26 / 29 / 30 / 31 / 32 / 33
- **体验底线类**:用例 9 / 10 / 19 / 28 / 34
- **核心功能**:用例 1 / 2 / 3 / 6 / 8 / 20 / 21
- **锦上添花**:用例 4 / 5 / 7 / 11 / 12 / 23 / 27
- **改稿自检**(v1.1 新):用例 25

---

_Last updated: 2026-06-30, v1.1.3_

