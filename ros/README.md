# ROS セットアップガイド（ros/README.md）

このディレクトリは、以下の ROS バージョンごとのセットアップ手順とスクリプトをまとめたものです：

- ROS Noetic（Ubuntu 20.04 用）
- ROS 2 Humble（Ubuntu 22.04 用）
- ROS 2 Jazzy（Ubuntu 24.04 用）

それぞれのサブディレクトリにインストール手順・スクリプト・設定ファイルが格納されています。

---

## 📁 ディレクトリ構成

| ディレクトリ | 対応バージョン | 内容 |
|--------------|----------------|------|
| `noetic/`    | ROS 1 Noetic   | Ubuntu 20.04 向け ROS 1 |
| `humble/`    | ROS 2 Humble   | Ubuntu 22.04 向け ROS 2 |
| `jazzy/`     | ROS 2 Jazzy    | Ubuntu 24.04 向け ROS 2（最新） |

---

## 🚀 推奨の使い方

1. 自分の Ubuntu バージョンに合ったディレクトリに移動します。
2. `install_ros.sh` を実行することで、対応する ROS を自動でインストールできます。
3. 詳細手順や構成の確認は `ros_setup.md` を参照してください。

```bash
cd ros/humble
bash install_ros.sh
```

---

## 🔧 免責事項

- 各スクリプトは Ubuntu クリーン環境を前提に構成されています。
- 依存関係やリポジトリの状態により一部変更が必要な場合があります。

---
