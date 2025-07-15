# ⚙️ 設定ファイル（settings.json）の適用方法

VSCodeの細かな動作や表示は `settings.json` で調整できる。

---

## 方法１
<!-- TODO 上書きせずにいける方法調査 -->
設定ファイル `setting_json_example.json` の内容を以下のファイルに配置：

```bash
~/.config/Code/User/settings.json
```

VSCode を再起動すると設定が反映される。

---

## 方法２

1. [`setting_json_example.json`](./setting_json_example.json) を開いて内容をコピー
2. VSCodeを起動し、`Ctrl + Shift + P` でコマンドパレットを開く
3. `settting.json` を検索して `基本設定: ユーザー設定を開く(JSON)` を選択
4. `setting_json_example.json` の内容を追記する (JSONの構文に従う)

---

## 主なカスタマイズ項目例
<!-- TODO 表作成 -->
- `"editor.fontSize"` … フォントサイズ
- `"editor.formatOnSave"` … 保存時自動フォーマット
- `"files.autoSave"` … 自動保存設定
- `"workbench.colorTheme"` … テーマ選択

## 参考
<!-- TODO リンク見直し -->
- [settings.jsonの公式解説](https://code.visualstudio.com/docs/getstarted/keybindings)