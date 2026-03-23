# VNC（画面共有）

## 概要

VNC（Virtual Network Computing）は
**現在の画面をそのまま共有するリモート接続方式**

### 特徴

* 同じ画面を同時に操作できる
* ローカルと完全同期
* RDPと違いセッションが分離されない

---

## RDPとの違い

| 項目   | RDP    | VNC  |
| ---- | ------ | ---- |
| 画面   | 別セッション | 同じ画面 |
| 同時操作 | 不可     | 可能   |
| 用途   | 操作     | 共有   |

---

## 構成

```text
Windows ── VNC Viewer ── Ubuntu（x0vncserver）
```

---

## インストール

```bash
sudo apt update
sudo apt install tigervnc-standalone-server tigervnc-scraping-server -y
```

---

## パスワード設定

```bash
vncpasswd
```

---

## VNCサーバ起動（重要）

```bash
x0vncserver -display :0 -rfbport 5900 -localhost=0 -passwordfile ~/.vnc/passwd
```

---

## ポート開放

```bash
sudo ufw allow 5900/tcp
```

---

## 接続方法（Windows）

1. VNC Viewerを起動
2. 以下を入力

```text
<UbuntuのIP>:5900
```

例:

```text
192.168.1.7:5900
```

---

## IP確認

```bash
hostname -I
```

---

## トラブルシューティング

### 接続できない

#### 確認①：VNC起動

```bash
ss -tuln | grep 5900
```

#### NG例

```text
127.0.0.1:5900
```

→ ローカル限定

#### OK例

```text
0.0.0.0:5900
```

---

### 解決方法

```bash
pkill x0vncserver

x0vncserver -display :0 -rfbport 5900 -localhost=0 -passwordfile ~/.vnc/passwd
```

---

### Wayland問題

```bash
echo $XDG_SESSION_TYPE
```

* wayland → NG
* x11 → OK

#### 対処

ログアウト → Ubuntu on Xorg を選択

---

### ファイアウォール確認

```bash
sudo ufw status
```

---

## 注意

* LAN内利用推奨
* 外部公開はSSHトンネルを使用

---

## まとめ

* VNCは画面共有用
* RDPとは用途が異なる
* `x0vncserver`を使うことで既存画面を共有可能

