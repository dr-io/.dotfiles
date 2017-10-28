#!/bin/sh

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

if [ `type -P xbindkeys` ]; then
    # Load custom keyboard key bindings
        xbindkeys
fi

xrandr --output DP-2 --mode 2560x1440 --rate 165 &
nvidia-settings --load-config-only &

sh .scripts/wal-feh.sh "/home/dan/Pictures/Wallpapers/WQHD" &

exec bspwm

