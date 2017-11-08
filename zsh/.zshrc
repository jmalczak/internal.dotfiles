PATH="$PATH:/usr/local/bin/:$HOME/.internal.dotfiles/bin"
DIR="$HOME/.internal.dotfiles/zsh"

export TERM="xterm-256color"

source "$DIR/configs/prezto.zsh"
source "$DIR/configs/fasd.zsh"
source "$DIR/configs/aliases.zsh"

bindkey "^r" history-incremental-search-backward
bindkey '^k' kill-line
