# On i3, when switching workspaces, Unity windows are not redrawn, and thus, transparent until mouseover
# This script changes Unity windows border size to force-redraw them everytime the current workspace changes
xprop -spy -root _NET_ACTIVE_WINDOW | grep --line-buffered -oP '# \K.*' | xargs -I{} xprop -id {} WM_CLASS | grep --line-buffered Unity | xargs -I{} bash -c "for p in {1,0}; do i3-msg '[class=\"Unity\"] border pixel '\$p; done"
