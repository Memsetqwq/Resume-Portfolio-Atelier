# deploy.ps1 - 履历裁缝 Qclaw 部署脚本
#
# 用法:
#   .\deploy.ps1                                          默认部署到当前 agent-fc36f887
#   .\deploy.ps1 -Workspace "C:\path\to\workspace"        指定 workspace
#   .\deploy.ps1 -SkillsOnly                              只同步 skills/ 目录
#   .\deploy.ps1 -SkipOpenclaw                            跳过 openclaw.json 改动(默认就跳过,需要时手动改)
#   .\deploy.ps1 -DryRun                                  只打印,不动文件
#
# 配合 DEPLOY.md 使用 - 本文是自动化部分,流程说明在 DEPLOY.md

[CmdletBinding()]
param(
    [string]$Workspace = "C:\Users\27673\.qclaw\workspace-agent-fc36f887",
    [string]$ExpertRoot = "",
    [switch]$SkillsOnly = $false,
    [switch]$SkipOpenclaw = $true,
    [switch]$DryRun = $false
)

# 如果用户没传 ExpertRoot,默认用脚本所在目录的父目录(即专家根)
if ([string]::IsNullOrEmpty($ExpertRoot)) {
    $ExpertRoot = Split-Path -Parent $PSScriptRoot
}

# === 颜色输出 ===
function Write-Step($msg) { Write-Host "▶ $msg" -ForegroundColor Cyan }
function Write-OK($msg)   { Write-Host "✓ $msg" -ForegroundColor Green }
function Write-Warn($msg) { Write-Host "⚠ $msg" -ForegroundColor Yellow }
function Write-Err($msg)  { Write-Host "✗ $msg" -ForegroundColor Red }

# === 前置检查 ===
Write-Step "履历裁缝 Qclaw 部署脚本"
Write-Host "  Workspace:  $Workspace"
Write-Host "  ExpertRoot: $ExpertRoot"
Write-Host ""

if (-not (Test-Path $ExpertRoot)) {
    Write-Err "专家目录不存在: $ExpertRoot"
    exit 1
}

# === Dry run 检查 ===
if ($DryRun) {
    Write-Warn "Dry run 模式 - 只打印,不动文件"
    Write-Host ""
}

# === Step 0:备份当前 workspace ===
$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$backupRoot = Join-Path $env:USERPROFILE ".qclaw-backup-$timestamp"
if (Test-Path $Workspace) {
    Write-Step "Step 0/6:备份当前 workspace 到 $backupRoot"
    if (-not $DryRun) {
        Copy-Item -Path $Workspace -Destination $backupRoot -Recurse -Force
    }
    Write-OK "已备份"
} else {
    Write-Warn "workspace 不存在 ($Workspace),跳过备份"
}

# === Skills-only 模式 ===
if ($SkillsOnly) {
    Write-Step "Skills-only 模式:只同步 skills/ 目录"
    $skillsSrc = Join-Path $ExpertRoot "skills"
    $skillsDst = Join-Path $Workspace "skills"
    if (-not (Test-Path $skillsSrc)) {
        Write-Err "专家目录里没有 skills/: $skillsSrc"
        exit 1
    }
    if (-not $DryRun) {
        New-Item -ItemType Directory -Force -Path $skillsDst | Out-Null
        Copy-Item -Path "$skillsSrc\*" -Destination $skillsDst -Recurse -Force
    }
    Write-OK "skills/ 已同步"
    Write-Step "完成!记得检查 openclaw.json 的 allowlist 包含: 极简留白, 杂志编辑, 赛博未来, 手账拼贴, huashu-design"
    exit 0
}

# === Step 1:保留平台文件 ===
Write-Step "Step 1/6:确定保留的平台文件"
$keep = @(".openclaw", ".consolidate-state.json", "openclaw.json")
Write-Host "    保留: $($keep -join ', ')"

