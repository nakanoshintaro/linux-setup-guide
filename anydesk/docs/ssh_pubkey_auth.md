# 🗝️ SSH 接続方法(公開鍵認証方式)

**公開鍵認証方式**でSSHサーバーに安全かつパスワードレスでログインする手順をまとめている。なお、**パスワード認証方式** [ssh_password_auth.md](./ssh_password_auth.md) の内容がテストできている前提の作業を記述している。

---

## 💻 クライアント側の手順

1. **🗝️ 公開鍵・秘密鍵ペアの作成**

    ```bash
    ssh-keygen -t ed25519 -C ""
    ```

    - `ed25519` は鍵ペアを作成するのに使われるアルゴリズム
    - `-C` オプションで任意のコメントを指定できる(この例ではコメントなしだが通常はメールアドレスを記入)
    - 何か聞かれてもエンターキー連打でOK(3回)
    - パスフレーズも任意で設定可(途中で聞かれるがそのままエンターでパスワードレスに)
    - クライアント側で `~/.ssh/id_ed25519.pub` というファイルが作成され、鍵が作成される
    📄 **公開鍵確認**
        ```bash
        cat ~/.ssh/id_ed25519.pub
        ```


2. **📤 公開鍵をサーバーに転送**

    ```bash
    ssh-copy-id -i ~/.ssh/id_ed25519.pub ユーザー名@サーバーのIPアドレス
    ```
    > 例: `ssh-copy-id -i ~/.ssh/id_ed25519.pub nakano@192.168.1.100`

    - 確認画面で `yes` 、その後サーバーパスワード入力
    - サーバー側の `~/.ssh/authorized_keys` に公開鍵が追記される
    - 🔎 サーバー側で確認
    ```bash
    cat ~/.ssh/authorized_keys
    ```
    > 💡 コピペでの追加もOK

3. **🔗 SSHコマンドで接続**
    ```bash
    ssh ユーザー名@サーバーのIPアドレス
    ```
    💡 パスワード入力なしで接続できたら成功！

4. **📁 SSH 設定ファイル（任意）**
   `~/.ssh/config` に設定を記述すると便利

    ```config
    Host server
        HostName 192.168.1.100
        User nakano
        IdentityFile ~/.ssh/id_ed25519
    ```

    🏃‍♂️ これで短く接続可能：

    ```bash
    ssh server
    ```

---

## 🖥️ サーバー側の手順(任意)

パスワード認証を認めない設定、すなわち公開鍵を持っている場合のみSSH接続可能にする設定を行う。

1. **🔒 パスワード無効化設定**
    `/etc/ssh/sshd_config.d/99-mycustom.conf` を編集
    ```bash
    echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config.d/99-mycustom.conf
    ```
    - `99-mycustom.conf` は任意のファイル名。`50-cloud-init.conf` などでも良い。

2. **🚀 SSHサービスの再起動**
設定ミスでSSHで入れなくなる場合があるので、別セッションで公開鍵ログインできるか確認してから実行するべき
    ```bash
    sudo systemctl restart ssh
    ```
    確認コマンド
    ```bash
    sudo sshd -T | grep passwordauthentication
    ```
    💡 `passwordauthentication no` ならOK！





