#!/bin/bash
set -e

echo "📝 .bashrc のバックアップを作成します..."
cp ~/.bashrc ~/.bashrc.bak
echo "✅ バックアップ ~/.bashrc.bak を作成しました"

echo "📝 alias_list.sh をホームディレクトリにコピーします..."
cp ~/linux-setup-guide/common/scripts/alias_list.sh ~/.alias_list.sh
echo "✅ ~/.alias_list.sh を作成しました"

# 読み込み記述がすでにあるか確認
if ! grep -q 'source ~/.alias_list.sh' ~/.bashrc; then
    echo "" >> ~/.bashrc
    echo "if [ -f ~/.alias_list.sh ]; then" >> ~/.bashrc
    echo "    source ~/.alias_list.sh" >> ~/.bashrc
    echo "fi" >> ~/.bashrc
    echo "✅ ~/.bashrc に追記しました"
else
    echo "⚠️ すでに ~/.bashrc に記述があります。スキップします。"
fi

echo "✅ 完了！次回のシェル起動から有効になります。"

read -p "今すぐ反映しますか？ [y/N]: " yn
if [[ "$yn" == "y" || "$yn" == "Y" ]]; then
    source ~/.bashrc
    echo "✅ .bashrc の内容を即時反映しました"
else
    echo "手動で 'source ~/.bashrc' を実行してください。"
fi