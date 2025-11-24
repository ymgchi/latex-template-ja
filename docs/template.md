# テンプレート構造

## ディレクトリ構成

```
latex-template-ja/
├─ README.md              # プロジェクト概要
├─ Makefile               # ビルドコマンド
├─ main.tex               # メインファイル
├─ sections/              # 各セクションのTeX
│   ├─ title.tex          # タイトルページ
│   ├─ main_issue.tex     # レポート本文
│   └─ references.tex     # 参考文献
├─ classes/               # カスタムクラスファイル
│   └─ report.cls         # レポート用クラス
├─ figures/               # 図を格納
├─ bin/                   # スクリプト
│   └─ live_preview.sh    # リアルタイムプレビュー
└─ docs/                  # ドキュメント
```

## レポート構成

### sections/title.tex

タイトルページには以下の情報を記入します：

- 再提出表記（必要時）
- レポートタイトル
- 科目名
- 提出日
- 学籍番号
- 氏名
- 学科

### sections/main_issue.tex

レポート本文の構成：

1. **目的** - 実験・演習の目的
2. **方法** - 使用機器・環境、手順
3. **結果** - 得られた結果（図表活用）
4. **考察** - 結果に対する科学的考察
5. **まとめ** - 全体のまとめ

### 図表の扱い

#### 図（Figure）
- タイトルは**下部**に配置
- `\caption{図のタイトル}`
- 本文中では `Fig.~\ref{fig:label}` で参照

#### 表（Table）
- タイトルは**上部**に配置
- `\caption{表のタイトル}`
- 本文中では `Table~\ref{tab:label}` で参照

#### 数式（Equation）
- `\label{eq:label}` でラベル付け
- 本文中では `Eq.~\ref{eq:label}` で参照

### ページ番号

右下に「1/5」形式で表示されます（現在のページ/全体ページ数）。

## カスタマイズ

### フォントサイズの変更

`classes/report.cls` の以下の行を編集：

```latex
fontsize=11pt,
```

### 余白の変更

`classes/report.cls` の以下の行を編集：

```latex
head_space=30mm,    % 上余白
foot_space=30mm,    % 下余白
gutter=25mm,        % 左余白
fore-edge=25mm,     # 右余白
```

### 行間の変更

`classes/report.cls` の以下の行を編集：

```latex
linegap=1zw,        # 行間
```

## 参考文献の追加

`references.bib` に以下の形式で追加：

```bibtex
@article{ref:sample2023,
  title   = {論文タイトル},
  author  = {著者名},
  journal = {ジャーナル名},
  year    = {2023}
}
```

本文中では `\cite{ref:sample2023}` で引用します。
