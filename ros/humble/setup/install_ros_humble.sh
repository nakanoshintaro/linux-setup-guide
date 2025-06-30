#!/bin/bash

# install_ros.sh
# ROS 2 Humble インストールスクリプト

set -e

echo "🟢 ROS 2 Humble のインストールを開始します..."

# 1. 依存パッケージのインストール
sudo apt update && sudo apt install -y curl gnupg lsb-release

# 2. GPGキーの追加
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc \
    | sudo gpg --dearmor -o /usr/share/keyrings/ros-archive-keyring.gpg

# 3. ソースリストの追加
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] \
http://packages.ros.org/ros2/ubuntu $(lsb_release -sc) main" \
| sudo tee /etc/apt/sources.list.d/ros2-latest.list > /dev/null

# 4. ROS本体のインストール
sudo apt update
sudo apt install -y ros-humble-desktop

# 5. bashrc への自動追加
if ! grep -q "source /opt/ros/humble/setup.bash" ~/.bashrc; then
  echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc
fi

# 6. 現在のシェルにも反映
source ~/.bashrc

echo "✅ ROS 2 Humble のインストールが完了しました！"
