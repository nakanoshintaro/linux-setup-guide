# VSCode おすすめ拡張機能

おすすめ拡張機能を紹介する。

---
## 🌟 拡張機能一括インストール

- [extensions.list](./extensions.list) に拡張機能IDを1行ずつ記述している。
- 一括インストールコマンド：
    ```bash
    bash ~/linux-setup-guide/vscode/scripts/setup_extensions.sh
    ```
- 拡張機能は `code --install-extension <ID>` でCLIから導入可能
    [VSCode 拡張機能公式Marketplace](https://marketplace.visualstudio.com/vscode) でIDを確認

---

## GUIによる個別インストール

VSCodeの左サイドバーから「拡張機能」アイコン（四角が4つ並んだマーク）をクリック(または `Ctrl + Shift + X`)し、各拡張機能名またはIDで検索してインストールできる。

---

## 💻 推奨拡張機能

以下は本リポジトリ推奨の拡張機能一覧です。

<details>
<summary>クリックで表示</summary>

| 名前                          | 拡張機能ID                                  | 説明                                                                              |
|---------------------------------------|---------------------------------------------|--------------------------------------------------------------------------------------------------|
| Bracket Pair Color DLW                | bracketpaircolordlw.bracket-pair-color-dlw  | 括弧ごとに色をつけてペアを分かりやすく表示し、コード可読性を向上します。                         |
| Path Intellisense                     | christian-kohler.path-intellisense          | ファイルパスの自動補完を行い、import文やパス指定が便利になります。                              |
| Python Extension Pack                 | donjayamanne.python-extension-pack          | Python開発に便利な拡張機能セットを一括導入します。                                              |
| GitLens                               | eamodio.gitlens                             | Git履歴や差分、著者情報などを可視化する強力なGit支援ツールです。                                 |
| Prettier - Code formatter             | esbenp.prettier-vscode                      | 保存時自動整形も可能な多言語対応コードフォーマッタです。                                          |
| Auto Close Tag                        | formulahendry.auto-close-tag                | HTML/XMLなどでタグを自動で閉じる補助ツールです。                                                 |
| Auto Rename Tag                       | formulahendry.auto-rename-tag               | HTML/XML等で開始・終了タグの名前を同時に編集できます。                                            |
| Code Runner                           | formulahendry.code-runner                   | コードをエディタ上で即時実行できる多言語対応ツールです。                                          |
| GC Excel Viewer                       | grapecity.gc-excelviewer                    | Excel（.xlsx）ファイルをVSCode上で表示・閲覧できます。                                            |
| TODO Tree                             | gruntfuggly.todo-tree                       | コメント内のTODOやFIXMEなどを一覧表示し、管理・検索できます。                                     |
| Python Indent                         | kevinrose.vsc-python-indent                 | Pythonコードでインデント補完をサポートします。                                                   |
| JSON Len                              | kongtaoxing.json-len                        | JSONファイルのキー数や階層の長さを即時計算・表示します。                                         |
| Marp for VS Code                      | marp-team.marp-vscode                       | Markdownをスライド形式に変換できるMarpエディタサポートです。                                     |
| Rainbow CSV                           | mechatroner.rainbow-csv                     | CSV/TSVファイルの列ごとに色付けして可視性向上を図ります。                                        |
| Git Graph                             | mhutchie.git-graph                          | Gitリポジトリの履歴をグラフィカルに可視化するツールです。                                         |
| Japanese Language Pack for VS Code     | ms-ceintl.vscode-language-pack-ja           | VSCode本体の日本語化パックです。                                                                 |
| autopep8                              | ms-python.autopep8                          | Pythonコードの自動整形ツール（PEP8スタイル準拠）。                                               |
| Debugpy                               | ms-python.debugpy                           | Pythonのデバッグ機能を強化するバックエンドです。                                                 |
| Python                                | ms-python.python                            | Python開発必須の拡張（Lint, 補完, デバッグ, Jupyterなど）。                                      |
| Pylance                               | ms-python.vscode-pylance                    | Python用の高速・高精度な型チェックと補完エンジンです。                                           |
| Remote - SSH                          | ms-vscode-remote.remote-ssh                 | SSH経由でリモート環境に接続し、VSCode上で直接編集できます。                                      |
| CMake Tools                           | ms-vscode.cmake-tools                       | CMakeプロジェクトの管理・ビルド・デバッグをVSCodeから実行できます。                               |
| C/C++                                 | ms-vscode.cpptools                          | C/C++コードのインテリセンス、デバッグ、コード解析等を提供します。                                |
| C/C++ Extension Pack                  | ms-vscode.cpptools-extension-pack           | 複数のC/C++関連拡張をまとめて導入できるパックです。                                              |
| C/C++ Themes                          | ms-vscode.cpptools-themes                   | C/C++用のテーマや配色スキームを追加します。                                                      |
| Live Server                           | ms-vscode.live-server                       | ローカル開発用のHTTPサーバを立ち上げて、リアルタイムプレビューが可能です。                         |
| Remote Explorer                       | ms-vscode.remote-explorer                   | VSCodeからリモートリソースを簡単に管理・操作できるパネルを追加します。                            |
| Live Share                            | ms-vsliveshare.vsliveshare                  | 複数人で同時にVSCode作業環境を共有・共同編集できます。                                           |
| AutoDocstring                         | njpwerner.autodocstring                     | Python関数やクラスのdocstringを自動生成します。                                                  |
| Indent Rainbow                        | oderwat.indent-rainbow                      | インデントレベルごとに色付けし、ネスト構造を視覚的に分かりやすくします。                         |
| Material Icon Theme                   | pkief.material-icon-theme                   | ファイルやフォルダにわかりやすいアイコンテーマを適用します。                                     |
| YAML                                  | redhat.vscode-yaml                          | YAMLファイルの補完・Lint・検証機能を追加します。                                                 |
| Live Server (by Ritwick Dey)           | ritwickdey.liveserver                       | HTML/JS/CSS用のシンプルなライブプレビューツールです。                                            |
| Evil Inspector                        | saikou9901.evilinspector                    | HTML/JSのDOMをライブで編集・デバッグできるツールです。                                            |
| DOCX Reader                           | shahilkumar.docxreader                      | Word（.docx）ファイルをVSCode上で閲覧可能にします。                                              |
| Trailing Spaces                       | shardulm94.trailing-spaces                  | 行末の不要な空白をハイライト表示します。                                                         |
| Markdown Preview Enhanced              | shd101wyy.markdown-preview-enhanced         | Markdownを高機能にプレビュー、PDF/HTML/スライドなど多彩にエクスポート可能です。                  |
| Auto Import                           | steoates.autoimport                         | import文を自動的に候補提示・挿入します。                                                        |
| PDF Viewer                            | tomoki1207.pdf                              | PDFファイルを直接VSCode上で閲覧できます。                                                        |
| CMake                                 | twxs.cmake                                  | CMakeファイル（CMakeLists.txt）のシンタックスハイライト等を提供します。                           |
| Error Lens                            | usernamehw.errorlens                        | エラーや警告を行内で強調表示し、すぐに問題を発見できます。                                       |
| Highlight Matching Tag                 | vincaslt.highlight-matching-tag             | HTML/XML等で対応する開始・終了タグを強調表示します。                                              |
| IntelliCode API Usage Examples         | visualstudioexptteam.intellicode-api-usage-examples | AIによるAPI利用例の提案やサンプルコードを表示します。                                 |
| IntelliCode                           | visualstudioexptteam.vscodeintellicode      | AI支援による高度なコード補完を実現します。                                                      |
| Markdown PDF                          | yzane.markdown-pdf                          | MarkdownファイルからPDFを簡単に生成できます。                                                    |
| Markdown All in One                   | yzhang.markdown-all-in-one                  | Markdown記法のプレビュー・ショートカット強化、目次自動生成など多機能を追加します。                |

</details>

---

## 補足

**拡張機能は用途やプロジェクトに合わせて追加・削除してください。**  
より詳細な解説や設定例が必要な場合は[公式マーケットプレイス](https://marketplace.visualstudio.com/vscode)で各拡張機能の詳細を参照してください。

---