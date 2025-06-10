if status is-interactive
  # wal -Renq

    # Commands to run in interactive sessions can go here
end

function l
	ls -la
end

function cls
	clear
end

function qq
	exit
end

function szyp
	sudo zypper $argv
end

function zyp
	zypper $argv
end

function tmux
  zellij $argv
end

# Created by `pipx` on 2025-05-27 14:23:02
set PATH $PATH /home/apolonio/.local/bin

zoxide init --cmd cd fish | source
