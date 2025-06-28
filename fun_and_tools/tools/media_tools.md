# 実用的なメディアツール（media_tools.md）

開発者や一般ユーザーでも活用しやすい、音声・映像・画像処理系の定番ツールを紹介します。

---

## 🎥 VLC

```bash
sudo apt install vlc
```

- オープンソースの高機能メディアプレイヤー。
- ほぼ全ての動画・音声フォーマットを再生可能。
- ストリーム再生、録音機能もあり。

---

## 🎙 Audacity

```bash
sudo apt install audacity
```

- 波形編集ができる音声編集ソフト。
- ノイズ除去、エフェクト、カット＆フェード処理が直感的にできる。

---

## 🛠 FFmpeg

```bash
sudo apt install ffmpeg
```

- 動画・音声の変換、抽出、録画、結合などに使用。
- CLI操作例：
  ```bash
  ffmpeg -i input.mp4 -vn -acodec copy output.aac
  ```

---

## 📺 OBS Studio

```bash
sudo apt install obs-studio
```

- 配信・録画対応の万能ビデオツール。
- ゲーム配信や画面キャプチャ、Webカメラ合成などに使える。

---

## 🖼 GThumb

```bash
sudo apt install gthumb
```

- GNOME系の画像ビューア。
- 基本的な編集（回転・切り抜き・補正）も可能。

---

## 🧙 ImageMagick

```bash
sudo apt install imagemagick
convert input.png -resize 50% output.png
```

- CLIで画像変換、合成、テキスト挿入などが可能な強力ツール。
- `convert`, `mogrify`, `identify` など多数のコマンドが含まれる。
