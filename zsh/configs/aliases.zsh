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

# External
alias wcode="cd /Volumes/\[C\]\ DevBoxWindows/code/"
