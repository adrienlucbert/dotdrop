#!/bin/sh

# Script from https://github.com/msaitz/polybar-bluetooth

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]; then
    printf '%s' "%{F#4c566a}%{F-}"
else
    if [ $(bluetoothctl info | grep 'Device' | wc -c) -eq 0 ]; then 
        printf '%s' ""
    else
        printf '%s' "%{F#81A1C1}%{F-}"
    fi
fi
