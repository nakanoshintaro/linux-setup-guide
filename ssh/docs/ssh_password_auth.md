# 🔑 SSH サーバーの構築(パスワード認証方式)

**パスワード認証方式**によるSSHサーバー・クライアントの設定手順をまとめている。

---

## 🖥️ サーバー側の手順

1. **🛠️ OpenSSHサーバーのインストール**

    ```sh
    sudo apt update
    sudo apt install -y openssh-server
    ```

    **🏷️ openssh-serverのバージョン確認コマンド**

    ```bash
    ssh -V
    ```


2. **✅ SSHサーバーの状態確認**

    インストール後、自動で起動＆自動起動設定がされるはずだが、念のため確認する

    ```bash
    sudo systemctl status ssh
    ```

    > 💡 **active (running)** と表示されていればOK

    ⏲️ 自動起動が有効か確認したい場合：
    ```bash
    sudo systemctl is-enabled ssh
    ```

    > 💡 `enabled` なら自動起動設定済み

    > 🛠️ 補足:
    サービスが停止している場合
    - 🔄 手動で起動（今だけ起動）:
        ```bash
        sudo systemctl start ssh
        ```

    - 🚦 自動で起動（毎回自動起動）:
        ```bash
        sudo systemctl enable ssh
        ```

3. **🔥 ファイアウォールの許可**

    ファイアウォールを利用している場合、SSH（22番ポート）が許可されている必要がある。
    ```sh
    sudo ufw allow ssh
    ```
    > 💡 初めてUFWを有効化する場合のみ、以下を実行:
    ```sh
    sudo ufw enable
    ```

    🎯 許可されているか確認
    ```sh
    sudo ufw status
    ```
    📝 **22/tcp**が **ALLOW** となっていればOK
    例: `22/tcp ALLOW Anywhere`

**📝 ここまでの設定は [ssh_setup.sh](../scripts/ssh_setup.sh) の中で行われている。**

### 🌐 サーバーIPアドレスの確認
本来はIPアドレスを固定するのが理想だが、簡易テストのため現在割り当てられているIPアドレスを確認

```bash
hostname -I
```

または以下のコマンドで `inet 192.168.10.100` のように書かれている部分を参照

```bash
ip a
```

---

## 💻 クライアント側の手順

1. **🔗 SSH接続コマンドを実行**

    ```sh
    ssh ユーザー名@サーバーのIPアドレス
    ```

    > 例: `ssh nakano@192.168.1.100`

2. **🔐 サーバー側ユーザーのパスワードを入力してログイン**

    > ✅ サーバー側のユーザー名、マシン名が表示されていれば成功
    例: `nakano@ubuntu:~$`

---

## 🔌 SSH接続を切断する(クライアント側)

`exit` コマンドで切断できる。
```bash
exit
```

---

## 🛑 SSH無効化(サーバー側)
⚠️ **リモート環境で行うと再接続できなくなるので注意！**

- ⏹️ SSHを停止する
    ```bash
    sudo systemctl stop ssh
    ```

- 🚫 SSHを無効にする
    ```bash
    sudo systemctl disable ssh
    ```