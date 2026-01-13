# per-machine stuff
source ~/.profile

set -o vi

# Exports
export PATH=$PATH:$HOME/.cargo/bin/:/home/apolonio/go/bin/
export WAYFIRE_CONFIG_FILE=$HOME/.config/wayfire/wayfire.ini

# Aliases
alias l="ls -XA --group-directories-first --file-type"
alias weather="curl wttr.in/?t1"
alias cage="cage -s"
alias edit="helix"
alias tkill="pkill --signal 9"
