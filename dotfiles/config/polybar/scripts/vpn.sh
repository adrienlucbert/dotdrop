#!/bin/bash

ONLINE_ICON="󰕥"
ONLINE_COLOR="#42A5F5"
OFFLINE_ICON="󰦜"
OFFLINE_COLOR="#EC7875"

vpn status 2>&1 >/dev/null && echo "$(vpn current) %{F${ONLINE_COLOR}}${ONLINE_ICON}%{F-}" || echo "%{F${OFFLINE_COLOR}}${OFFLINE_ICON}%{F-}"
