# Env Variables
PATH="$PATH:/usr/local/bin/"
DIR="$HOME/.internal.dotfiles/zsh"
export ZSH="$HOME/.oh-my-zsh"
export TERM="xterm-256color"
export LC_CTYPE="UTF-8"

ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

plugins=(git)

# Include configs
source "$DIR/configs/aliases.zsh"

# Include pyenv
source "$DIR/configs/pyenv.zsh"

# Zoxide
eval "$(zoxide init zsh)"

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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/homebrew/opt/openjdk@11/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:/opt/homebrew/lib/ruby/gems/3.3.0/bin:$PATH"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
