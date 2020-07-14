
#Start NumLock
#numlockx &

# Start urxvt daemon
#urxvtd -q -f -o

# Spawn a terminal
#urxvtc &

xrandr --auto

[ -f ~/.xprofile ] && source ~/.xprofile

xset fp rehash
xset -b # disable bell

xset s off

if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*; do
		[ -x "$f" ] && . "$f"
	done
	unset f
fi

export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit

#exec bspwm 
exec dwm 

