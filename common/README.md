# 共通セットアップ(common)

Linux環境を整える上で最初に行う「共通の初期設定」をまとめたものです。
全カテゴリ共通で使える初期設定・エイリアス・便利スクリプト・環境構築TIPSをまとめています。

---

## 📄 内容一覧

| ファイル/ディレクトリ                            | 概要・用途                                                                    |
|--------------------------------------------------|-------------------------------------------------------------------------------|
| [alias_list.md](./alias_list.md)                 | よく使うエイリアスの一覧と解説                            |
| [basic_packages.md](./basic_packages.md)         | 推奨・必須の基本パッケージやツールのインストール案内                          |
| [language_setup.md](./language_setup.md)         | 日本語や他言語への対応・ロケール設定手順                                      |
| [images/](./images/)                             | 設定やセットアップ手順などの参考画像をまとめています                          |
| [scripts/](./scripts/)                           | 各種スクリプトやセットアップ用シェルファイルを格納                            |
| ├─ [alias_list.sh](./scripts/alias_list.sh)     | aliasの設定スクリプト（手動or自動でエイリアスを反映）                         |
| ├─ [alias_setup.sh](./scripts/alias_setup.sh)   | エイリアスを恒久的に有効化するセットアップ用スクリプト                        |
| └─ [install_base.sh](./scripts/install_base.sh) | 基本的なパッケージ類をまとめてインストールするスクリプト                      |

---

## 🚀 推奨フロー

1. **エイリアスを設定する**
    まず、ターミナル作業を効率化するためのエイリアスを設定しましょう。

    ```bash
    bash ~/linux-setup-guide/common/scripts/alias_setup.sh
    ```

    詳細やカスタマイズ方法は [alias_list.md](./alias_list.md) を参照してください。

2. **基本パッケージのインストール**

    必要なツールや開発パッケージをまとめて導入できます。

    ```bash
    bash ~/linux-setup-guide/common/scripts/install_base.sh
    ```

    パッケージの詳細は [basic_packages.md](basic_packages.md) を参照してください。

1. **言語設定の確認**
    多言語環境や日本語入力が必要な場合は[language_setup.md](./  language_setup.md)を参照し、ロケール設定を行ってください。


---

## 🛠 .bashrc 反映方法

`.bashrc` を編集した後は、以下で設定を即座に反映できます。

```bash
source ~/.bashrc
```

---

## 💡 補足・注意事項

- スクリプト実行時に権限エラーが出る場合は、`chmod +x スクリプト名` で実行権限を付与してください。
- スクリプトによっては root 権限が必要です。`sudo` をつけて実行してください。