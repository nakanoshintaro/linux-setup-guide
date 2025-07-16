# ⚙️ 設定ファイル（settings.json）の適用方法

VSCodeの細かな動作や表示は `settings.json` で調整できる。

---

## setting.json の編集

⚠️ **注意**

この方法では**元の設定がすべて上書きされます**。カスタム設定や拡張機能の細かな設定も消えるため、必ずバックアップを取っておきましょう。

```bash
cp ~/.config/Code/User/settings.json ~/.config/Code/User/settings.json.bak
```

また、設定を反映させるにはVSCodeを再起動する。

---

### 方法１ (ローカルファイルで編集)

設定ファイル [setting_json_example.json](./setting_json_example.json) の内容を以下のファイルにコピペ：

```bash
~/.config/Code/User/settings.json
```

- JSONの構文に従って追記

---

### 方法２ (コマンドで置き換える)

`setting_json_example.json` を `settings.json` にコピーして上書き

```bash
cp ~/linux-setup-guide/vscode/docs/setting_json_example.json ~/.config/Code/User/settings.json
```

---

### 方法３ (VSCodeから編集)

1. [setting_json_example.json](./setting_json_example.json) を開いて内容を確認
2. VSCodeを起動し、`Ctrl + Shift + P` でコマンドパレットを開く
3. `settting.json` を検索して `基本設定: ユーザー設定を開く(JSON)` を選択
4. `setting_json_example.json` の内容を追記する (JSONの構文に従う)

---

## ✅ 主なカスタマイズ項目例

| 設定項目名                              | 設定例                        | 説明                                                            |
|------------------------------------------|-------------------------------|-----------------------------------------------------------------|
| `workbench.startupEditor`              | `none`                      | VSCode起動時にスタートページを表示しない                         |
| `workbench.iconTheme`                  | `material-icon-theme`        | アイコンテーマ（Material Icon Theme拡張を使用）                  |
| `editor.fontSize`                      | `18`                          | エディタのフォントサイズ                                         |
| `code-runner.runInTerminal`            | `true`                        | Code Runnerでターミナル実行を有効化                              |
| `markdown.marp.exportType`             | `html`                      | Marp拡張でMarkdownスライドのデフォルト出力形式                   |
| `markdown-preview-enhanced.hideDefaultVSCodeMarkdownPreviewButtons` | `false`       | Markdown Preview Enhanced拡張で既定ボタンを隠さない              |
| `editor.defaultFormatter`              | `ms-python.autopep8`         | デフォルトフォーマッタをautopep8（Python用）に設定               |
| `editor.mouseWheelZoom`                | `true`                        | Ctrl+マウスホイールでエディタのズームを有効化                    |
| `editor.formatOnSave`                  | `true`                        | 保存時に自動でコードフォーマット                                 |
| `autopep8.args`                        | `[--max-line-length, 150]` | autopep8の最大行長を150に指定                                    |
| `editor.formatOnPaste`                 | `true`                        | 貼り付け時にも自動フォーマット                                   |
| `code-runner.saveAllFilesBeforeRun`    | `true`                        | Code Runnerで実行前に全ファイルを保存                            |
| `code-runner.executorMap`              | `{...}`（多言語コマンド群）   | 各言語ごとの実行コマンドをカスタマイズ                           |
| `workbench.editor.decorations.badges`  | `false`                       | エディタタブのバッジ装飾を非表示                                 |
| `explorer.decorations.badges`          | `false`                       | ファイルエクスプローラのバッジ装飾を非表示                       |
| `update.showReleaseNotes`              | `false`                       | アップデート後のリリースノート表示を無効化                        |
| `notebook.defaultFormatter`            | `esbenp.prettier-vscode`     | ノートブックセルの既定フォーマッタをPrettierに指定                |
