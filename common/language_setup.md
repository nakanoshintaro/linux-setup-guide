# 言語設定ガイド（language_setup.md）

このファイルでは、Ubuntu環境における表示言語・入力言語の設定方法について解説します。日本語と英語の切り替えや、日本語入力（Mozc）の有効化、ロケールやフォント設定についてまとめています。

---

## 🌐 表示言語を日本語にする（日本語化）

### 1. 日本語言語パックのインストール

```bash
sudo apt update
sudo apt install -y language-pack-ja
```

### 2. ロケールを日本語に設定

```bash
sudo update-locale LANG=ja_JP.UTF-8
```

再起動またはログアウト＆ログインで反映されます。

---

## 🌍 表示言語を英語にする（英語化）

日本語ロケールから英語に戻すには以下を実行：

```bash
sudo update-locale LANG=en_US.UTF-8
```

設定は `~/.profile` や `~/.bashrc` に反映される場合もあります。

---

## 🈳 日本語入力（Mozc）の設定

### 1. Mozcのインストール

```bash
sudo apt install -y ibus-mozc
```

### 2. ibusの再起動

```bash
ibus restart
```

### 3. 入力メソッドの設定画面を開く（GUI）

システム設定 > キーボード > 入力ソース
から「日本語（Mozc）」を追加します。

---

## 🖋 推奨フォントのインストール

```bash
sudo apt install -y fonts-noto-cjk
```

高品質な日本語表示が可能になります。

---

## 📁 ディレクトリ名を英語に統一する（ホーム以下）

日本語環境にしていると、`デスクトップ` や `ダウンロード` のように日本語名になります。英語名にするには以下を実行する。

```bash
LANG=C xdg-user-dirs-update
```

表示されるダイアログで `Don't ask me this again` にチェックを入れて更新する。

---

## 💡 補足

- GUI環境の場合は `gnome-language-selector` も活用可能です。
- 入力切替が反応しない場合は、ログアウト/再起動してください。
