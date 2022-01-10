
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
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

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
