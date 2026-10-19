FETCH_PROG=fastfetch

RET_LOGO="amiga"
MOD_LOGO="prismlinux_small"
DEF_LOGO="cutefishos"

RET_ARGS="-s Title:OS:CPU:Memory:Disk:Colors \
		-l $RET_LOGO"

MOD_ARGS="-l $MOD_LOGO"

DEF_ARGS="--logo-padding-bottom 0 \
		--logo-padding-left 7 \
		--logo-padding-right 7 \
		--logo-position top \
		--logo-type auto \
		-c examples/20.jsonc \
		-l $DEF_LOGO" 

case $TERM in
	*xterm*)
		echo
		$FETCH_PROG $RET_ARGS
		echo
		;;
	alacritty | foot | kitty | ghostty)
		echo
		$FETCH_PROG $MOD_ARGS
		echo
		;;
	*)
		clear
		echo
		$FETCH_PROG $DEF_ARGS
		echo
		;;
	esac

