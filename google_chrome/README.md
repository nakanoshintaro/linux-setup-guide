# Google Chrome セットアップガイド（chrome/README.md）

このディレクトリでは、Ubuntu 環境への Google Chrome のインストール手順および、開発・作業効率向上のための拡張機能・設定ガイドを提供します。

---

## 🚀 インストール方法（APT経由）

Google 公式リポジトリを登録し、APTから最新版を取得してインストールします。

```bash
bash install_chrome.sh
```

この方法では Chrome が自動更新対象となります。

---

## 🧩 推奨拡張機能と設定

- 広告ブロック：`uBlock Origin`
- ダークモード：`Dark Reader`
- 開発ツール：`React Developer Tools`, `Web Vitals`
- プライバシー保護：`Privacy Badger`, `ClearURLs`
- その他：`Tab Manager`, `Session Buddy`, `Bitwarden`

詳細は [`chrome_extensions.md`](./chrome_extensions.md) を参照してください。

---

## 📸 スクリーンショット例（images/）

| ファイル名 | 説明 |
|------------|------|
| `chrome_install_success.png` | APT による Chrome のインストール成功 |
| `chrome_about.png` | Chrome のバージョン表示画面 |
| `chrome_extensions_view.png` | 拡張機能の有効化状態 |
| `chrome_settings_search.png` | 「既定のブラウザ」など設定変更画面 |
