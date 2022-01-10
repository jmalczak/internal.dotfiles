# Env Variables
PATH="$PATH:/usr/local/bin/"
DIR="$HOME/.internal.dotfiles/zsh"
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"
export LC_CTYPE="UTF-8"

ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

# Include configs
source "$DIR/configs/fasd.zsh"
source "$DIR/configs/aliases.zsh"

# Key Bindings
bindkey "^r" history-incremental-search-backward
bindkey '^k' kill-line
KEYTIMEOUT=1

# Correction fix
unsetopt correct

# Load local settings

if [ -d ~/.local_configs ]
then
    for file in $(ls ~/.local_configs/*.zsh)
    do
        source "$file"
    done
fi
