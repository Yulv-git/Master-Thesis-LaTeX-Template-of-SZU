<!--
 * @Author: Shuangchi He / Yulv
 * @Email: yulvchi@qq.com
 * @Date: 2022-02-12 21:22:25
 * @Motto: Entities should not be multiplied unnecessarily.
 * @LastEditors: Shuangchi He
 * @LastEditTime: 2022-04-06 19:48:14
 * @FilePath: \Master-Thesis-LaTeX-Template-of-SZU\README.md
 * @Description: Init from https://github.com/yichengsu/szuthesis a35dee8bd7fcedf61c7612e6ce277bb9560cdfc4
 * Repository: https://github.com/Yulv-git/Master-Thesis-LaTeX-Template-of-SZU
-->

<h1><center> Master-Thesis-LaTeX-Template-of-SZU </center></h1>

---

- [1. 模板简介](#1-模板简介)
  - [1.1. 致谢](#11-致谢)
  - [1.2. 编译](#12-编译)
  - [1.3. 论文编辑](#13-论文编辑)
  - [1.4. 论文字数统计](#14-论文字数统计)
  - [1.5. 其他](#15-其他)
- [2. 深大学位申请系统，仅支持 doc，docx 格式的论文](#2-深大学位申请系统仅支持-docdocx-格式的论文)
  - [2.1. 尝试将 .tex 转为 .docx](#21-尝试将-tex-转为-docx)
  - [2.2. 向学院秘书申请毕业论文上传 pdf 版](#22-向学院秘书申请毕业论文上传-pdf-版)
- [3. 校外盲审版论文](#3-校外盲审版论文)

---

# 1. 模板简介

## 1.1. 致谢

本项目基于 [szuthesis 深圳大学学位论文 LaTeX 模板](https://github.com/yichengsu/szuthesis)，并根据本人在毕业论文撰写期间的需求进行了适当修改。

## 1.2. 编译

本项目仅支持 **xelatex**；文献编译引擎：biber (biblatex)。推荐使用 Tex Live 2020 + VS Code （LaTeX Workshop 插件），[安装参考链接](https://blog.csdn.net/a2352159950/article/details/109485613)。。
本项目提供了 `.vscode/settings.json` 进行 latexmk 相关设置。

推荐使用 **latexmk** 命令编译文档，latexmk 命令可以自动适应不同的编译顺序，因本项目使用 biber 作为参考文献引擎，所以编译顺序可以与通常的顺序不同。
如使用 VS Code，只需安装插件后重启项目，点击 `TEX -> Build LaTeX project -> Recipe: latexmk` 即可，或在命令行使用命令：

``` sh
latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdfxe -outdir=./Temp -e ensure_path('TEXINPUTS','./texmf//') Thesis.tex
```

## 1.3. 论文编辑

直接在 `./Tex/` 中的各个 .tex 文档中进行论文内容编辑即可。

## 1.4. 论文字数统计

``` sh
bash wordcount.sh  # Linux 系统直接命令行运行。windows 系统则在 git bash 或 shell 中运行该命令。
```

## 1.5. 其他

PS：更多使用教程或说明，请见[模板使用说明.pdf](https://github.com/yichengsu/szuthesis/blob/main/%E6%A8%A1%E6%9D%BF%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E.pdf)。

# 2. 深大学位申请系统，仅支持 doc，docx 格式的论文

目前（2022.03.21），深大学位申请系统默认只能上传 doc 或 docx 格式的论文（用于查重和审核）。

但不用慌，请见 [向学院秘书申请毕业论文上传pdf版](#22-向学院秘书申请毕业论文上传 pdf 版)。

PS：若还有所顾虑，可将 pdf 转为 docx 然后进行修改调整，或直接使用 word 进行论文编写。

## 2.1. 尝试将 .tex 转为 .docx

- pandoc，tex 转 docx
    [下载](https://pandoc.org/installing.html) windows 安装包，并直接安装。
    Latex 转 Docx：打开命令行窗口，进入该项目主目录，运行`pandoc.exe -s Thesis.tex -o Thesis_pandoc.docx`。
- Office Word，pdf 转 docx
- 超级 PDF，pdf 转 docx
- I Love PDF，pdf 转 docx

以上任意一种方式转换后，或多或少都存在一些排版格式、字体、字号大小、图片、公式、表格、引用文献、引用序号、链接跳转等等问题。
故转换后，需要仔细进行对比和修改。

## 2.2. 向学院秘书申请毕业论文上传 pdf 版

请联系学院秘书老师，经许可后，写申请书给学院秘书。学院秘书在学位申请系统设置后，即可上传 pdf 论文（即不需将 PDF 转换为 docx 了）。

# 3. 校外盲审版论文

盲审版（从封面至附录），其中本文姓名、导师姓名、学校代码和学校名称等信息用 *** 代替。 pdf 格式，命名为`专业代码_学号.pdf`。
（以学院或班级的具体要求为准）
