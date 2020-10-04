
#!/usr/bin/env bash

##Start NumLock
numlockx &

#Configure Resolution , refresh rates and. Tear Free and AMD sync
#xrandr --auto
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 74.97 --set TearFree on --set vrr_capable 1


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


if [[ "$2" == "steam" ]]; 
then
    exec steam 
elif [[ "$2" == "openbox" ]];
then
    exec /usr/bin/openbox-session 
else
    pkill emacs
    emacs --daemon & 
    pkill mpd
    mpd &
    ~/work/scripts/dropbox.sh
    exec dwm
fi

