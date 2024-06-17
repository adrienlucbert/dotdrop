#!/bin/bash

ONLINE_ICON="󰕥"
ONLINE_COLOR="#42A5F5"
OFFLINE_ICON="󰦜"
OFFLINE_COLOR="#EC7875"

if grep -q stopped <(tailscale status 2>/dev/null); then
	echo "%{F${OFFLINE_COLOR}}${OFFLINE_ICON}%{F-}"
else
	echo "%{F${ONLINE_COLOR}}${ONLINE_ICON}%{F-}"
fi
