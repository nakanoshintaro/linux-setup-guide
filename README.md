# 🐧 Linux Setup Guide

Linux環境のセットアップを効率的かつ再現可能に行うためのガイド・スクリプト・設定ファイルをまとめたものです。
インストール直後に行う初期設定を体系的にまとめています。

---

## 📌 対象環境

- OS: Ubuntu 22.04 / Linux Mint 21.x など Debian系
- ユーザー: sudo 権限を持つユーザー
- 想定用途: 開発環境 / NAS構築 / ROSインストール など

---

## 📚セットアップ一覧

- 🧰 [`基本パッケージのインストール`](./common/)<br>
  よく使う alias・bashrc 例・基本パッケージ・言語設定スクリプトをまとめています。
- 📦 [`NAS（ネットワークストレージ）構築手順`](./nas/)<br>
  Ubuntu 上での NAS（ファイルサーバ）構築手順や設定ファイル例を記載しています。
- 🤖 [`VSCodeのインストールと拡張機能設定`](./vscode/)<br>
  VSCode のインストール方法、拡張機能のセットアップ、`settings.json` の例などを収録しています。
- [`Python関連の設定`](./python/)<br>
  Python の仮想環境やpipの設定について書かれています。
- [`Google Chrome インストール手順`](./google_chrome/)<br>
  Google Chrome の設定を記述しています。
- 🛠 [`ROS, ROS2 インストール手順`](./ros/)<br>
  ROS 2 Humble のインストールスクリプトや設定例を収録。研究・開発で ROS を使う方向けです。
- 📄 [`docs`](./docs/)<br>
  画像など補足的な資料の格納場所です（他ディレクトリから参照されます）。

---

## 🚀 はじめに

まずはパッケージを最新にしましょう。パスワードが求められます。

```bash
sudo apt update && sudo apt upgrade -y
```

---

## 🗂️ 推奨の使い方

1. **共通設定**の確認 → [common](./common/)
2. **必要なカテゴリ**に移動してREADMEを読む
3. 以下のコマンドでリポジトリをクローンし、スクリプトを実行する or 設定ファイルを参考にする

```bash
git clone https://github.com/nakanoshintaro/linux-setup-guide.git
```

## 👤 対象ユーザー

- 新しくLinuxをインストールしたばかりの方
- NAS/ROS/VSCodeなどの開発環境を効率よく構築したい方
- 毎回のセットアップ手順を再利用・自動化したい方

## 📜 ライセンス
[MIT License](./LICENSE)