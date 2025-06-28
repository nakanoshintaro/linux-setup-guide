# images ディレクトリについて（SSH用）

このフォルダには、SSH の設定・接続画面・トラブル解決の参考となるスクリーンショットを保存します。

---

## 推奨画像一覧

| ファイル名 | 説明 |
|------------|------|
| `ssh_service_status.png` | SSH サービスが起動している状態の systemctl 出力 |
| `ssh_keygen_command.png` | 公開鍵・秘密鍵を作成する `ssh-keygen` の実行例 |
| `ssh_copy_id_success.png` | `ssh-copy-id` 成功後の表示 |
| `ssh_connection_success.png` | SSH 接続に成功したターミナル画面 |
| `ssh_config_example_editor.png` | ~/.ssh/config をエディタで開いた画面 |
| `ssh_permission_denied_error.png` | `Permission denied` エラーの発生例とヒント |
| `ssh_timeout_error.png` | タイムアウトエラー画面（ネットワーク未接続） |
| `ssh_debug_verbose.png` | `ssh -vvv` による詳細デバッグの出力例 |

---

## 備考

- 実際の画面で個人情報（ユーザー名、ホスト名、IP等）が写らないようにご注意ください。
- Markdown ファイルから画像を参照するには以下のように記述します：

```markdown
![SSH 成功例](./images/ssh_connection_success.png)
```
