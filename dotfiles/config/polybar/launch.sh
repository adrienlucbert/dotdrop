#!/bin/sh

# Terminate already running bar instances
pgrep -x polybar | xargs kill -9

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

for m in $(polybar --list-monitors | cut -d":" -f1); do
	MONITOR=$m polybar -q main -c ~/.config/polybar/config.ini &
done
