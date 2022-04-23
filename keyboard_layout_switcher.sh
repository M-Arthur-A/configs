#!/bin/bash
# LICENSE: PUBLIC DOMAIN
# switch between my layouts

# If an explicit layout is provided as an argument, use it. Otherwise, select the next layout from
# the set [us, ru].
if [[ -n "$1" ]]; then
    setxkbmap $1
else
    layout=$(setxkbmap -query | awk 'NR==3{print $2}')
    case $layout in
        us)
                setxkbmap ru
            ;;
        *)
                setxkbmap us
            ;;
    esac
fi
