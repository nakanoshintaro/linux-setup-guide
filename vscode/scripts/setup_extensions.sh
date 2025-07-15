#!/bin/bash
set -e

# このスクリプト自身のディレクトリを取得
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"
# プロジェクトのルートディレクトリを推定
EXTENSION_LIST="$(realpath "$SCRIPT_DIR/../docs/extensions.list")"

INSTALLED=$(code --list-extensions)


# VSCode (codeコマンド) が使えるか確認
if ! command -v code &> /dev/null; then
    echo "Error: 'code' command not found. Please install Visual Studio Code and ensure the 'code' command is available in your PATH."
    exit 1
fi

# 拡張リストファイルが存在するか確認
if [ ! -f "$EXTENSION_LIST" ]; then
    echo "Error: Extension list file not found: $EXTENSION_LIST"
    exit 1
fi

echo "🧩 拡張機能リスト（$EXTENSION_LIST）から一括インストールします..."

while IFS= read -r extension || [ -n "$extension" ]; do
    # 空行・コメント行はスキップ
    [[ "$extension" =~ ^\s*$ || "$extension" =~ ^# ]] && continue
    if echo "$INSTALLED" | grep -qx "$extension$"; then
        echo "✅ $extension はすでにインストール済みです。"
    else
        echo "🔽 $extension をインストールしています..."
        code --install-extension "$extension"|| {
        echo "⚠️ $extension のインストールに失敗しました。"
        }
    fi
done < "$EXTENSION_LIST"

echo "✅ 拡張機能のインストールが完了しました！"
