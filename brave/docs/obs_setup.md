# Google Chrome セットアップ

Google Chrome のインストール手順などをまとめています。

---

## Google Chrome インストール手順

４種類のインストール方法を記述するが、**方法１と方法２は内部で同じ処理が行われる**。

### 方法１：本リポジトリのシェルスクリプトを利用する方法

全自動でインストールするには、下記スクリプトを実行します。

```bash
bash ~/linux-setup-guide/google_chrome/scripts/install_chrome.sh
```
### 方法２：コマンドを手作業で実行する方法

1. パッケージ情報を更新
    ```bash
    sudo apt update
    ```

2. wgetとgpgをインストール
    ```bash
    sudo apt install -y curl wget gnupg
    ```

3. APTリポジトリ情報を追加
    ```bash
    curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/googlechrom-keyring.gpg
    ```

4. GPG署名鍵を取得
    ```bash
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/googlechrom-keyring.gpg] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
    ```

5. パッケージ情報を更新
    ```bash
    sudo apt update
    ```

6. Google Chrome をインストール
    ```bash
    sudo apt install -y google-chrome-stable
    ```

### 方法３：公式debパッケージを使う方法

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
