# alias_list.sh
# よく使うエイリアス集（~/.bashrc などから source して使用）

# --- ls 系 ---
alias ln='ls -FA --group-directories-first'  # ディレクトリ優先で ls 表示
alias lt='ls -lt'                             # 更新日時でソート
alias lS='ls -lSh'                            # サイズ順でソート

# --- パス移動・終了 ---
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias h='cd ~'
alias d='cd ~/Downloads/'
alias c='clear'
alias e='exit'

# --- Python 関連 ---
alias python='python3'
alias py='python3'
alias pipu='pip3 install --upgrade'

# --- APT 関連 ---
alias sau='sudo apt update'
alias saug='sudo apt update && sudo apt upgrade -y'
alias ain='sudo apt install'

# --- 安全系コマンド ---
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias m='mkdir'

# --- 設定ファイル関連 ---
alias ed='gedit ~/.bashrc'
alias sb='source ~/.bashrc'
