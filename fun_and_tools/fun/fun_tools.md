# ネタ系コマンド紹介（entertainment_tools.md）

作業の合間や初学者へのデモ、システムに遊び心を取り入れたいときにおすすめのコマンド群を紹介します。

---

## 🚂 `sl`

```bash
sudo apt install sl
sl
```

- `ls` を間違えて入力した際に、画面上を蒸気機関車が走るジョークコマンド。
- `sl -a` や `sl -l` などのオプションも試してみましょう。

---

## 🐮 `cowsay`

```bash
sudo apt install cowsay
cowsay "Hello, world!"
```

- 牛のアスキーアートがセリフをしゃべる。
- 他の動物にするには `cowsay -f dragon Hello!`

---

## 🌈 `lolcat`

```bash
sudo apt install lolcat
echo "Colorful world!" | lolcat
```

- 標準出力を虹色に変換。
- `figlet`, `cowsay` と組み合わせて派手な出力が可能。

#### bashrc へ記述

```bash
echo 'echo "Hello $(whoami)" | lolcat' >> ~/.bashrc
echo 'echo "Welcome to your terminal!" | lolcat' >> ~/.bashrc
```

---

## 🔤 `figlet`, `toilet`

```bash
sudo apt install figlet toilet
figlet Hello
toilet -f mono12 -F metal Hello
```

- 大きなアスキーアートの文字列を出力。

---

## 🧠 `fortune` + `cowsay`

```bash
sudo apt install fortune cowsay
fortune | cowsay | lolcat
```

- ランダムな格言や冗談を `cowsay` が喋る。名コンビ。

---

## 🖼 `neofetch`

```bash
sudo apt install neofetch
neofetch
```

- システム情報（OS、メモリ、CPU等）をアート付きで出力。
- `.bashrc` に入れて毎回表示もおすすめ。

---


