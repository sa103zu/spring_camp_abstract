## 概要

<!-- このPRで何を変更したか・なぜ変更したかを簡潔に記述してください -->

## 変更内容

<!-- 変更の詳細を箇条書きで記述してください -->
-

## レビュー依頼事項

<!-- レビュアーに特に確認してほしい点があれば記述してください -->

---

## GitHub Copilot へのレビュー指示

> **Copilot へ**: 以下のチェックリストは村松研究室の春合宿要旨 LaTeX テンプレートの構成・記述ルールをまとめたものです。このPRの変更が各ルールに準拠しているかを **日本語で** レビューしてください。問題がある場合は、該当箇所と具体的な修正案を示してください。

### ドキュメントクラス・パッケージ

- [ ] `\documentclass[uplatex,dvipdfmx,a4paper]{jsarticle}` を使用しているか
- [ ] `\RequirePackage{plautopatch,fix-cm}` がドキュメントクラスの前に宣言されているか
- [ ] `pxchfon`（haranoaji）, `fontenc`（T1）, `inputenc`（utf8）, `lmodern` が読み込まれているか
- [ ] `amsmath`, `amssymb`, `bm`, `braket`, `mathtools`, `mathrsfs`, `empheq`, `times`, `caption`, `cite` が読み込まれているか
- [ ] `geometry` に `top=25truemm, bottom=25truemm, left=20truemm, right=20truemm` が設定されているか
- [ ] `hyperref` が `[breaklinks=false,bookmarksnumbered=true,dvipdfmx]` オプション付きで読み込まれているか
- [ ] `hyperref` の印刷用カラー設定（`colorlinks=true`, `urlcolor=black`, `citecolor=black`, `linkcolor=black`）が `\hypersetup{}` で指定されているか

### レイアウト・スペーシング設定

- [ ] `\baselinestretch` が `0.85` に設定されているか
- [ ] `\figurename{図.}`, `\tablename{Table.}`, `\refname{参考文献}` が再定義されているか
- [ ] フロートスペーシング（`\floatsep`, `\textfloatsep`, `\intextsep`, `\abovecaptionskip`）が設定されているか
- [ ] 数式上下の空白（`\abovedisplayskip`, `\belowdisplayskip`）が `4pt` に設定されているか
- [ ] `section` / `subsection` / `subsubsection` の前後余白が `0.3\Cvs` または `0.25\Cvs` 程度に詰められているか

### カスタムコマンド

- [ ] `\figref{}`, `\equref{}`, `\tabref{}` が定義されているか
- [ ] `\red{}` が定義されているか
- [ ] 図・数式・表の参照に `\figref{}`, `\equref{}`, `\tabref{}` が統一して使われているか（`\ref{}` や `\eqref{}` の直接使用は NG）

### ページ構成・ヘッダー

- [ ] `\twocolumn[...]` によるヘッダー部分が記述されているか
- [ ] ヘッダーに「XXXX年度春合宿研究要旨」と指導教員名が含まれているか
- [ ] タイトルが `\textbf{\large ...}` で中央揃えになっているか
- [ ] 著者情報（研究室名・学籍番号or学年・氏名）が右揃えになっているか

### 章立て

- [ ] 章構成が以下のいずれかの形式に準拠しているか
  - **研究要旨**: 1. 序論、2. 理論、3. 手法、4. 結果および考察、5. 結論
  - **テンプレート準拠**: 1. 研究背景・目的、2. 理論、3. 方法、4. 今後の予定

### 表記法

- [ ] 物理量（変数）は数式モード（イタリック）で表記されているか
- [ ] スカラーは `$a$`、ベクトルは `$\bm{a}$`（太字小文字）、2階テンソルは `$\bm{A}$`（太字大文字）、4階テンソルは `$\mathbb{A}$` で表記されているか
- [ ] 単位は `$1~\mathrm{m/s}$` または `$a~[\mathrm{m/s}]$` 形式で表記されているか

### 数式

- [ ] 数式環境（`equation`）内の全ての変数・関数が本文中で説明されているか
- [ ] 数式は文から独立せず、文の一部として記述されているか（末尾に句読点がある等）
- [ ] 分数をかっこで括る場合に `\left(\frac{a}{b}\right)` が使われているか
- [ ] 連立方程式は `aligned` 環境を使っているか

### 図・画像

- [ ] グラフ等にはラスタ画像（PNG/JPG）ではなく**ベクタ画像（PDF/SVG）**が使われているか
- [ ] `\begin{figure}[t]` で上部配置が指定されているか
- [ ] `\includegraphics[width=\linewidth]{...}` で幅が揃えられているか
- [ ] キャプションは `\caption{...}` で付与され、`\label` が設定されているか

### 参考文献

- [ ] `\bibliographystyle{unsrt}` が使われているか
- [ ] `\bibliography{references}` で `references.bib` を参照しているか
- [ ] 引用形式が「著者ら\cite{key}は，〜した．」のような形式になっているか
- [ ] `references.bib` のエントリに `author`, `title`, `year` が含まれているか
- [ ] Web 参照には `note` フィールドにアクセス日時（`Accessed on YYYY-MM-DD`）が記載されているか
