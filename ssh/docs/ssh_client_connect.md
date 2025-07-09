# SSH 接続方法

別端末 (Windows, Linux) から SSH を使ってリモート接続する方法ついてまとめています。

---

## 🔗 SSH クライアントからの接続方法

```bash
ssh ユーザー名@ホスト名（またはIPアドレス）
```

例：

```bash
ssh user@192.168.1.100
```

---

## 📁 SSH 設定ファイル（~/.ssh/config）

複数のサーバーを使い分ける場合は `~/.ssh/config` に設定を記述すると便利です：

```config
Host nas-server
    HostName 192.168.1.100
    User user
    Port 22
    IdentityFile ~/.ssh/id_rsa
```

これにより以下のように短く接続可能：

```bash
ssh nas-server
```

---

## 🛠 よくある接続エラーと対処法

| エラー | 原因 | 解決策 |
|--------|------|--------|
| `Connection refused` | SSH サーバが動作していない | `sudo systemctl start ssh` を確認 |
| `Permission denied (publickey)` | 鍵が一致しない、または転送されていない | `ssh-copy-id` で再転送、`~/.ssh/authorized_keys` を確認 |
| `Connection timed out` | ポートが閉じている、またはIPが間違っている | `ping` や `ufw` の設定を確認 |
| `No route to host` | ネットワーク不通 | 同一LAN内にいるか、IPが正しいかを確認 |

---

## 💡 トラブル時のチェックポイント

- 接続先のIPアドレスとポート番号は正しいか？
- サーバーのSSHサービスは起動しているか？
- 公開鍵認証に切り替えている場合、正しい鍵を使っているか？
- クライアントのSSHログを確認：

```bash
ssh -vvv user@host
```

---

## 🔒 公開鍵の確認方法（サーバー側）

```bash
cat ~/.ssh/authorized_keys
```

接続元の公開鍵（`id_rsa.pub`）がここに含まれていなければ接続できません。

---

## 📎 補足

- ポート変更をしている場合は `-p <ポート番号>` を明示してください。
- SSH 経由で `scp` や `rsync` も使えます。
