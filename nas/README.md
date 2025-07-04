# NAS セットアップガイド（nas/README.md）

このディレクトリは、Ubuntu 上で家庭内または開発用のファイルサーバ（NAS）を構築するための手順と設定ファイルをまとめたものです。

`samba` を用いた簡易なファイル共有設定が中心で、LAN 内の他のデバイス（Windows/Mac/Linux）からアクセス可能になります。

---

## 📁 ディレクトリ構成

| ファイル / フォルダ | 説明 |
|---------------------|------|
| `nas_setup.md` | NAS構築の手順書（詳細な解説付き） |
| `setup_nas.sh` | NASの自動セットアップ用スクリプト |
| `smb_conf_example.conf` | `smb.conf` の設定例（共有フォルダの定義） |
| `images/` | 設定画面や動作イメージを保存 |

---

## 🚀 クイックスタート（自動構築）

次のコマンドで NAS サーバを構築できます：

```bash
cd nas
bash setup_nas.sh
```

実行内容：
- samba のインストール
- ユーザー共有ディレクトリの作成
- smb.conf の自動バックアップと上書き
- ファイアウォールの許可（必要に応じて）

---

## 📄 手動構築の参考

詳しく手動で設定したい場合は [`nas_setup.md`](./nas_setup.md) を参照してください。

---

## 💡 共有フォルダの場所について

- 初期設定では `/srv/samba/share` に共有フォルダを作成します。
- `/home/` 以下に作成したい場合は `setup_nas.sh` または `smb_conf_example.conf` を修正してください。

---

## 🔒 注意点

- セキュリティやゲストアクセス制限については用途に応じて `smb.conf` を編集してください。
- 公開ネットワークでの運用は非推奨です。ローカルネットワーク専用を想定しています。

---

## 📎 関連ファイル

- `smb_conf_example.conf` を `/etc/samba/smb.conf` に上書きすることで設定を反映できます。
- 変更後は `sudo systemctl restart smbd` でサービスを再起動してください。
