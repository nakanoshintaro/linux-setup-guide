# 共通セットアップ(common)

Linux環境を整える上で最初に行う「共通の初期設定」をまとめたものです。すべてのカテゴリ(ROS、NAS、VSCodeなど)に共通して使える内容です。

---

## 📄 内容一覧

| ファイル/ディレクトリ         | 説明 |
|------------------------------|------|
| `scripts/install_base.sh`            | 基本的なパッケージのインストールスクリプト |
| `alias_list.md`              | よく使うエイリアスの一覧 |
| `alias_list.sh`              | ~/.bashrcで呼び出されるエイリアス設定用ファイル |
| `alias_setup.sh`             | エイリアス設定を恒久的に反映させる自動セットアップスクリプト |
| `basic_packages.md`          | 手動でインストールする際に参考になるパッケージリスト |
| `language_setup.md`          | 日本語環境（または英語環境）の切り替え手順 |
| `images/`                    | 説明画像などを格納するディレクトリ |

---

## 🚀 基本セットアップ手順

以下のコマンドを実行すると、基本的なパッケージがインストールされ、開発の準備が整います。

```bash
bash ~/linux-setup-guide/common/install_base.sh
```

## ✏️ エイリアスのカスタマイズ
[`alias_list.md`](alias_list.md)に、開発に便利なエイリアス例を多数掲載しています。好みに合わせて .bashrc に追加してください。

以下のコマンドで個人的に便利なエイリアスを即座に反映できます。`~/.bash_aliases`に `alias` 設定を記述しても動作するはずです。

```bash
cp ~/linux-setup-guide/common/alias_list.sh ~/.alias_list.sh
bash ~/linux-setup-guide/common/alias_setup.sh
```

実行すると `~/.bashrc` に以下のコードが書き加えられます。

```
if [ -f ~/.alias_list.sh ]; then
    source ~/.alias_list.sh
fi
```

## 🌐 言語設定の変更
[`language_setup.md`](language_setup.md)に従って、日本語または英語環境の切り替えを行ってください。多言語環境での動作確認にも対応しています。

## 🛠 `.bashrc` を整える
自分の `~/.bashrc` にエイリアスや環境変数の設定を追加してください。

```bash
gedit ~/.bashrc
```

変更内容を現在のターミナルに反映するには以下のコマンドを実行します。

```bash
source ~/.bashrc
```

## 📝 メモ
- スクリプトの実行には sudo 権限が必要な場合があります。
- ネットワーク環境によっては一部のパッケージがインストールできないことがあります。
- ログやエラーは必要に応じて記録しておくことをおすすめします。
