<!--
 * @Author: Shuangchi He / Yulv
 * @Email: yulvchi@qq.com
 * @Date: 2022-02-12 21:22:25
 * @Motto: Entities should not be multiplied unnecessarily.
 * @LastEditors: Shuangchi He
 * @LastEditTime: 2022-04-01 23:51:32
 * @FilePath: \Master-Thesis-Template-of-SZU\README.md
 * @Description: Init from https://github.com/yichengsu/szuthesis a35dee8bd7fcedf61c7612e6ce277bb9560cdfc4
 * Repository: https://github.com/Yulv-git/Master-Thesis-Template-of-SZU
-->

<h1><center> Master-Thesis-Template-of-SZU </center></h1>

---

- [1. 模板简介](#1-模板简介)
  - [1.1. 致谢](#11-致谢)
- [2. 论文编辑](#2-论文编辑)
- [3. 论文字数统计](#3-论文字数统计)
- [4. 深大学位申请系统，仅支持doc，docx格式的论文](#4-深大学位申请系统仅支持docdocx格式的论文)
  - [4.1. 尝试将.tex转为.docx](#41-尝试将tex转为docx)
  - [4.2. 向学院秘书申请毕业论文上传pdf版](#42-向学院秘书申请毕业论文上传pdf版)
- [5. 校外盲审版论文](#5-校外盲审版论文)

---

# 1. 模板简介

仅支持**xelatex**；文献编译引擎：biber (biblatex)。提供了`.vscode/settings.json`进行latexmk相关设置。

推荐使用 **latexmk** 命令编译文档，latexmk 命令可以自动适应不同的编译顺序，因本项目使用 biber 作为参考文献引擎，所以编译顺序可以与通常的顺序不同。如使用 VS Code，只需安装插件后重启项目，点击 `TEX -> Build LaTeX project -> Recipe: latexmk` 即可，或在命令行使用命令：

``` sh
latexmk -synctex=1 -interaction=nonstopmode -file-line-error -pdfxe -outdir=./Temp -e ensure_path('TEXINPUTS','./texmf//') Thesis.tex
```

## 1.1. 致谢

本项目基于[szuthesis 深圳大学学位论文 LaTeX 模板](https://github.com/yichengsu/szuthesis)，并根据本人在毕业论文撰写期间的需求进行了适当修改。

# 2. 论文编辑

直接在`./Tex/`中的各个.tex文档中进行论文内容编辑即可。

# 3. 论文字数统计

``` sh
bash wordcount.sh  # Linux系统直接命令行运行。windows系统则在 git bash 或 shell 中运行该命令。
```

# 4. 深大学位申请系统，仅支持doc，docx格式的论文

``` txt
    目前（2022.03.21），深大学位申请系统只能上传doc或docx格式的论文。

    PS：若对该LaTex模板格式或质量有顾虑，或者担心LaTeX生成的PDF会影响查重精度，则可直接使用word进行论文编辑。
```

## 4.1. 尝试将.tex转为.docx

- pandoc，tex转docx
    [下载](https://pandoc.org/installing.html)windows安装包，并直接安装。
    Latex转Docx：打开命令行窗口，进入该项目主目录，运行`pandoc.exe -s Thesis.tex -o Thesis_pandoc.docx`。
- Office Word，pdf转docx
- 超级PDF，pdf转docx
- I Love PDF，pdf转docx

转换后，或多或少都存在一些排版格式、字体、字号大小、图片、公式、表格、引用文献、引用序号、链接跳转等等问题。
(本人选择I Love PDF转换后的word进行修改。)
故转换后，需要仔细进行对比和修改。

## 4.2. 向学院秘书申请毕业论文上传pdf版

请联系学院秘书老师，经许可后，写申请书给学院秘书。学院秘书设置后可上传pdf论文（即不需将PDF转换为docx了）。

# 5. 校外盲审版论文

盲审版（从封面至附录），其中本文姓名、导师姓名、学校代码和学校名称等信息用***代替。
pdf格式，命名为`专业代码_学号.pdf`（具体命名根据学院或班级要求）。
