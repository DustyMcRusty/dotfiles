if status is-interactive
    # Commands to run in interactive sessions can go here
    echo " "
    echo "Are you willing to make the same choice consistently every day?"
    echo "Also, if you are reading this, there's a decent chance you're overthinking something so, like, don't."
    echo " "
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

function brave
    flatpak run com.brave.Browser $argv
end

# Created by `pipx` on 2025-05-27 14:23:02
set PATH $PATH /home/apolonio/.local/bin

zoxide init --cmd cd fish | source
