#!/bin/bash

# install_base.sh
# 基本的なパッケージのインストールスクリプト

set -e  # エラー時に即終了

echo "✅ 開始: 基本パッケージのインストール"

sudo apt update && sudo apt upgrade -y

echo "📦 開発用パッケージをインストール中..."
sudo apt install -y \
    build-essential \
    git \
    curl \
    wget \
    unzip \
    zip \
    lsb-release

echo "🧰 ユーティリティ系パッケージをインストール中..."
sudo apt install -y \
    htop \
    net-tools \
    neofetch \
    tree \
    terminator \
    jq \
    vim \
    gedit \
    gedit-plugins \
    gnome-tweaks


echo "🌐 日本語環境関連のパッケージをインストール中..."
sudo apt install -y \
    language-pack-ja \
    ibus-mozc \
    fonts-noto-cjk

echo "🛡 ネットワーク・セキュリティ関連のパッケージをインストール中..."
sudo apt install -y \
    ufw \
    openssh-server


echo "🌍 ロケールの設定を ja_JP.UTF-8 に変更"
sudo update-locale LANG=ja_JP.UTF-8

echo "📁 ディレクトリ名を英語に変更"
LANG=C xdg-user-dirs-update --force

echo "🚀 完了: ベース環境が整いました！"

echo ""
echo "🌀 スクリプト実行完了。30秒後に自動的に再起動します..."
sleep 30
sudo reboot
