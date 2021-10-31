#!/bin/sh

is_paused=$(dunstctl is-paused)

if [ "$1" == "toggle" ]; then
    notify-send "DUNST_COMMAND_TOGGLE"
fi

if [ $is_paused == 'true' ]; then
    printf '%s' '%{F#4c566a}%{F-}'
else
    printf '%s' '%{F#81A1C1}%{F-}'
fi

