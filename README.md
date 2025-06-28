# 🐧 Linux Setup Guide

Linux環境を開発・サーバー用途で使いやすく構築するためのセットアップガイドです。
インストール直後に行う初期設定を体系的にまとめています。

---

## 📌 対象環境

- OS: Ubuntu 22.04 / Linux Mint 21.x など Debian系
- ユーザー: sudo 権限を持つユーザー
- 想定用途: 開発環境 / NAS構築 / ROSインストール など

---

## セットアップ一覧

- [基本パッケージのインストール](docs/basic_packages.md)
- [NAS（ネットワークストレージ）構築手順](docs/nas_setup.md)
- [VSCodeのインストールと拡張機能設定](docs/vscode_setup.md)
- [日本語入力・ロケールの設定](docs/language_setup.md)
- [ROS2 Humble インストール手順](docs/ros_installation.md)

## 推奨手順

```bash
sudo apt update && sudo apt upgrade -y
./scripts/install_packages.sh


## 🧭 セットアップ手順（概要）

```bash
# リポジトリをクローン
git clone https://github.com/your-username/linux-setup-guide.git
cd linux-setup-guide

# スクリプトを実行（例：開発環境）
bash scripts/setup_dev_env.sh
