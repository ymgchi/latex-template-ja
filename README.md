# LaTeXレポートテンプレート

大学のレポート作成用LaTeXテンプレートです。Dockerを使用するため、ローカル環境にLaTeXをインストールする必要がありません。

## 特徴

- Dockerベースで環境構築不要
- リアルタイムプレビュー対応
- 大学レポートに最適な構成
- ページ番号は「1/5」形式
- 図表の正しい配置
- 参考文献の引用形式対応

## 必要環境

- Docker 18.06以降
- Ubuntu 18.04 LTS以降 / macOS 10.14以降 / Windows 10以降

## ドキュメント

- [セットアップ手順](docs/setup.md)
- [使い方](docs/usage.md)
- [テンプレート構造](docs/template.md)
- [コミットルール](docs/commit-rules.md)

## クイックスタート

```bash
git clone https://github.com/your-username/latex-template-ja.git
cd latex-template-ja
make live
```

PDFファイル名を入力後、`sections/title.tex`と`sections/main_issue.tex`を編集してください。
保存すると自動でPDFが更新されます。

## ライセンス

MIT License

## 元テンプレート

このテンプレートは [being24/latex-template-ja](https://github.com/being24/latex-template-ja) をベースに、レポート作成用にカスタマイズしたものです。
