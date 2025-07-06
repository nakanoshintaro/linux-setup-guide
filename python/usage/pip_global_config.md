# pip のグローバル設定（pip_global_config.md）

pip の挙動をカスタマイズするには `~/.config/pip/pip.conf` を編集します。

---

## 📁 ファイルの例

```ini
[global]
timeout = 60
index-url = https://pypi.org/simple
trusted-host = pypi.org
cache-dir = ~/.cache/pip
```

---

## 🌐 ミラーを使用する場合（例：国内ミラー）

```ini
index-url = https://mirror.kakao.com/pypi/simple
```

---

## 🔐 プロキシ環境での例

```ini
proxy = http://user:pass@proxy.example.com:8080
```
