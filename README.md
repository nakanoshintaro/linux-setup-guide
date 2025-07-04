# 🐧 Linux Setup Guide

Linux環境のセットアップを効率的かつ再現可能に行うためのガイド・スクリプト・設定ファイルをまとめたものです。
インストール直後に行う初期設定を体系的にまとめています。

---

## 📌 対象環境

- OS: Ubuntu 22.04 / Linux Mint 21.x など Debian系
- ユーザー: sudo 権限を持つユーザー
- 想定用途: 開発環境 / NAS構築 / ROSインストール など

---

## 📁 ディレクトリ一覧

| ディレクトリ          | 内容・役割                                               |
|-----------------------|--------------------------------------------------------|
| [common/](./common/)         | よく使うエイリアス・共通スクリプト・初期セットアップ         |
| [git/](./git/)               | Gitの導入・運用ノウハウ・設定例                           |
| [code/](./code/)             | VSCodeなどのエディタ設定・拡張機能まとめ                   |
| [python/](./python/)         | Python開発・環境構築・パッケージ管理ノウハウ                |
| [ros/](./ros/)               | ROSのセットアップ                  |
| [nas/](./nas/)               | NAS構築・活用法                |
| [ssh/](./ssh/)               | SSH設定                       |
| [google_chrome/](./google_chrome/) | Chromeのセットアップ                          |
| [fun_and_tools/](./fun_and_tools/) | 遊び心のあるツール・便利コマンド                     |
| [docs/](./docs/)             | 図や設計資料など                                         |

---

## 🚀 はじめに

Linuxのインストールが完了したら初めにパッケージを最新にしましょう

```bash
sudo apt update && sudo apt upgrade -y
```

---

## 🗂️ 推奨の使い方

1. **git** がインストールされていない場合はインストール

```bash
sudo apt update && sudo apt install git -y
```
2. リポジトリをクローン

```bash
git clone https://github.com/nakanoshintaro/linux-setup-guide.git
```
3. 共通設定の確認 ➞ [common](./common/)
4. 必要なカテゴリに移動してREADMEを確認

## 👤 対象ユーザー

- 新しくLinuxをインストールしたばかりの方
- NAS/ROS/VSCodeなどの開発環境を効率よく構築したい方
- 毎回のセットアップ手順を再利用・自動化したい方

## 📜 ライセンス
[MIT License](./LICENSE)
自由にご利用ください