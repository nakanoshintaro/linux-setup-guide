#!/bin/bash

# Google Chromeをインストールするスクリプト

set -e

echo "=== Google Chrome インストール開始 ==="

# すでにインストールされている場合はスキップ
if command -v google-chrome >/dev/null 2>&1; then
    echo "✅ Google Chromeはすでにインストールされています。"
    google-chrome --version
    exit 0
fi

sudo apt update
sudo apt install -y curl wget gnupg

KEYRING=/usr/share/keyrings/googlechrom-keyring.gpg
SOURCES=/etc/apt/sources.list.d/google-chrome.list

if [ ! -f "$KEYRING" ]; then
    echo "🔑 Google Chrome GPG鍵を追加します..."
    curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o "$KEYRING"
else
    echo "🔑 GPG鍵はすでに登録済みです"
fi

if ! grep -q "dl.google.com/linux/chrome/deb" "$SOURCES" 2>/dev/null; then
    echo "📦 APTリポジトリを追加します..."
    echo "deb [arch=amd64 signed-by=$KEYRING] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee "$SOURCES"
else
    echo "📦 APTリポジトリはすでに登録済みです"
fi


echo "🔄 パッケージリストを更新..."
sudo apt update

echo "🧩 Google Chrome をインストール中..."
sudo apt install -y google-chrome-stable

echo "✅ Google Chromeのインストールが完了しました"
google-chrome --version