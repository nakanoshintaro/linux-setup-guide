# Google Chrome セットアップ

Google Chrome のインストール手順などをまとめています。

---

### インストール手順詳細
<!-- TODO bashファイルの説明-->

---

## Google Chrome 別インストール手順（公式debパッケージ利用 & ブラウザダウンロード）

### ① 公式debパッケージを使ったAPTインストール手順

Google公式が配布しているdebパッケージを利用して、APTの機能でインストールする方法です。

#### 手順

1. **パッケージの取得**

    ```bash
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    ```

2. **APTコマンドでインストール**

    ```bash
    sudo apt install -y ./google-chrome-stable_current_amd64.deb
    ```

3. **ダウンロードしたパッケージファイルを削除（任意）**

    ```bash
    rm ./google-chrome-stable_current_amd64.deb
    ```

### ② ブラウザから直接インストールする方法

Chromeの公式ウェブサイトからdebファイルを直接ダウンロードしてインストールする方法です。

#### 手順

1. **公式サイトにアクセス**

    [Google Chrome ダウンロードページ](https://www.google.com/chrome/)

2. **「Chromeをダウンロード」ボタンをクリックし、「64 ビット .deb (Debian/Ubuntu 用)」を選択してダウンロード**

3. **ダウンロードしたファイルをダブルクリックし、アプリセンター等でインストール**

    - または、ターミナルで下記コマンドを実行：

        ```bash
        cd Downloads/
        sudo apt install -y ./google-chrome-stable_current_amd64.deb
        ```



### 補足

- どちらの方法もGoogleのAPTリポジトリが自動追加され、今後はシステムのソフトウェア更新機能でChromeもアップデート可能になります。

---

## 🧩 推奨拡張機能

Google Chromeの拡張機能は [Chrome ウェブストア](https://chromewebstore.google.com/?utm_source=ext_app_menu) から手動で追加してください。

<!-- TODO 拡張機能調査 -->


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

## ⚙️ 起動オプション（例）

- フルスクリーン：`google-chrome-stable --start-fullscreen`
- 拡張機能無効：`--disable-extensions`
- 複数ユーザープロファイル：`--profile-directory="Profile 2"`

## 💡 補足・注意事項

**Googleアカウントによる同期を推奨**
  - 拡張機能やブックマークの共通管理のため、GoogleアカウントでChromeの同期を利用してください。
