# 推奨画像リスト（images/expected_images.md）

このファイルでは、ROS のセットアップ・動作確認・トラブル対応に関連する画像を一覧で紹介しています。実際の作業のスクリーンショットを保存する際に、以下のファイル名と説明を参考にしてください。

---

## ✅ インストール・設定画面

| ファイル名 | 説明 |
|------------|------|
| `ros_install_success.png` | ROS のインストールが完了したターミナル画面 |
| `apt_source_added.png` | APT に ROS のリポジトリを追加した状態 |
| `rosdep_init_result.png` | `rosdep init/update` の成功メッセージ |
| `rviz_installed.png` | `rviz` 起動成功の画面 |
| `locale_check.png` | 日本語ロケールが有効になっていることの確認表示 |

---

## 🧪 動作確認・ノード実行

| ファイル名 | 説明 |
|------------|------|
| `talker_listener_terminal.png` | `talker` ノードの実行と出力 |
| `rqt_graph_view.png` | ノードとトピック構成を視覚化した rqt_graph |
| `roscore_running.png` | ROS 1 の `roscore` 実行状態 |
| `ros2_topic_list.png` | `ros2 topic list` コマンドの実行結果 |
| `ros_workspace_build.png` | `colcon build` や `catkin_make` 成功時の出力 |

---

## 🧭 システム構成・資料画像

| ファイル名 | 説明 |
|------------|------|
| `ros_file_structure.png` | ワークスペースのファイル構成図 |
| `ros_network_diagram.png` | ノード間の通信構成を示す図 |
| `ros_version_matrix.png` | ROSとUbuntuの対応バージョン表 |

---

## ⚠️ トラブルシュート・エラー例

| ファイル名 | 説明 |
|------------|------|
| `gpg_key_error.png` | GPG鍵エラーによるapt失敗例 |
| `rosdep_error_missing.png` | rosdep 初期化時のエラー例 |
| `source_missing_env.png` | setup.bash を読み込んでいないことによる環境変数不足 |

---

## 📝 備考

- 実際のスクリーンショットを撮影して、`images/` フォルダに保存してください。
- ファイル名と一致する画像を配置すると、README やセットアップマニュアルから参照しやすくなります。
