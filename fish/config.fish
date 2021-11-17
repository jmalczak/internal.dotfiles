set -g -x TERM "xterm-256color" 
set -g -x LC_CTYPE "UTF-8" 

if status is-interactive
	# Set vi mode
	fish_vi_key_bindings

	# Disable greeting
	set fish_greeting
end

for file in ~/.config/fish/config/*
    source $file
end

for file in ~/.config_fish_local/*
    source $file
end
clear
