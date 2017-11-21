# Env Variables
PATH="$PATH:/usr/local/bin/:$HOME/.internal.dotfiles/bin"
DIR="$HOME/.internal.dotfiles/zsh"
export TERM="xterm-256color"

# Include configs
source "$DIR/configs/prezto.zsh"
source "$DIR/configs/fasd.zsh"
source "$DIR/configs/aliases.zsh"

# Key Bindings
bindkey "^r" history-incremental-search-backward
bindkey '^k' kill-line
KEYTIMEOUT=1
clear
