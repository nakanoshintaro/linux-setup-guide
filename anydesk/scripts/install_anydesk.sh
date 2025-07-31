#!/bin/bash
set -e

echo "=== AnyDesk インストール開始 ==="

# すでにインストール済みならスキップ
if command -v anydesk >/dev/null 2>&1; then
    echo "✅ AnyDeskはすでにインストールされています。"
    anydesk --version
    exit 0
fi

# 必要なパッケージをインストール
sudo apt update
sudo apt install -y ca-certificates curl apt-transport-https

# GPGキーとリポジトリ登録
KEYRING=/etc/apt/keyrings/keys.anydesk.com.asc
SOURCES=/etc/apt/sources.list.d/anydesk-stable.list
sudo install -m 0755 -d /etc/apt/keyrings

if [ ! -f "$KEYRING" ]; then
    echo "🔑 GPG鍵を登録します..."
    sudo curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY -o "$KEYRING"
    sudo chmod a+r "$KEYRING"
else
    echo "🔑 GPG鍵はすでに登録済みです"
fi

if [ ! -f "$SOURCES" ]; then
    echo "📝 リポジトリを追加します..."
    echo "deb [signed-by="$KEYRING"] https://deb.anydesk.com all main" | sudo tee "$SOURCES" > /dev/null
else
    echo "📝 リポジトリはすでに登録済みです"
fi

echo "🔄 パッケージリストを更新..."
sudo apt update

echo "🧩 AnyDesk をインストール中..."
sudo apt install -y anydesk

echo "✅ AnyDeskのインストールが完了しました。"
anydesk --version
