#!/bin/bash

# install_code.sh
# Ubuntu 用 VSCode インストールスクリプト

set -e

echo "🔑 Microsoft GPG キーを追加中..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/packages.microsoft.gpg
rm packages.microsoft.gpg

echo "📝 APT ソースを追加中..."
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

echo "📦 VSCode をインストール中..."
sudo apt update
sudo apt install -y code

echo "✅ VSCode のインストールが完了しました！"
