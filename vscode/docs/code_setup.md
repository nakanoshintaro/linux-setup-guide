# VSCode セットアップの流れ

Linux環境における Visual Studio Code（VSCode） のインストールから初期セットアップまでの全体像をまとめます。

---

## 1️⃣ インストール
<!-- TODO インストール手順-->
### ① オリジナルシェルスクリプトを利用する方法

### ② 公式debパッケージを使ったAPTインストール

### ③ ブラウザから直接インストール

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