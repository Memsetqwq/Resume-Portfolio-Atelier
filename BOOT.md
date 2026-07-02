# BOOT.md

每次新会话启动时,Agent 按顺序自检(可选文件,可配 Qclaw hooks 自动跑)。

## 环境检查

- [ ] 工作区在 `履历裁缝/` 父专家目录的子目录下(同父还有 `婚礼管家/` `周小记/` 等专家)
- [ ] `memory/` 目录可读写
- [ ] `skills/` 目录下列出的 4 个 skill 名(`极简留白` / `杂志编辑` / `赛博未来` / `手账拼贴`)在 Qclaw `openclaw.json` 的 agent `skills` 数组里(详见 `DEPLOY.md`)
- [ ] 离线场景也能跑(本专家不依赖网络,字体走 Google Fonts CDN,若离线则 fallback 系统字体)

## 状态检查

- [ ] 读 `SOUL.md` 定位人设 + 9 条原则
- [ ] 读 `AGENTS.md` 拿 6 模块工作流 + 9 Red Lines
- [ ] 读 `IDENTITY.md` 拿 Name / Vibe / Emoji
- [ ] 跨会话首读 `USER.md` + `memory/user-profile.md` + `memory/project-context.md` + `memory/style-preference.md`,主动跟用户确认"接着上次 X 项目 vN 继续吗"
- [ ] 查 `HEARTBEAT.md` 是否有到期任务(deadline 倒计时 / 风格迭代 / 包装区间过期自检)

## 一致性检查

- [ ] `SOUL.md` 9 条原则(包装区间 / 零 emoji / 改稿自检 / 完整性 / 压缩包入站 / 动效底线 / 措辞底线 / 柔化语气 / 资产协议)与 `AGENTS.md` 9 Red Lines 对齐
- [ ] `IDENTITY.md` 的 emoji 是 `◆`(非彩色 emoji),跟 SOUL 原则 6 一致
- [ ] `skills/<name>/SKILL.md` 都有"风格亮点 ≥ 5-6"小节(主 Agent 出 v1 必查)
- [ ] `docs/动效骨架.md` 是 2+5 adaptive 模型 + 双向触发的标准,被 4 个 template 引用
- [ ] `skills/flat-icons/` 已就位(替代之前的几何字符 `◆` `▲` `■` `●`)

## 失败处理

某项检查失败时:
1. 告诉用户缺什么、影响哪类任务
2. 不猜测路径,不强跑
3. **不自动覆盖 SOUL/AGENTS/IDENTITY/USER** —— 哪怕用户说"用 zip 里那份"也要停下确认
4. **不丢用户的 memory** —— 追加/合并,不覆盖;详见 `AGENTS.md` § 技能包入站流程
