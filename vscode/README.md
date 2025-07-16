# VSCode セットアップガイド

このディレクトリは、Ubuntu 環境における Visual Studio Code（VSCode）の初期セットアップを効率化するためのスクリプトや設定ファイルをまとめている。
Python 環境に特化した拡張機能の導入が含まれている。

---

## 📄 内容一覧

| ディレクトリ/ファイル                  | 内容                   |
| ---------------------------- | -------------------- |
| [docs/](./docs/)                | 導入手順などのドキュメント         |
| ├─ [code_setup.md](./docs/code_setup.md)       | おすすめ拡張機能まとめ |
| ├─ [extensions.list](./docs/extensions.list)       | 拡張機能リスト |
| ├─ [extensions.md](./docs/extensions.md)       | 拡張機能ガイド |
| ├─ [setting.md](./docs/setting.md)       | 設定ガイド |
| └─ [setting_json_example.json](./docs/setting_json_example.json)       | VSCode用 設定例（settings.json） |
| [scripts/](./scripts/)                       | インストール用スクリプト            |
| └─ [install_code.sh](./scripts/install_code.sh)    | Linux用VScode自動インストール      |
| └─ [setup_extensions.sh](./scripts/setup_extensions.sh)    | Linux用VScode自動インストール      |
| [images/](./images/)                       | 画像一覧    |
| README.md                            | この案内ファイル（vscodeディレクトリの使い方）

### 📂 ディレクトリ構造

<details>
<summary>クリックで表示</summary>

```plaintext
./
├── README.md
├── docs/
│   ├── code_setup.md
│   ├── extensions.list
│   ├── extensions.md
│   ├── setting.md
│   ├── setting_json_example.json
├── images/
└── scripts/
    ├── install_code.sh
    └── setup_extensions.sh
```

</details>

---

## 🚀 クイックスタート

1. **VSCodeのインストール**

    ```bash
    bash ~/linux-setup-guide/vscode/scripts/install_code.sh
    ```

   - この方法では VSCode が自動更新対象となる。
   - 手順の詳細や別のインストール方法は [code_setup.md](./docs/code_setup.md) を参照。

    **🏷️ VSCode のバージョン確認コマンド**

    ```bash
    code --version
    ```

2. **拡張機能のインストール**  
    VSCodeに拡張機能を追加する。  
    私が入れている拡張機能を一括インストールするには以下のコマンドを実行
    ```bash
    bash ~/linux-setup-guide/vscode/scripts/setup_extensions.sh
    ```

    > [extensions.md](./docs/extensions.md) を参照。

3. **設定ファイルの編集**  
    その他、細かな設定を `setting.json` というファイルに記述する。
    > [setting.md](./docs/setting.md) を参照

---

## 🚦 起動方法

ターミナルから次のコマンドでVSCodeを起動できます。

```bash
code
```
または、アプリケーション一覧から `Visual Studio Code` を選択。

---


## 📚 関連リンク

- [Visual Studio Code 公式ページ](https://code.visualstudio.com/)
- [VSCode ドキュメント（日本語）](https://code.visualstudio.com/docs?lang=ja)
- [VSCode Marketplace（拡張機能一覧）](https://marketplace.visualstudio.com/vscode)


