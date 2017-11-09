# General
alias cls="clear"

# Tools
alias vc="open -a Visual\ Studio\ Code"

# Git
alias gss="g status -s"
alias gaa="g add :/"
alias gcm="g commit -n -m"
alias gps="g push"
alias gpl="g pull"

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
alias wcode="cd /Volumes/\[C\]\ DevBoxWindows/code/"
