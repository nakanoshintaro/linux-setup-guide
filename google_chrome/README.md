# Google Chrome セットアップガイド

Linux 環境への Google Chrome のインストール手順です。

---
## 📄 内容一覧

| ディレクトリ/ファイル                  | 内容                   |
| ---------------------------- | -------------------- |
| [docs/](./docs/)                | 導入手順などのドキュメント         |
| └─ [chrome_setup.md](./docs/chrome_setup.md)       | おすすめ拡張機能まとめ |
| [scripts/](./scripts/)                       | インストール用スクリプト            |
| └─ [install_chrome.sh](./scripts/install_chrome.sh)    | Linux用Chrome自動インストール      |
| [images/](./images/)                       | 画像一覧    |
| README.md                            | この案内ファイル（google_chromeディレクトリの使い方）

#### 📂 ディレクトリ構造

<details>
<summary>クリックで表示</summary>

```plaintext
./
├── README.md
├── docs/
│   └── chrome_setup.md
├── images/
└── scripts/
    └── install_chrome.sh
```

</details>

---

## 🚀 インストール方法（APT経由）

Google 公式リポジトリを登録し、APTから最新版を取得してインストールします。
下記スクリプトを実行すると、自動でChromeがインストールされます。

```bash
bash ~/linux-setup-guide/google_chrome/scripts/install_chrome.sh
```

- この方法では Chrome が自動更新対象となります。
- 詳細な手順や別のインストール方法は [chrome_setup.md](./docs/chrome_setup.md) を参照してください。

---

## 🚦 起動方法

ターミナルから次のコマンドでGoogle Chromeを起動できます。

```
google-chrome
```

---


## 📚 関連リンク

- [Google Chrome公式ページ](https://www.google.com/chrome/)
- [Chromeヘルプセンター](https://support.google.com/chrome)
