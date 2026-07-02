# DEPLOY.md — 履历裁缝 Qclaw 部署指南

> 给运维/用户自己看的:**怎么把履历裁缝专家正确部署到 Qclaw**,并确保 4 个 style skill 都活着。
> 理论背景见仓库根 `skill加载机制.md`(Qclaw skill 加载机制 + 为什么 zip 丢 skill)。
> 实操跳到本文。

---

## 一、Qclaw 部署 zip 流程的两个坑

1. **zip 上传只读 5 件套文件名** —— `SOUL.md` / `AGENTS.md` / `IDENTITY.md` / `USER.md` / `HEARTBEAT.md`,自定义 skill 目录 `skills/` 全丢
2. **skill allowlist 过滤** —— 哪怕磁盘上有 `skills/极简留白/SKILL.md`,如果 `openclaw.json` 的 agent `skills` 数组里没有 `"极简留白"`,Qclaw 看不见

**本文解决方案 = 方案 A(部署脚本) + 方案 C(AGENTS.md 自举) 组合**:
- A 让 skill 文件**真的**到 workspace
- C 让 Agent 首次启动时**主动**确认/装回 skill
- allowlist 这一步**必须**手动改 `openclaw.json`(Qclaw 没暴露 CLI)

---

## 二、5 个 skill 速查

| Skill 名 | 文件位置 | 用途 | 必须 allowlist |
|---------|---------|------|---------------|
| `极简留白` | `skills/极简留白/SKILL.md` + `template.html` | 工程师/产品/咨询默认 | ✓ |
| `杂志编辑` | `skills/杂志编辑/SKILL.md` + `template.html` | 设计师/插画师/学术 CV | ✓ |
| `赛博未来` | `skills/赛博未来/SKILL.md` + `template.html` | 后端/AI/极客向 | ✓ |
| `手账拼贴` | `skills/手账拼贴/SKILL.md` + `template.html` | 学生/接单/副业 | ✓ |
| `大厂风格` | `skills/大厂风格/DESIGN-INDEX.md` | **参考目录,不是 skill**(模块 3 大厂风推荐用) | ✗(不需要) |

---

## 三、部署步骤(手动版)

### Step 1:解压/拷贝专家目录到 workspace

把 `履历裁缝/` 整个目录的内容(平铺)拷贝到 workspace 根:

```
目标 workspace:C:\Users\27673\.qclaw\workspace-agent-fc36f887\
```

**保持目录结构**(关键):
```
workspace-agent-fc36f887/
├── SOUL.md
├── AGENTS.md
├── IDENTITY.md
├── USER.md
├── HEARTBEAT.md
├── skills/
│   ├── 极简留白/
│   │   ├── SKILL.md
│   │   └── template.html
│   ├── 杂志编辑/
│   ├── 赛博未来/
│   └── 手账拼贴/
├── memory/                  (空目录也要保留)
├── docs/                    (效果要素指南.md 等)
├── README.md
├── README_ZH.md
└── CLAUDE.md                (开发用,可不放)
```

### Step 2:更新 `openclaw.json` 的 skill allowlist

找到 workspace 里的 `openclaw.json`(通常在 `~/.openclaw/agents/<agent-id>/openclaw.json` 或 workspace 根),定位你的 agent 配置,在 `skills` 数组里**追加**这 4 项:

```json
{
  "skills": [
    "极简留白",
    "杂志编辑",
    "赛博未来",
    "手账拼贴"
  ]
}
```

⚠️ **必须跟目录名严格一致**(包括中文),Qclaw 是字符串匹配。

### Step 3:重启 Agent / 让会话重新加载

- 重启 Qclaw 平台,或
- 开一个新会话(主 Agent 读 AGENTS.md 时会自动跑"技能自举"步骤,见下文)

### Step 4:验证

新会话第一句问 Agent:**"你的 4 个 style skill 都在吗?做个自检"**。

主 Agent 会按 `AGENTS.md` §"技能自举"跑:
1. 扫盘 `skills/<风格名>/SKILL.md` 是否存在
2. 缺失 → 用 `skillhub_install` 装回;装不上 → 报告
3. 念报告给用户

---

## 四、自动化:用 `deploy.ps1` 一键部署

### 用法

