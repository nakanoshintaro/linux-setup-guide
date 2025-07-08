# 共通セットアップ(common)

Linux環境を整える上で最初に行う「共通の初期設定」をまとめたものです。
全カテゴリ共通で使える初期設定・エイリアス・便利スクリプト・環境構築TIPSをまとめています。

---

## 📄 内容一覧

| ファイル / ディレクトリ               | 概要・用途                                                 |
|--------------------------------------|------------------------------------------------------------|
| [docs/](./docs/)                     | 共通設定・パッケージ導入手順などのドキュメント   |
| ├─ [alias_list.md](./docs/alias_list.md)       | よく使うエイリアスの一覧と解説                       |
| ├─ [basic_packages.md](./docs/basic_packages.md) | 推奨パッケージや必須ツールのインストール案内            |
| └─ [language_setup.md](./docs/language_setup.md) | 日本語・他言語対応やロケール設定手順                     |
| [scripts/](./scripts/)               | 各種セットアップ・自動化スクリプト                         |
| ├─ [alias_list.sh](./scripts/alias_list.sh)     | エイリアスを設定するシェルスクリプト                     |
| ├─ [alias_setup.sh](./scripts/alias_setup.sh)   | エイリアスを恒久的に適用するセットアップスクリプト       |
| └─ [install_base.sh](./scripts/install_base.sh) | 基本パッケージ類をまとめてインストールするスクリプト     |
| [images/](./images/)                 | 画像一覧               |
| README.md                            | この案内ファイル（commonディレクトリの使い方）

#### 📂 ディレクトリ構成

<details>
<summary>クリックで表示</summary>

```plaintext
./
├── README.md
├── docs/
│   ├── alias_list.md
│   ├── basic_packages.md
│   └── language_setup.md
├── images/
└── scripts/
    ├── alias_list.sh
    ├── alias_setup.sh
    └── install_base.sh
```
</details>

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