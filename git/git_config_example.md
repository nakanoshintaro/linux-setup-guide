# .gitconfig の設定例（git_config_example.md）

```ini
[user]
  name = Your Name
  email = you@example.com

[core]
  editor = code --wait
  autocrlf = input
  pager = less -FRX

[color]
  ui = auto

[alias]
  st = status
  co = checkout
  br = branch
  cm = commit
  last = log -1 HEAD

[init]
  defaultBranch = main
```

VSCode をデフォルトエディタに指定し、便利なエイリアスを追加しています。
