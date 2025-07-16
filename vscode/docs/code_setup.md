# VSCode セットアップの流れ

Linux環境における Visual Studio Code（VSCode） のインストールから初期セットアップまでの全体像をまとめます。

---

## 1️⃣ インストール

３種類のインストール方法を記述するが、①と②は内部で同じ処理が行われる。

### ① 本リポジトリのシェルスクリプトを利用する方法

全自動でインストールするには、下記スクリプトを実行します。

```bash
bash ~/linux-setup-guide/vscode/scripts/install_code.sh
```

スクリプトの内容は [install_code.sh](../scripts/install_code.sh) を参照

### ② コマンドを手作業で実行する方法

[VSCode 公式サイト](https://code.visualstudio.com/docs/setup/linux#_install-vs-code-on-linux) の `Install VS Code on Linux` に記載されている内容に沿って手動インストールを行う。

1. パッケージ情報を更新
    ```bash
    sudo apt update
    ```

2. wgetとgpgをインストール
    ```bash
    sudo apt install -y wget gpg
    ```

3. Microsoft GPGキーをダウンロード
    ```bash
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    ```

4. GPGキーを登録
    ```bash
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    ```

5. VSCodeのリポジトリ情報を追加
    ```bash
    echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
    ```

6. 不要なGPGファイルを削除
    ```bash
    rm -f packages.microsoft.gpg
    ```

7. apt-transport-httpsをインストール
    ```bash
    sudo apt install apt-transport-https
    ```

8. パッケージ情報を更新
    ```bash
    sudo apt update
    ```

9. codeのインストール
    ```bash
    sudo apt install -y code
    ```

### ③ ブラウザから直接インストールする方法

1. **公式サイトにアクセス**

    [VSCode ダウンロードページ](https://code.visualstudio.com/Download)

2. **.deb (Debian, Ubuntu) を選択してダウンロード**

3. **ダウンロードしたファイルをダブルクリックし、アプリセンター等でインストール**

    - または、ターミナルで下記コマンドを実行：

        ```bash
        cd Downloads/
        sudo apt install -y ./code_*.deb
        ```

---

## 2️⃣ バージョン確認

インストール確認用コマンド

```bash
code --version
```

---

## 3️⃣ 拡張機能のインストール

- 一括インストールコマンド：
    ```bash
    bash ~/linux-setup-guide/vscode/scripts/setup_extensions.sh
    ```
    > 現在私が使用している拡張機能が一括でインストールされる

- 詳しくは [extensions.md](./extensions.md) 参照

---
## 4️⃣ 設定ファイルの適用
- [setting.md](./setting.md) 参照
- サンプル設定ファイルは [setting_json_example.json](./setting_json_example.json) にある

---

## 5️⃣ よく使う作業手順・Tips

### 🚦 起動方法

```bash
code
```

### おすすめショートカット

- `Ctrl + Shift + P` : コマンドパレット

- `Ctrl + P` : ファイルクイックオープン

---

## 📚 関連リンク

- [Visual Studio Code 公式ページ](https://code.visualstudio.com/)
- [VSCode ドキュメント（日本語）](https://code.visualstudio.com/docs?lang=ja)
- [VSCode Marketplace（拡張機能一覧）](https://marketplace.visualstudio.com/vscode)