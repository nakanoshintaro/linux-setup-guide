#!/bin/bash
set -e

# このスクリプト自身のディレクトリを取得
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# プロジェクトのルートディレクトリを推定
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
LIST_FILE="$ROOT_DIR/docs/extensions.list"

echo "🧩 拡張機能リスト（$LIST_FILE）から一括インストールします..."

while IFS= read -r EXT || [[ -n "$EXT" ]]; do
  [[ -z "$EXT" || "$EXT" == \#* ]] && continue
  echo "🔽 $EXT をインストールしています..."
  code --install-extension "$EXT" || {
    echo "⚠️ $EXT のインストールに失敗しました。"
  }
done < "$LIST_FILE"

echo "✅ 拡張機能のインストールが完了しました！"
