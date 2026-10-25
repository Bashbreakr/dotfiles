#!/usr/bin/env bash

WALLDIR="$HOME/.wallpapers"

if [ ! -d "$WALLDIR" ]; then
    echo "Directory $WALLDIR does not exist."
    exit 1
fi

if ! pgrep -x hyprpaper >/dev/null; then
    hyprpaper &
    sleep 1
fi

focused_monitor=$(hyprctl monitors -j | jq -r '.[] | select(.focused == true) | .name')

if [ -z "$focused_monitor" ]; then
    focused_monitor=$(hyprctl monitors | awk '/Monitor/ {name=$2} /focused: yes/ {print name}' | head -n 1)
fi

if [ -z "$focused_monitor" ]; then
    focused_monitor="eDP-1"
fi

selected_file=$(find "$WALLDIR" -type f | while read -r img; do
    filename=$(basename "$img")
    echo -en "$filename\0icon\x1f$img\n"
done | sort | rofi -dmenu -show-icons -i -theme "$HOME/.dotfiles/rofi/wallpaper_theme.rasi" -p "Wallpaper ($focused_monitor):")

if [ -z "$selected_file" ]; then
    exit 0
fi

FULL_PATH="$WALLDIR/$selected_file"

hyprctl hyprpaper preload "$FULL_PATH"
hyprctl hyprpaper wallpaper "$focused_monitor,$FULL_PATH"

hyprctl hyprpaper unload unused
