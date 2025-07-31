# AnyDesk セットアップ

AnyDesk のインストール手順、使用方法などをまとめている。

---

## AnyDesk インストール手順

３種類のインストール方法を記述するが、**方法１と方法２は内部で同じ処理が行われる**。

### 方法１：本リポジトリのシェルスクリプトを利用する方法

全自動でインストールするには、下記スクリプトを実行します。

```bash
bash ~/linux-setup-guide/vscode/scripts/install_code.sh
```

スクリプトの内容は [install_code.sh](../scripts/install_code.sh) を参照

### 方法２：コマンドを手作業で実行する方法

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

### 方法３：ブラウザから直接インストールする方法

1. **公式サイトにアクセス**

    [VSCode ダウンロードページ](https://code.visualstudio.com/Download)

2. **.deb (Debian, Ubuntu) を選択してダウンロード**

3. **ダウンロードしたファイルをダブルクリックし、アプリセンター等でインストール**

    - または、ターミナルで下記コマンドを実行：

        ```bash
        cd Downloads/
        sudo apt install -y ./code_*.deb
        ```

### インストール確認用コマンド

```bash
anydesk --version
```

---

## 🚦 起動方法

```bash
anydesk
```

---


## 接続方法

まずは AnyDesk アドレスを確認する。AnyDesk を起動すると、画面上部に「接続用アドレス（9桁程度の数字）」が表示される。

### 他のPCに接続する

1. 相手のPCのAnyDeskアドレス（ID）を聞きます。

2. AnyDeskウィンドウの「リモートデスクトップへ接続」欄に、そのアドレスを入力して**接続**を押します。

3. 相手が**許可**ボタンを押すと、接続が開始されます。

### PCに接続してもらう（受け入れ）

1. AnyDeskアドレス（ID）を相手に伝えます。

2. 相手がそのIDで接続してきた場合、「このリクエストを許可しますか？」と表示されるので**許可**をクリックします。

3. これで相手にあなたのデスクトップが共有されます。


---

## 📚 関連リンク

- [AnyDesk公式サイト](https://anydesk.com/ja)
- [AnyDesk Linux版ダウンロードページ](https://anydesk.com/ja/downloads/linux)
