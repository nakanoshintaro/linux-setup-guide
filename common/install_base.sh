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
    vim


echo "🌐 日本語環境関連のパッケージをインストール中..."
sudo apt install -y \
    language-pack-ja \
    ibus-mozc \

echo "🌍 ロケールの設定を ja_JP.UTF-8 に変更"
sudo update-locale LANG=ja_JP.UTF-8

read -p "ホームディレクトリのフォルダ名を英語に変更しますか？ [y/N]: " en_dirs
if [[ "$en_dirs" == "y" || "$en_dirs" == "Y" ]]; then
    echo "📁 ディレクトリ名を英語に変更します"
    LANG=C xdg-user-dirs-gtk-update

    echo "⚠️ 画面上にダイアログが表示される場合は「Update Names」または「名前を更新」を選んでください"
    echo "📝 そのまま自動で英語化されない場合は、以下のコマンドを手動で実行してください："
    echo "    LANG=C xdg-user-dirs-update --force"
fi

echo "🚀 完了: ベース環境が整いました！"

echo ""
read -p "💡 セットアップが完了しました。今すぐ再起動しますか？ [y/N]: " reboot_choice
case "$reboot_choice" in
    [yY])
        echo "♻️ 再起動を実行します..."
        sleep 3
        sudo reboot
        ;;
    *)
        echo "✅ 再起動せずに終了します。手動で再起動してください。"
        ;;
esac