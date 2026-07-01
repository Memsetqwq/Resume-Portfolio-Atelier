# 履历裁缝 PDF 导出完整指引

> 用户做完 HTML 后,怎么导出 PDF 才能投递。
> 模板里已内置 `@media print` CSS,但浏览器打印有坑,这篇是排雷指南。

---

## 方案 A:浏览器打印(最简单,80% 够用)

### Chrome / Edge

1. 打开 HTML 文件(双击 / 拖到浏览器)
2. `Ctrl/Cmd + P` 调出打印预览
3. **目标打印机** 选 "另存为 PDF"
4. **边距** 选 "无"(默认会留白边,会让留白风格的简历显得空)
5. **背景图形** 勾上(否则暗色背景/边框/装饰全丢)
6. 保存

### Safari(Mac)

1. `Cmd + P`
2. 左下角 PDF → 存储为 PDF
3. **细节**:
   - 勾上 "打印背景"(关键)
   - 缩放选 100%,不要"适合页面"

### 火狐

1. `Ctrl + P`
2. 边距选 "无"
3. 打印背景 — 火狐默认开,但有些版本要手动勾

### 关键开关清单

| 浏览器 | 必勾选项 | 默认陷阱 |
|--------|---------|---------|
| Chrome | 背景图形 | 默认关,暗色背景会丢 |
| Edge | 背景图形 | 默认关 |
| Safari | 打印背景 | 在 PDF 弹窗里 |
| Firefox | 边距 → 无 | 默认会有 margin |

---

## 方案 B:命令行打印(批量 / 自动化)

### Mac — wkhtmltopdf

```bash
brew install wkhtmltopdf
wkhtmltopdf --enable-local-file-access \
  --print-background-type pdf \
  --margin-top 0 --margin-bottom 0 --margin-left 0 --margin-right 0 \
  ./my-resume.html ./my-resume.pdf
```

### Windows — wkhtmltopdf

```
# 下载 https://wkhtmltopdf.org/downloads.html
"C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe" ^
  --enable-local-file-access ^
  --print-background-type pdf ^
  --margin-top 0 --margin-bottom 0 --margin-left 0 --margin-right 0 ^
  my-resume.html my-resume.pdf
```

**注意**:`--enable-local-file-access` 是让 wkhtmltopdf 能访问本地 Google Fonts CDN 时的关键(否则字体加载不出来)。

### Linux

同 Mac 命令,装包名 `wkhtmltopdf`。

---

## 方案 C:在线工具(不想装客户端)

- **CloudConvert** (`https://cloudconvert.com/html-to-pdf`)—— 上传 HTML,转 PDF
  - 风险:**简历内容会上传到第三方服务器**,敏感内容(身份证/详细住址)不要用这个
  - 只用纯设计内容(模板本身)
- **浏览器保存** — 优先用方案 A,不上传任何东西

---

## 方案 D:Puppeteer / Playwright(开发者向)

适合需要批处理或自定义页眉页脚:

```js
// Node + Puppeteer
const puppeteer = require('puppeteer');
(async () => {
  const browser = await puppeteer.launch();
  const page = await browser.newPage();
  await page.goto('file://' + __dirname + '/my-resume.html', { waitUntil: 'networkidle0' });
  await page.pdf({
    path: 'my-resume.pdf',
    format: 'A4',
    printBackground: true,
    margin: { top: 0, bottom: 0, left: 0, right: 0 }
  });
  await browser.close();
})();
```

**坑**:Google Fonts 加载要等 `networkidle0`,否则字体渲染失败。

---

## 打印常见坑排查

| 现象 | 原因 | 修复 |
|------|------|------|
| 暗色背景变成白色 | 浏览器没勾"打印背景" | 勾上 |
| 字体不对 / 退回默认 | Google Fonts 没加载到 | 等 3 秒再打印 / wkhtmltopdf 加 `--enable-local-file-access` |
| 页面被切 | 没设 `@page { size: A4; }` | template.html 里加 print CSS |
| 链接变成蓝色 + 下划线 | 默认链接样式 | `@media print { a { color: inherit; text-decoration: none; } }` |
| 动效在 PDF 里"卡住" | 浏览器打印时会冻结动画 | 设计时避开"必须看到最后一帧"的动画 |
| 边距不对 | 浏览器默认 1cm | 浏览器打印设置改"无" / CSS `@page { margin: 0 }` |
| 图片不显示 | 用了外链图床,打印时图床挂了 | 用本地 base64 嵌入图片 |

---

## v1 各风格 print CSS 检查表

> 跑测试用例 8(单文件能双击打开)和 9(移动端)时,顺便用 `Ctrl + P` 看一下 PDF 预览。

| 风格 | 背景图形 | 字体加载 | 边距 | 备注 |
|------|---------|---------|------|------|
| 极简留白 | 必勾,否则全白 | Inter 需等 2-3 秒 | 无 | 单色风格不会因背景问题影响阅读 |
| 杂志编辑 | 必勾(图文混排要图) | EB Garamond + Inter | 无 | 大图渲染慢,等久点 |
| 赛博未来 | 必勾(暗色) | 等宽字体 | 无 | 终端装饰字符可能渲染异常,跑测时验证 |
| 手账拼贴 | 必勾(贴纸 + 几何) | 手写感字体 | 无 | 旋转元素在 PDF 里可能位置偏移 |

---

## 投递前的最终检查清单

> 导出 PDF 后,用这个清单最后过一遍。

- [ ] 打开 PDF,看页面大小是 A4(不是 Letter)
- [ ] 字体加载正常,没有"宋体"那种系统默认
- [ ] 暗色背景/边框/装饰都保留了(背景图形开了)
- [ ] 所有外链(图/LinkedIn/GitHub)能点开
- [ ] 联系方式(电话/邮箱/LinkedIn)显示正确
- [ ] 身份证/详细住址(如果用户要求放)显示完整
- [ ] 移动端简历不需要做这个(投递 PDF 一定是桌面端)

---

_Last updated: 2026-06-29_