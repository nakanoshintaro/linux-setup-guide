# SSH セットアップガイド

UbuntuでSSHサーバーを構築し、他のPC（Ubuntu/Windows）から安全に接続できるようにするための資料・スクリプトをまとめています。
**パスワード認証方式**・**公開鍵認証方式**の両方に対応した手順を提供します。

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

## 🚀 クイックスタート

1. [ssh_setup.sh](./scripts/ssh_setup.sh) を実行して自動でサーバーのセットアップを行う

    ```bash
    bash ~/linux-setup-guide/ssh/scripts/ssh_setup.sh
    ```
2. **パスワード認証で使いたい場合**は [ssh_password_auth.md](./docs/ssh_password_auth.md) を参照

    > まずはこちらで簡易テストを行うと良い

3. **公開鍵認証で使いたい場合**は [ssh_pubkey_auth.md](./docs/ssh_pubkey_auth.md) を参照
    > より安全な方法を取りたい場合、パスワードの入力なしで接続したい場合はこちら

---

## 📚 関連リンク

- [Ubuntu公式SSHガイド](https://help.ubuntu.com/community/SSH)
