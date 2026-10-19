# TODO: Delegate things to separate files, to make config more modular

# Exports
export PATH=$PATH:$HOME/.cargo/bin/:$HOME/go/bin/:$HOME/.local/share/applications/:$HOME/.local/bin/:$HOME/.local/share/bob/nvim-bin/
export WAYFIRE_CONFIG_FILE=$HOME/.config/wayfire/wayfire.ini
export EDITOR=nvim
export QT_QPA_PLATFORMTHEME=qt5ct

# Get current resolution
resolution_test=`fbset -s | grep 'mode ' | awk '{ print $2 }' | tr -d '"'`
export MONITOR_RESOLUTION=$resolution_test

# Aliases
alias bare="clear && exec '$SHELL'"
alias cd..="cd .."
alias fetch="$HOME/.bash/fetch.sh"
alias l="ls -XA --group-directories-first --file-type --color=auto"
alias weather="curl wttr.in/?T1"

# per-machine stuff
source $HOME/.bash/machine_rc.sh

clear
$HOME/.bash/fetch.sh
