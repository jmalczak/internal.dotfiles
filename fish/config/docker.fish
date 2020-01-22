alias dps='docker ps --format "{{.ID}} :: {{.Names}}"'
alias dpsa='docker ps -a --format "{{.ID}} :: {{.Names}} :: {{.Status}}"'

function dsta
	docker start (docker ps -aqf "name=$argv[1]"); 
end

function dsto
	docker stop (docker ps -aqf "name=$argv[1]"); \
end

