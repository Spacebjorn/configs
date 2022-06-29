#!/bin/bash
# If an explicit layout is provided as an argument, use it. Otherwise, select the next layout from
# the set [us, it, fr].
if [[ -n "$1" ]]; then
    setxkbmap $1
else                          # Im sorry Jesus
    layout=$(setxkbmap -query | awk '{ if(/variant/) {variant=$2} else if ($1 ~ /layout/) layout=$2} END{print variant ? variant : layout}')
    case $layout in
        us)
                setxkbmap dk
            ;;
        dk)
                setxkbmap us -variant colemak
            ;;
        colemak)
                setxkbmap us
            ;;
        *)
                setxkbmap us
            ;;
    esac
fi

