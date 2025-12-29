#! /bin/bash

set +e

dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots

swaync &

swaybg -i ~/Pictures/wallpapers/kanagawa.png &

waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css &

wl-clip-persist --clipboard regular &

wl-paste --watch cliphist store &
