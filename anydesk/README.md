# AnyDesk セットアップガイド

リモートデスクトップツール「AnyDesk」をLinux (Ubuntu/Debian) 環境にセットアップする手順をまとめている。

---

## 📄 内容一覧

| ディレクトリ/ファイル                  | 内容                   |
| ---------------------------- | -------------------- |
| [docs/](./docs/)                | 導入手順などのドキュメント         |
| ├─ [ssh_password_auth.md](./docs/ssh_password_auth.md) | パスワード認証での接続方法案内            |
| └─ [ssh_pubkey_auth.md](./docs/ssh_pubkey_auth.md)       | 公開鍵認証での接続方法案内 |
| [scripts/](./scripts/)                       | インストール用スクリプト            |
| └─ [ssh_setup.sh](./scripts/ssh_setup.sh)    | ssh自動インストール用スクリプト      |
| [images/](./images/)                       | 画像一覧    |
| README.md                            | この案内ファイル（sshディレクトリの使い方）

#### 📂 ディレクトリ構造

<details>
<summary>クリックで表示</summary>

```plaintext
./
├── README.md
├── docs/
│   ├── ssh_password_auth.md
│   └── ssh_pubkey_auth.md
├── images/
└── scripts/
    └── ssh_setup.sh
```

</details>

---

## 🚀 インストール方法

[install_anydesk.sh](./scripts/install_anydesk.sh)を実行すると自動でインストールできる。

    ```bash
    bash ~/linux-setup-guide/ssh/scripts/install_anydesk.sh
    ```

- 手順の詳細や別のインストール方法は [anydesk_setup.md](./docs/anydesk_setup.md) を参照。

**anydeskのバージョン確認コマンド**

```bash
anydesk --version
```

---

## 🚦 起動方法

ターミナルから次のコマンドでAnyDeskを起動できます。

```
anydesk
```

または、アプリケーション一覧から `AnyDesk` を選択。

---

## 📚 関連リンク

- [AnyDesk公式サイト](https://anydesk.com/ja)
- [AnyDesk Linux版ダウンロードページ](https://anydesk.com/ja/downloads/linux)
