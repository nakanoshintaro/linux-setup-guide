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
    lsb-release \
    gedit \
    gedit-plugins

echo "🧰 ユーティリティ系パッケージをインストール中..."
sudo apt install -y \
    htop \
    net-tools \
    neofetch \
    tree \
    terminator \
    jq \
    vim \
    

echo "🌐 日本語環境関連のパッケージをインストール中..."
sudo apt install -y \
    language-pack-ja \
    ibus-mozc \

echo "🌍 ロケールの設定を ja_JP.UTF-8 に変更"
sudo update-locale LANG=ja_JP.UTF-8

echo "🚀 完了: ベース環境が整いました！"

echo "✅ 必要であればログアウト後に再ログインしてください"
