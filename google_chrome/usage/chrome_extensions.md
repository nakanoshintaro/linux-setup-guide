# Google Chrome 拡張機能とおすすめ設定（chrome_extensions.md）

このドキュメントでは、Google Chrome 上での開発やセキュリティ対策に役立つ拡張機能を紹介します。

---

## 🧩 推奨拡張機能

| 名前 | 説明 |
|------|------|
| uBlock Origin | 高性能な広告・トラッカー遮断ツール |
| Dark Reader | サイト全体をダークモードで表示 |
| React Developer Tools | React ベースのアプリをデバッグ |
| Web Vitals | LCP/FID/CLS を視覚化して表示 |
| Bitwarden | オープンソースのパスワード管理 |
| Tab Manager Plus | タブの整理・検索が可能 |
| Session Buddy | 開いていたタブの保存と復元 |
| ClearURLs | 不要なトラッキングパラメータを除去 |
| Privacy Badger | トラッキング防止 AI |

---

## 🔐 セキュリティとプライバシーの初期設定

1. [設定] → [プライバシーとセキュリティ] → トラッキング防止を有効化
2. Cookie とサイトデータを「終了時に削除」
3. 拡張機能のアクセス権を「クリック時のみ」に制限

---

## ⚙️ 起動オプション（例）

- フルスクリーン：`google-chrome-stable --start-fullscreen`
- 拡張機能無効：`--disable-extensions`
- 複数ユーザープロファイル：`--profile-directory="Profile 2"`
