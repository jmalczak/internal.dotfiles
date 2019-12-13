function gplall
    for d in */ 
        cd $d
        git pull
        cd ..
    end
end 

