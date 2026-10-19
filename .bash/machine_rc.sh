gpu_run() {
	DRI_PRIME=1 $@
}

alias xamber="xrandr --output HDMI-1 --set saturation 0 --brightness 0.9 --gamma 4:0.20:0.01"
alias xclear="xrandr --output HDMI-1 --set saturation 50 --brightness 1 --gamma 1:1:1"
