#!/usr/bin/env bash

Location=$HOME/Pictures/`date +%Y-%m-%d_%H:%M:%S`.png


case "$1" in
    full)
        maim $Location
        ;;
    current)
        maim -u $Location
        ;;
    partial)
        maim -s $Location
        ;;
    *)
        echo "Usage: $0 {full|current|partial} {clipboard}"
        exit 2
esac

play /usr/share/sounds/freedesktop/stereo/screen-capture.oga

case "$2" in
    clipboard)
        xclip -selection clipboard -t "image/png" < $Location
        ;;
esac
