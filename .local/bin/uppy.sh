#!/bin/sh

set -euo pipefail

ARG_ERROR="Usage: uppy.sh <file> <mode>\nAvailable modes: stretch, fit, fill, center or tile"

if [ $# -le 0 ] || [ $# -gt 2 ]; then 
	echo "$ARG_ERROR"; 
	return 1 2> /dev/null
	exit 1
fi

if [ ! -f $1 ]; then 
	echo "uppy.sh: $1 -> File not found!"
	return 1 2> /dev/null
	exit 1
fi

# [ $DOTSCRIPT_DEBUG ] && echo "Milestone 1"

LAST_PAPE=$(cat $HOME/.cache/wal/wal)
if [ -f '$LAST_PAPE' ] || [ '$LAST_PAPE' != '$1' ]; then
	# [ $DOTSCRIPT_DEBUG ] && echo "case statement"
	if [ $# -eq 2 ]; then 
		case $2 in
			'stretch' | 'fit' | 'fill' | 'center' | 'tile')
				echo "bigif 2"
				swaybg -i $1 -m $2 &
				;;
			*)
				echo "uppy.sh: $2 is not a valid wallpaper mode!"
				return 1 2> /dev/null
				exit 1
				;;
		esac
	# [ $DOTSCRIPT_DEBUG ] && echo "Milestone 2"
	else 
		killall swaybg -q
		wal -i $1 --backend fast_colorthief -ten
		swaymsg reload &
		swaybg -i $1 &
		clear
	fi
else
	killall swaybg -q
	wal -qRen
	swaymsg reload &
	swaybg -i $1 &
fi
# [ $DOTSCRIPT_DEBUG ] && echo "Everything OK!"
