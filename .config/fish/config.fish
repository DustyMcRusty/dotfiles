if status is-interactive
    # Commands to run in interactive sessions can go here
    echo "Also, if you are reading this, there's a decent chance you're overthinking something so, like, don't."
		echo "1. Learn how to learn the thing you want to learn."
		echo "2. Focus and dedicate time to learning. Ideally find somewhere with no distractions. "
		echo "3. Do the thing you want to be good at."
		echo "4. Find your weakest points and work on those."
		echo "5. Test yourself."
		echo "6. Get feedback. It's harder for self-learners but ideally you'll have someone to evaluate your work."
		echo "7. Don't just accept the answer as the answer. Understand why it's the answer and build your own understanding of how to get there."
end

# User-defined variables
set -Ux MANPAGER "nvim +Man!"

# User-defined commands
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

function zel
    zellij $argv
end

function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if read -z cwd <"$tmp"; and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

function weather
	curl wttr.in/?T0
end

# Created by `pipx` on 2025-05-27 14:23:02
set PATH $PATH /home/apolonio/.local/bin

zoxide init --cmd cd fish | source
