#!/bin/bash

user=`w | ag {{@@ wm @@}} | cut -d' ' -f1`
[[ -z "$user" ]] && return

if [ "${1}" == "pre" ]; then
	runuser -l $user -c "/home/$user/.config/autostart.sh sleep"
elif [ "${1}" == "post" ]; then
	runuser -l $user -c "/home/$user/.config/autostart.sh wakeup"
fi
