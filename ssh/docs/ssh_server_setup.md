# SSH サーバーの構築

UbuntuでSSHサーバーを構築し、他のUbuntuやWindowsから安全に接続できるようにする方法をまとめています。

---

## 🔧 SSH サーバーのインストール

```bash
sudo apt update
sudo apt install -y openssh-server
```

> インストール後、自動的にサービスは起動します。

---

## ✅ SSH サーバーの状態確認

```bash
sudo systemctl status ssh
```

**active (running)** と表示されていればサーバーが起動している状態です。

起動するには：

```bash
sudo systemctl start ssh
```

常に起動しておくには：

```bash
sudo systemctl enable ssh
```

---

## 🔥 ファイアウォール設定

ファイアウォールがSSHをブロックしている場合があるので、許可して再起動を行う必要があります。

```sh
sudo ufw allow ssh
sudo ufw reload
sudo ufw status
```

この状態でサーバーの立ち上げ自体は行われます。

---

## サーバーIPアドレスの確認

ここまで設定できたら [ssh_client_connect.md](./ssh_client_connect.md) を参照して簡易的に接続テストを行うことができる。本来であればIPアドレスを固定しておくことが理想だが、簡易テストのため現在割り当てられているIPアドレスを確認しておこう。

```bash
hostname -I
```

または以下のコマンドで `inet 192.168.10.100` のように書かれている部分を参照する。

```bash
ip a
```

**なお、ここまでの設定は [ssh_setup.sh](../scripts/ssh_setup.sh) の中で行われている。**

---

## 🔐 公開鍵認証の設定

1. クライアント（接続元）PCで鍵ペアを生成：

```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

2. サーバー（接続先）に公開鍵を転送：

```bash
ssh-copy-id ユーザー名@サーバーIP
```

3. サーバー側に `~/.ssh/authorized_keys` が作成されればOK

---

## 📁 SSH 設定ファイル（/etc/ssh/sshd_config）

| 設定項目 | 推奨値 | 説明 |
|----------|--------|------|
| `Port` | 22（または変更可） | SSHポート番号 |
| `PermitRootLogin` | no | rootログインの無効化 |
| `PasswordAuthentication` | no | パスワード認証を禁止（鍵認証のみ） |
| `AllowUsers` | user1 user2 | 許可するユーザーを制限 |

設定変更後は再起動：

```bash
sudo systemctl restart ssh
```

---

## 🔒 セキュリティのベストプラクティス

- rootログインを無効化
- パスワード認証をオフにして鍵認証のみ許可
- fail2ban 等で不正アクセスの試行を制限
- ポートを22以外に変更（例：2222）

---

## 📎 関連ファイル

- `~/.ssh/id_rsa`: 秘密鍵（保持する）
- `~/.ssh/id_rsa.pub`: 公開鍵（転送する）
- `/etc/ssh/sshd_config`: SSH サーバーの設定
