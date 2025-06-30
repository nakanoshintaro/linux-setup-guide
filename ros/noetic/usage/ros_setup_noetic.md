# ROS Noetic セットアップガイド（ros/noetic/ros_setup.md）

このドキュメントでは、Ubuntu 20.04 上に ROS 1 Noetic をインストールする手順を説明します。

---

## 🧩 前提条件

- Ubuntu 20.04 がインストールされていること
- `sudo` 権限を持つユーザーであること
- ネットワーク接続があること

---

## 🚀 インストール手順

```bash
sudo apt update && sudo apt upgrade -y
```

### 1. パッケージソースの設定

```bash
sudo apt install -y curl gnupg lsb-release
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo gpg --dearmor -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" | sudo tee /etc/apt/sources.list.d/ros1-latest.list > /dev/null
```

### 2. ROSのインストール

```bash
sudo apt update
sudo apt install -y ros-noetic-desktop
```

### 3. 環境変数の設定

```bash
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
```

---

## 🛠 ワークスペースの作成（任意）

```bash
mkdir -p ~/ros_ws/src
cd ~/ros_ws
colcon build
source install/setup.bash
```

（※ ROS 1 の場合は `catkin_make` を使用）

---

## ✅ 動作確認

```bash
ros2 run demo_nodes_cpp talker
```

または：

```bash
roscore  # ROS 1 の場合
```

---

## 📎 参考

- 公式: https://docs.ros.org/noetic/Installation.html
