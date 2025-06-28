# images ディレクトリについて（Python環境用）

このフォルダには、Python 仮想環境、ツールのインストール、設定ファイルなどのスクリーンショットを保存します。

---

## 推奨画像一覧

| ファイル名 | 説明 |
|------------|------|
| `python_version_check.png` | `python3 --version` の確認画面 |
| `pip_list_output.png` | `pip list` 実行結果（インストール済みパッケージ） |
| `venv_create_success.png` | 仮想環境が `.venv` に作成された後のファイル構成 |
| `venv_activate.png` | `source .venv/bin/activate` による有効化画面 |
| `venv_deactivate.png` | `deactivate` による仮想環境の終了画面 |
| `pip_conf_editor.png` | `~/.config/pip/pip.conf` をエディタで開いた様子 |
| `pyproject_view.png` | `pyproject.toml` をエディタで開いた状態 |
| `autoenv_warning.png` | `.env` の読み込み許可確認メッセージ |
| `pip_install_example.png` | `pip install -r requirements.txt` 実行例 |

---

## 備考

- スクリーンショットは基本的に `.png` 形式を推奨します。
- 実行環境が分かるよう、プロンプトやディレクトリ名も表示すると親切です。
- Markdown ファイルから画像を参照する際の例：

```markdown
![仮想環境の有効化](./images/venv_activate.png)
```
