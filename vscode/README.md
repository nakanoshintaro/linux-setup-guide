# VSCode セットアップガイド（vscode/README.md）

このディレクトリは、Ubuntu 環境における Visual Studio Code（VSCode）のインストールおよび基本的な設定を支援するためのガイド・スクリプト・設定例をまとめたものです。

ROS や Python 開発、C++ プログラミングなどに必要な拡張機能の導入や、ユーザー設定例も含まれています。

---

## 📁 ディレクトリ構成

| ファイル / フォルダ | 説明 |
|----------------------|------|
| `install_code.sh` | VSCode をAPT経由で自動インストールするスクリプト |
| `setting_json_example.json` | VSCodeのユーザー設定ファイルの例 |
| `sources_vscode.list` | APT による VSCode リポジトリ登録用ソース例 |
| `images/` | インストール手順や設定画面のスクリーンショットなど |

---

## 🚀 クイックスタート

1. Microsoftのリポジトリを登録
2. VSCodeをAPT経由でインストール

以下のスクリプトを実行してください：

```bash
cd vscode
bash install_code.sh
```

---

## ⚙️ 設定の適用方法

設定ファイル `setting_json_example.json` は以下のディレクトリに配置してください：

```bash
~/.config/Code/User/settings.json
```

VSCode を再起動すると設定が反映されます。

---

## 💻 推奨拡張機能（拡張子）

- `ms-python.python`：Python 開発用
- `ms-vscode.cpptools`：C/C++ サポート
- `ms-ros.ros`：ROS 1/2 用拡張
- `eamodio.gitlens`：Git 連携強化
- `esbenp.prettier-vscode`：コード整形

---

## 📷 スクリーンショット例（images/）

| ファイル名 | 説明 |
|------------|------|
| `vscode_install_done.png` | インストール完了画面 |
| `vscode_extensions_view.png` | 拡張機能の追加画面 |
| `vscode_ros_workspace.png` | ROS ワークスペースの編集例 |
| `vscode_settings_json.png` | 設定ファイルを開いた様子 |

---

## 📎 補足

- Ubuntu 22.04以上では Snap 版ではなく APT 版の利用を推奨しています。
- 拡張機能は `code --install-extension <ID>` でCLIからも導入可能です。
