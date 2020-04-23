#!/usr/bin/env sh
#Choose Wallpaper using sxiv
#Himanshu Ahire
[ -d $1 ] && sxiv -to $1/*.jpg | head -1 



