# SSH鍵による GitHub 認証手順（ssh_git_auth.md）

---

## 🔑 鍵の作成と登録

```bash
ssh-keygen -t ed25519 -C "you@example.com"
```

- ファイル名は `~/.ssh/id_ed25519` など。
- 公開鍵（`.pub`）の中身を GitHub の「SSH and GPG keys」に登録。

---

## ➕ SSHエージェントに鍵を追加

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
```

---

## ✅ 接続確認

```bash
ssh -T git@github.com
```

---

## 🧩 VSCodeの補足

- VSCode が自動で鍵を認識することも多い。
- GitLens や Source Control タブでもエラーがないかチェック可能。
