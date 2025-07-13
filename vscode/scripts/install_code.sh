#!/bin/bash

# install_code.sh
# Ubuntu 用 VSCode インストールスクリプト

set -e

echo "🔄 パッケージ情報を更新します"
sudo apt update

echo "🔍 wgetとgpgをインストールします..."
sudo apt-get install -y wget gpg

echo "🔑 Microsoft GPGキーをダウンロードして登録します..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg

echo "📝 VSCodeのリポジトリ情報を追加します..."
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

rm -f packages.microsoft.gpg

echo "📦 apt-transport-httpsをインストールします..."
sudo apt install -y apt-transport-https

echo "🔄 パッケージリストを更新します..."
sudo apt update

echo "💻 VSCodeをインストールします..."
sudo apt install -y code # または code-insiders

echo "✅ VSCodeのインストールが完了しました！"
echo "🚀 ターミナルで 'code' と入力するとVSCodeが起動します。"