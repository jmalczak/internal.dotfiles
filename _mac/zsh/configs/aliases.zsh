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
alias gss="g status -s"
alias gaa="g add :/"
alias gcm="g commit -n -m"
alias gps="g push"
alias gpl="g pull"
alias gcl="g clean -nd"
alias gclf="g clean -fd"

# Tmux
alias tm="TERM=screen-256color tmux attach -t default || tmux new -s default"

# Paths
function cs() { cd "$1" && ls; } 
function ..() { cd .. && ls; } 
alias src="cd ~/code/source"

# Docker
alias dps='docker ps --format "{{.ID}} :: {{.Names}}"'
alias dpsa='docker ps -a --format "{{.ID}} :: {{.Names}} :: {{.Status}}"'
function dsta() {  docker start $(docker ps -aqf "name=$1"); }
function dsto() {  docker stop $(docker ps -aqf "name=$1"); }

# External
function dbwc() {
    umount "/Volumes/\[C\]\ DevBoxWindows/" 2&>/dev/null
    if [[ ! -d ~/devboxwindows ]]
    then
        mkdir ~/devboxwindows
    fi 

    if [[ ! -d ~/devboxwindows/code ]]
    then
        mount_smbfs -N  "//Guest:@DevBoxWindows._smb._tcp.local/%5BC%5D%20DevBoxWindows" ~/devboxwindows
    fi
    cd ~/devboxwindows/code
}

alias t="tree -L 1"
alias tt="tree -L 2"

