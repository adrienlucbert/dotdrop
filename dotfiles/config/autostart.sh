#!/usr/bin/env bash

### Helpers {

action="$1";

# Is logout command (Cleanup)
is_kill() { [[ "$action" == "kill" ]]; }

# Is process $1 running
is_running() { test $(pgrep $1 | head -n1); }

# Only run when there are no windows on the screen
on_startup() { is_kill || [[ "$(wmctrl -l | wc -l)" = "0" ]] && $@ & }

# Run only once. If an instance is already running, noop
once() {
  local name=$1; shift
  if (is_kill); then
    killall $name
  else
    is_running $name || $@ &
  fi
}

# Kill previous instance and run again
run() {
  local name=$1; shift
  [[ ! -z "$name" ]] && is_running $name && pkill $name
  is_kill || $@ &
}
# }


##### Autostart {{{

  # Status bar
  # run "polybar" ~/.config/polybar/launch.sh
  run "" i3status

  # Better key autorepeat rate
  run "" xset r rate 200 50

  # Set default cursor
  run "" xsetroot -cursor_name left_ptr

  # Wallpaper
  run "" feh --bg-fill ~/.wall

  # Auto lock when idle
  run "idlelock" idlelock

  # Notification daemon
  once "dunst" dunst -config ~/.config/dunst/dunstrc

  # Compositor
  run "picom" picom --config ~/.config/picom/picom.conf;
  # run "xcompngr" xcompmgr;

  # Network manager applet
  once "nm-applet" nm-applet

  # Bluetooth applet
  once "blueman-applet" blueman-applet

  # Automatic screen temperature and brightness
  # run "redshift" redshift -c ~/.config/redshift/redshift.conf

  # Hotkey daemon 
  run "sxhkd" sxhkd -c ~/.config/sxhkd/sxhkdrc

# }}}

disown;
