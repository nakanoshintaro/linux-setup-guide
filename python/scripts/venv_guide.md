# Python 仮想環境（venv）ガイド（venv_guide.md）

Python 開発ではプロジェクトごとに仮想環境を分離することで、依存関係の衝突を防げます。

---

## ▶️ 仮想環境の作成と有効化

```bash
python3 -m venv .venv
source .venv/bin/activate
```

有効化中はプロンプトに `(venv)` が表示されます。

---

## ❌ 仮想環境の終了

```bash
deactivate
```

---

## 🔁 ディレクトリ移動で自動有効化する方法

### 1. `autoenv` を使用（推奨）

```bash
sudo apt install autoenv
```

プロジェクト内に `.env` を置く：

```bash
source .venv/bin/activate
```

---

## 🔍 トラブル例と対処法

| 症状 | 解決策 |
|------|--------|
| `venv` が存在しない | `python3-venv` をインストール |
| `activate` が効かない | `source` コマンドを使っているか確認 |
