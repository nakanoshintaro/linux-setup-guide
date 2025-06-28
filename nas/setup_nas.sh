#!/bin/bash

# setup_nas.sh
# Ubuntu向け簡易NAS（Samba）構築スクリプト

set -e  # エラー時に終了

echo "📦 Sambaをインストール中..."
sudo apt update
sudo apt install -y samba

echo "📁 共有ディレクトリを作成中..."
sudo mkdir -p /srv/samba/share
sudo chown nobody:nogroup /srv/samba/share
sudo chmod 0775 /srv/samba/share

echo "📝 smb.confのバックアップと設定追加..."
SMB_CONF="/etc/samba/smb.conf"
BACKUP="/etc/samba/smb.conf.bak"

# バックアップ作成
if [ ! -f "$BACKUP" ]; then
    sudo cp "$SMB_CONF" "$BACKUP"
    echo "✅ smb.confをバックアップしました -> $BACKUP"
fi

# 設定追記
sudo bash -c 'cat <<EOF >> /etc/samba/smb.conf

[Share]
   path = /srv/samba/share
   browseable = yes
   read only = no
   guest ok = yes
   create mask = 0664
   directory mask = 0775
EOF'

echo "🔄 Sambaサービスを再起動..."
sudo systemctl restart smbd

echo "🧱 UFWファイアウォールを許可（存在する場合）"
if command -v ufw >/dev/null 2>&1; then
    sudo ufw allow 'Samba'
    sudo ufw reload
fi

echo "✅ NAS構築が完了しました！"
echo "🔗 他のPCから以下のようにアクセスできます："
echo "    smb://<このPCのIPアドレス>/Share"
