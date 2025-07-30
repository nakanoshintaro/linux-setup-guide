#!/bin/bash
# 最低限のインストールと起動、ポート開放を行います

set -e

echo "🛠️  ==== SSHサーバーをインストールします ===="
sudo apt update
sudo apt install -y openssh-server

echo "🔧 ==== SSHサービスを有効化＆起動します ===="
sudo systemctl enable ssh
sudo systemctl start ssh

echo "🔥 ==== UFWでSSH用ポートを開放します（UFW有効時のみ） ===="
if command -v ufw >/dev/null 2>&1; then
    if sudo ufw status | grep -q "inactive"; then
        echo "💡 UFW（ファイアウォール）は無効です"
    else
        sudo ufw allow ssh
        sudo ufw reload
        echo "✅ UFWで22番ポート(ssh)を開放しました"
    fi
else
    echo "💡 UFWはインストールされていません（スキップ）"
fi

echo "🌐 ==== サーバーのIPアドレスを表示します ===="
ip_addr=$(hostname -I | awk '{print $1}')
echo "  $ip_addr"

echo "🎉 ==== SSHセットアップ完了！ ===="
echo "💻 別の端末から以下のコマンドで接続できます："
echo "   ssh $(whoami)@$ip_addr"


# Add the AnyDesk GPG key
sudo apt update
sudo apt install ca-certificates curl apt-transport-https
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://keys.anydesk.com/repos/DEB-GPG-KEY -o /etc/apt/keyrings/keys.anydesk.com.asc
sudo chmod a+r /etc/apt/keyrings/keys.anydesk.com.asc

# Add the AnyDesk apt repository
echo "deb [signed-by=/etc/apt/keyrings/keys.anydesk.com.asc] https://deb.anydesk.com all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list > /dev/null

# Update apt caches and install the AnyDesk client
sudo apt update
sudo apt install anydesk
