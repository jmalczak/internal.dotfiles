# General
alias cls="clear"
alias reload="source ~/.zshrc"

# Tools
alias vc="open -a Visual\ Studio\ Code"

function v() {
    if [[ $(uname) == "Darwin" ]] 
    then
        command nvim "$@"
    else 
        command vim "$@"
    fi
}

function vim() {
    v "$@"
}

# Git
alias g="git"
alias gss="g status -s"
alias gco="g checkout"
alias gaa="g add :/"
alias gcm="g commit -n -m"
alias gps="g push"
alias gpl="g pull"
alias gcl="g clean -nd"
alias gclf="g clean -fd"

function gplall() { 
    for d in */ ; do
        cd $d
        git pull
        cd ..
    done
}

# Tmux
alias tm="TERM=screen-256color tmux attach -t default || tmux new -s default"

# Paths
alias ls="exa"
function cs() { cd "$1" && ls; } 
function ..() { cd .. && ls; } 

# Cat
alias cat="bat"

# Find
alias find="fd"

# Grep
alias grep="rg"

# Docker
alias dps='docker ps --format "{{.ID}} :: {{.Names}}"'
alias dpsa='docker ps -a --format "{{.ID}} :: {{.Names}} :: {{.Status}}"'
function dsta() {  docker start $(docker ps -aqf "name=$1"); }
function dsto() {  docker stop $(docker ps -aqf "name=$1"); }

# Midnight Commander
alias mc='LANG=en_US.UTF-8 LC_CTYPE=en_US.UTF-8 mc'

alias t="tree -L 1"
alias tt="tree -L 2"