# === Step 2:清空 workspace 旧文件(除平台保留项) ===
if (Test-Path $Workspace) {
    Write-Step "Step 2/6:清空 workspace 旧文件(保留平台项)"
    if (-not $DryRun) {
        Get-ChildItem -Path $Workspace -Force | Where-Object { $_.Name -notin $keep } | ForEach-Object {
            Remove-Item -Path $_.FullName -Recurse -Force
        }
    }
    Write-OK "已清空"
} else {
    Write-Step "Step 2/6:workspace 不存在,创建"
    if (-not $DryRun) {
        New-Item -ItemType Directory -Force -Path $Workspace | Out-Null
    }
}

# === Step 3:平铺拷贝专家目录 ===
Write-Step "Step 3/6:拷贝专家目录到 workspace"
if (-not $DryRun) {
    Copy-Item -Path "$ExpertRoot\*" -Destination $Workspace -Recurse -Force
}
Write-OK "已拷贝"

# === Step 4:删掉不该存在的文件 ===
Write-Step "Step 4/6:清理 Qclaw 平台会重新生成的文件"
$removeList = @("TOOLS.md", "MEMORY.md", "BOOTSTRAP.md", "deploy.ps1")
foreach ($f in $removeList) {
    $p = Join-Path $Workspace $f
    if (Test-Path $p) {
        if (-not $DryRun) {
            Remove-Item -Path $p -Force
        }
        Write-Host "    删 $f"
    }
}
Write-OK "已清理"

# === Step 5:同步 identity(如果 openclaw CLI 可用)===
Write-Step "Step 5/6:尝试同步 identity"
$openclawCmd = Get-Command openclaw -ErrorAction SilentlyContinue
if ($openclawCmd) {
    if (-not $DryRun) {
        openclaw agents set-identity --from-identity 2>&1 | Out-Null
    }
    Write-OK "openclaw CLI 调用完成"
} else {
    Write-Warn "找不到 openclaw CLI,跳过 identity 同步(请手动跑 'openclaw agents set-identity --from-identity' 或在 Qclaw UI 里点'重新加载身份')"
}

# === Step 6:报告 ===
Write-Step "Step 6/6:部署报告"
Write-Host ""
Write-Host "    部署到: $Workspace" -ForegroundColor White
Write-Host ""
Write-Host "    5 个 skill(必须加到 openclaw.json 的 skills 数组):" -ForegroundColor White
Write-Host "      - 极简留白" -ForegroundColor Gray
Write-Host "      - 杂志编辑" -ForegroundColor Gray
Write-Host "      - 赛博未来" -ForegroundColor Gray
Write-Host "      - 手账拼贴" -ForegroundColor Gray
Write-Host "      - huashu-design  (跨场景辅助:幻灯片/原型/动画/可视化)" -ForegroundColor Gray
Write-Host ""
Write-Host "    1 个参考目录(不需要 allowlist):" -ForegroundColor White
Write-Host "      - 大厂风格/  (模块 3 大厂风推荐用,Agent 内部读 DESIGN-INDEX.md)" -ForegroundColor Gray
Write-Host ""

if (-not $SkipOpenclaw) {
    Write-Host "    ⚠ 检测到 -SkipOpenclaw:\$false,但脚本默认不动 openclaw.json" -ForegroundColor Yellow
    Write-Host "      Agent 配置改动风险大,需要你手动合并" -ForegroundColor Yellow
}

Write-Host ""
Write-OK "部署完成!"
Write-Host ""
Write-Host "下一步:" -ForegroundColor Cyan
Write-Host "  1. 打开 $Workspace\openclaw.json" -ForegroundColor White
Write-Host "  2. 在 agent 的 skills 数组里追加: [极简留白, 杂志编辑, 赛博未来, 手账拼贴, huashu-design]" -ForegroundColor White
Write-Host "  3. 重启 Agent / 开新会话" -ForegroundColor White
Write-Host "  4. 让 Agent 跑一次 'skill 健康自检'(详见 DEPLOY.md §五)" -ForegroundColor White
Write-Host ""
Write-Host "备份在: $backupRoot" -ForegroundColor DarkGray