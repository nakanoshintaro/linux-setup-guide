#!/bin/bash
set -e

echo "📝 ~/.bashrc に読み込み設定を追加します..."

# 読み込み記述がすでにあるか確認
if ! grep -q 'source ~/.alias_list.sh' ~/.bashrc; then
    echo "" >> ~/.bashrc
    echo "# ✅ カスタムエイリアスの読み込み" >> ~/.bashrc
    echo "if [ -f ~/.alias_list.sh ]; then" >> ~/.bashrc
    echo "    source ~/.alias_list.sh" >> ~/.bashrc
    echo "fi" >> ~/.bashrc
    echo "✅ ~/.bashrc に追記しました"
else
    echo "⚠️ すでに ~/.bashrc に記述があります。スキップします。"
fi

echo "✅ 完了。次回のシェル起動から有効になります。今すぐ反映するには："
echo "    source ~/.bashrc"
