if status is-interactive
    # Commands to run in interactive sessions can go here
    echo " "
    echo "Are you willing to make the same choice consistently every day?"
    echo "Also, if you are reading this, there's a decent chance you're overthinking something so, like, don't."
    echo "Angel = Friction = Devil"
    echo " "
end

setfont lat0-08.psfu.gz -d

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
