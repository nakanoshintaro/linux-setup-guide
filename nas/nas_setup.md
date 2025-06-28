# NAS構築手順（nas_setup.md）

このドキュメントでは、Ubuntu 環境において Samba を用いてローカル NAS（ファイル共有サーバ）を構築する手順を解説します。

対象：家庭内ネットワークや開発チーム内での簡易ファイル共有を目的とする場合

---

## 🔧 1. Samba のインストール

```bash
sudo apt update
sudo apt install -y samba
```

---

## 📂 2. 共有ディレクトリの作成

共有用ディレクトリを作成します（例として `/srv/samba/share`）：

```bash
sudo mkdir -p /srv/samba/share
sudo chown nobody:nogroup /srv/samba/share
sudo chmod 0775 /srv/samba/share
```

または、ホームディレクトリ内に作成することも可能です：

```bash
mkdir -p ~/shared
```

---

## 🛠 3. Samba 設定ファイルの編集

`/etc/samba/smb.conf` を編集します：

```bash
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.bak
sudo gedit /etc/samba/smb.conf
```

末尾に以下を追加：

```ini
[Share]
   path = /srv/samba/share
   browseable = yes
   read only = no
   guest ok = yes
   create mask = 0664
   directory mask = 0775
```

ゲストアクセスを無効にする場合：

```ini
   guest ok = no
   valid users = <ユーザー名>
```

---

## 👤 4. Sambaユーザーの作成（認証ありの場合）

```bash
sudo smbpasswd -a <ユーザー名>
```

---

## 🔁 5. Samba サービスの再起動

```bash
sudo systemctl restart smbd
```

---

## 🧪 6. 動作確認（クライアント側）

他のPCから以下のようにアクセスできます：

- Windows: `\[UbuntuのIPアドレス]\Share`
- Mac/Linux: `smb://[UbuntuのIPアドレス]/Share`

例：

```bash
smbclient //192.168.1.10/Share -U <ユーザー名>
```

---

## 🔥 7. ファイアウォールの許可（必要な場合）

```bash
sudo ufw allow 'Samba'
sudo ufw reload
```

---

## 📎 補足

- 複数の共有フォルダを作成したい場合は `[Share]` セクションを複数定義してください。
- セキュリティを重視する場合、`guest ok = no` + `valid users` + `smbpasswd` を推奨します。
- スクリプトによる自動化は `setup_nas.sh` を参照してください。
