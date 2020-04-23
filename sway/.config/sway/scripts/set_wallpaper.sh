#!/usr/bin/env sh
#Set wayland wallpaper
read src
[ -f $src ] && cp -f $src ~/.wallpaper/wallpaper.jpg && sway output "*" bg ~/.wallpaper/wallpaper.jpg fill
