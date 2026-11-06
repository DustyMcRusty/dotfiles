#!/bin/sh
if [ -n "$NOCTALIA_WALLPAPER_PATH" ] && [ -f "$NOCTALIA_WALLPAPER_PATH" ]; then
    $HOME/.local/bin/uppy.sh "$NOCTALIA_WALLPAPER_PATH"
	ln -s $NOCTALIA_WALLPAPER_PATH $HOME/pape
fi