```powershell
# 默认部署(workspace = 当前 agent-fc36f887)
.\deploy.ps1

# 指定其他 workspace
.\deploy.ps1 -Workspace "C:\Users\27673\.qclaw\workspace-agent-xxxxxx"

# 只同步 skills 目录(不重置整个 workspace)
.\deploy.ps1 -SkillsOnly

# 跳过 openclaw.json 改动(让你手动改)
.\deploy.ps1 -SkipOpenclaw
```

### 流程

1. **保留平台文件**:`.openclaw/`、`.consolidate-state.json`
2. **清空旧文件**(除平台保留项)
3. **平铺拷贝**专家目录所有文件到 workspace
4. **删掉不该有的文件**:`TOOLS.md` / `MEMORY.md` / `BOOTSTRAP.md` / `deploy.ps1`(让平台重新生成)
5. **同步 identity**:`openclaw agents set-identity --from-identity`
6. **报告**哪些 skill 部署了、openclaw.json 还要不要手动改

⚠️ **openclaw.json 的 allowlist 不会自动改** —— 改 Agent 配置算"行为变更",deploy 脚本默认只打印"需要追加的 skill 名清单",让你手动粘贴进 `openclaw.json` 的 `skills` 数组里。

---

## 五、首次部署后的 Agent 自检

部署完开第一个新会话,主 Agent 会按 `AGENTS.md` §"技能自举"自动跑:

```
[技能自举报告]
✓ 极简留白 SKILL.md + template.html 都在
✓ 杂志编辑 SKILL.md + template.html 都在
✓ 赛博未来 SKILL.md + template.html 都在
✓ 手账拼贴 SKILL.md + template.html 都在
✓ 大厂风格 DESIGN-INDEX.md 在(参考目录,不需要 allowlist)
✓ 4 个 style skill 都在 Qclaw allowlist 里

✓ 技能链路通,可以走模块 3 风格匹配
```

如果哪里缺,主 Agent 会**明确告警**而不是默默跳过。

---

## 六、回滚

如果新版本出问题:

```powershell
# 1. 从 git 回滚文件(如果你用 git 跟踪 workspace)
cd C:\Users\27673\.qclaw\workspace-agent-fc36f887
git checkout HEAD~1 -- .

# 2. 或从备份恢复 .qclaw 目录
```

建议每次部署前自动备份一份 `~/.qclaw/` 到 `~/.qclaw-backup-YYYYMMDD/`(deploy.ps1 默认会做)。

---

## 七、常见问题

### Q1:zip 上传后,4 个 style skill 都不见了
A:zip 上传只读 5 件套。**重新跑一次 deploy 脚本**(或手动按 Step 1-3 走)。

### Q2:`openclaw.json` 改了,但 skill 还是看不见
A:检查:
- skill 名跟目录名完全一致(中文)
- 重启了 Agent
- SKILL.md 在 `skills/<风格名>/` 下(不是 `skills/<风格名>/SKILL/<风格名>/SKILL.md` 这种嵌套)

### Q3:某个 skill 模板有问题
A:跑 `skillhub_install 极简留白` 重新装,或从仓库 git pull 后重新部署。

### Q4:用户说"我就要默认极简留白,别的不要"
A:从 `openclaw.json` 里删掉那 3 个 skill 名,**同时**把 `skills/杂志编辑/` `skills/赛博未来/` `skills/手账拼贴/` 目录移走(避免占空间)。

### Q5:`大厂风格/` 算 skill 吗?
A:不算。它是给 Agent 内部用的"参考目录",Qclaw 不会自动加载它,也不需要 allowlist。模块 3 "大厂风格推荐"流程由主 Agent 直接读 `DESIGN-INDEX.md`。

---

## 八、相关文档

- **理论背景**:`../skill加载机制.md`(父目录)—— Qclaw skill 加载机制 + 为什么 zip 丢 skill 的详细分析
- **本专家结构**:`AGENTS.md` §"技能自举"—— 主 Agent 启动时怎么自检 4 个 style skill
- **风格 skill 各自文档**:`skills/<风格名>/SKILL.md` × 4 —— 风格本身的视觉规则、触发词、避坑点

---

_Last updated: 2026-07-02,v1.1.4 加(对应 skill 加载机制问题)_