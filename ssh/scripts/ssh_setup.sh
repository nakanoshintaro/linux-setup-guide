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
