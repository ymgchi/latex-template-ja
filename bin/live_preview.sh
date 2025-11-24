#!/bin/bash

# LaTeX live preview script

# PDF名を入力
echo "=========================================="
echo "  LaTeX Live Preview"
echo "=========================================="
echo ""
read -p "PDFファイル名を入力 (拡張子不要、Enter=main): " pdf_name
echo ""

# デフォルト値設定
if [ -z "$pdf_name" ]; then
    pdf_name="main"
fi

# 最初のビルド
echo "初回ビルド中..."
make pdf > /dev/null 2>&1

# 指定名にコピー
cp main.pdf "${pdf_name}.pdf"

# PDFビューアーをバックグラウンドで起動
evince "${pdf_name}.pdf" &
EVINCE_PID=$!

echo "=========================================="
echo "  起動完了"
echo "=========================================="
echo ""
echo "PDFファイル名: ${pdf_name}.pdf"
echo ""
echo "TeXファイルを編集して保存すると"
echo "自動でPDFが更新されます"
echo ""
echo "終了するには Ctrl+C を押してください"
echo ""
echo "=========================================="

# クリーンアップ用のトラップ
trap "kill $EVINCE_PID 2>/dev/null; exit" INT TERM

# ファイル変更を監視して自動ビルド＋コピー
make watch > /dev/null 2>&1 &
MAKE_PID=$!

# watchの出力を監視してビルド完了時にコピー
while true; do
    # 少し待つ
    sleep 2

    # main.pdfが更新されていたらコピー
    if [ -f main.pdf ]; then
        cp main.pdf "${pdf_name}.pdf" 2>/dev/null
    fi
done

# 終了時にプロセスを終了
kill $EVINCE_PID 2>/dev/null
kill $MAKE_PID 2>/dev/null
