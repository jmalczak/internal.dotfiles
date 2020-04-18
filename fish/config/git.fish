abbr -a -g gss git status -s
abbr -a -g gaa git add :/
abbr -a -g gcm git commit -n -m
abbr -a -g gco git checkout 
abbr -a -g gps git push
abbr -a -g gpl git pull
abbr -a -g gcl git clean -nd
abbr -a -g gclf git clean -fd

function gplall
    for d in */ 
        cd $d
        git pull
        cd ..
    end 
end
