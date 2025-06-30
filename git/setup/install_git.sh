#!/bin/bash

set -e

echo "🐙 Git をインストール中..."
sudo apt update
sudo apt install -y git

echo "🛠 Git のユーザー設定を行います..."
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
git config --global color.ui auto
git config --global core.editor "code --wait"
git config --global init.defaultBranch main

echo "✅ Git のインストールと設定が完了しました。"
