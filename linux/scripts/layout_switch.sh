#!/bin/bash
# If an explicit layout is provided as an argument, use it. Otherwise, select the next layout from
# the set [us, it, fr].
if [[ -n "$1" ]]; then
    setxkbmap $1
else
    layout=$(setxkbmap -query | awk '/layout/ {print $2}')
    case $layout in
        us)
                setxkbmap dk
            ;;
        *)
                setxkbmap us
            ;;
    esac
fi

