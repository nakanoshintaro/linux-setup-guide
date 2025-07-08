#!/bin/bash

# Google Chrome install script for Ubuntu

set -e

echo "🔑 Google GPGキーを追加中..."
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/google.gpg

echo "📦 APTリポジトリを追加中..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list

echo "🔄 パッケージリストを更新..."
sudo apt update

echo "🧩 Google Chrome をインストール中..."
sudo apt install -y google-chrome-stable

echo "✅ Google Chrome のインストールが完了しました。"
