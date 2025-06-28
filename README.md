# Ubuntu 初期セットアップマニュアル

このリポジトリでは、Ubuntuインストール直後に行う初期設定を体系的にまとめています。再インストールや複数マシンの構築時にご活用ください。

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

