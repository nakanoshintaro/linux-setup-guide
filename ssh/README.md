# SSH セットアップガイド

UbuntuでSSHサーバーを構築し、他のPC（Ubuntu/Windows）から安全に接続できるようにするためのガイド・スクリプト・資料をまとめています。

---

## 📄 内容一覧

| ディレクトリ/ファイル                  | 内容                   |
| ---------------------------- | -------------------- |
| [docs/](./docs/)                | 導入手順などのドキュメント         |
| ├─ [ssh_client_connect.md](./docs/ssh_client_connect.md) | 別のPCからの接続方法案内            |
| └─ [ssh_servser_setup.md](./docs/ssh_server_setup.md)       | SSHサーバーのインストールとセットアップ |
| [scripts/](./scripts/)                       | インストール用スクリプト            |
| └─ [setup_ssh.sh](./scripts/setup_ssh.sh)    | ssh自動インストール用スクリプト      |
| [images/](./images/)                       | 画像一覧    |
| README.md                            | この案内ファイル（sshディレクトリの使い方）

#### 📂 ディレクトリ構造

<details>
<summary>クリックで表示</summary>

```plaintext
./
├── README.md
├── docs/
│   ├── ssh_client_connect.md
│   └── ssh_server_setup.md
├── images/
└── scripts/
    └── ssh_setup.sh
```

</details>

---

## 🚀 クイックスタート

1. [ssh_setup.sh](./scripts/ssh_setup.sh) を実行して自動セットアップ

    ```bash
    bash ~/linux-setup-guide/ssh/scripts/ssh_setup.sh
    ```

2. 詳しい手順は [ssh_server_setup.md](./docs/ssh_server_setup.md)を参照

3. [ssh_client_connect.md](./docs/ssh_client_connect.md)を参照して、別のPCから接続テストを行う

---

## 📚 関連リンク

- [Ubuntu公式SSHガイド](https://help.ubuntu.com/community/SSH)
- [PuTTY公式](https://www.chiark.greenend.org.uk/~sgtatham/putty/)
