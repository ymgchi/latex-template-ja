# コミットメッセージルール

コミットメッセージは以下のプレフィックスを使用してください：

## プレフィックス一覧

- **FEAT**: 新機能追加
- **TRIAL**: モデルの調整など、試行錯誤する必要があるコード変更
- **FIX**: バグ修正
- **DOCS**: ドキュメントのみの変更
- **STYLE**: フォーマットの変更、セミコロンの追加などコードの意味に影響しない変更
- **REFACTOR**: バグ修正や機能追加ではないコードの変更
- **PERF**: パフォーマンスを向上させるコード変更
- **TEST**: テストの追加や既存のテストの修正
- **CHORE**: ビルドプロセスや補助ツール、ライブラリの変更

## コミットメッセージの例

```bash
git commit -m "FEAT: add live preview feature"
git commit -m "FIX: resolve page numbering issue"
git commit -m "DOCS: update README structure"
git commit -m "REFACTOR: reorganize template files"
git commit -m "TRIAL: adjust LaTeX formatting parameters"
git commit -m "CHORE: update Docker image version"
```

## 注意事項

- プレフィックスは大文字で記述
- プレフィックスの後にコロン（:）とスペースを入れる
- メッセージ本文は英語を推奨（日本語も可）
- 簡潔に、何をしたかを明確に記述
