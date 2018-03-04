# Env Variables
PATH="$PATH:/usr/local/bin/:$HOME/.internal.dotfiles/_mac/_bin:$HOME/.internal.dotfiles/_linux/_bin"
DIR="$HOME/.internal.dotfiles/zsh"
export TERM="xterm-256color"

# Set up zgen
source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen prezto
  
  # generate the init script from plugins above
  zgen save
fi

# Include configs
source "$DIR/configs/prezto.zsh"
source "$DIR/configs/fasd.zsh"
source "$DIR/configs/aliases.zsh"

# Key Bindings
bindkey "^r" history-incremental-search-backward
bindkey '^k' kill-line
KEYTIMEOUT=1

# Correction fix
unsetopt correct
clear

export LC_ALL=pl_PL.UTF-8
export LANG=pl_PL.UTF-8
