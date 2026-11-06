# TODO: Delegate things to separate files, to make config more modular

y() {
	set -- "$@" --cwd-file "$(mktemp -t yazi-cwd.XXXXXX)"
	command yazi "$@"
	shift $(($# - 1))
	set -- "$(command cat < "$1"; printf .; command rm -f -- "$1")"
	set -- "${1%.}"
	[ "$1" != "$PWD" ] && [ -d "$1" ] && command cd -- "$1" || command true
}

# Exports
export EDITOR=nvim
export HISTIGNORE='*sudo -S*'
export PATH=$PATH:$HOME/.cargo/bin/:$HOME/go/bin/:$HOME/.local/share/applications/:$HOME/.local/bin/:$HOME/.local/share/bob/nvim-bin/
export QT_QPA_PLATFORMTHEME=qt5ct
export WAYFIRE_CONFIG_FILE=$HOME/.config/wayfire/wayfire.ini

# Get current resolution
resolution_test=$(fbset -s | grep 'mode ' | awk '{ print $2 }' | tr -d '"')
export MON_RES=$resolution_test

# per-machine stuff
source $HOME/.bash/machine_rc.sh
source $HOME/.bash_aliases

clear
$HOME/.bash/fetch.sh

# Created by `pipx` on 2026-11-04 20:50:13
export PATH="$PATH:/home/apolonio/.local/bin"
