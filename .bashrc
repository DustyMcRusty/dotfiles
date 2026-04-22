# per-machine stuff

# Exports
export PATH=$PATH:$HOME/.cargo/bin/:$HOME/go/bin/:$HOME/.local/share/applications/:$HOME/.local/bin/:$HOME/.local/share/bob/nvim-bin/
export WAYFIRE_CONFIG_FILE=$HOME/.config/wayfire/wayfire.ini

# Aliases
alias l="ls -XA --group-directories-first --file-type --color=auto"
alias weather="curl wttr.in/?t1"
alias edit="helix"
alias tkill="pkill --signal 9"
alias scr="screen -R"

# Run a program detached from terminal
run() {
  for arg in "$@"; do
    nohup "$arg" &> /dev/null &
  done
}

source ~/.machine_rc
