# Env Variables
PATH="$PATH:/usr/local/bin/"
DIR="$HOME/.internal.dotfiles/zsh"
export TERM="xterm-256color"

# Zprezto additional modules path
fpath=(
  ${HOME}/.internal.dotfiles/zsh/zprezto/modules/prompt/functions
  ${fpath}
)

# Set up zgen
source "${HOME}/.zgen/zgen.zsh"

# If the init scipt doesn't exist
if ! zgen saved; then

  # Specify plugins here
  zgen prezto
  zgen prezto '*:*' color 'yes'

  # Load prezto modules
  zgen prezto environment
  zgen prezto git

  zgen prezto editor key-bindings 'vi'
  zgen prezto editor 

  zgen prezto directory 
  zgen prezto spectrum 
  zgen prezto utility 

  zgen prezto tmux:auto-start local 'yes'
  zgen prezto tmux 

  zgen prezto prompt theme 'sorin'
  zgen prezto prompt 
  
  # Generate the init script from plugins above
  zgen save
fi

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
