#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

	# Set keyboard layout
setxkbmap -layout pt

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi


if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi


if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi


if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi


#Status bar loop
while true;
do
	xsetroot -name "$( date +"%H:%M:%S | %e/%m/%Y")"
	sleep 1	#update every second
done &

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


sh /home/marco/Scripts/background.sh &
udiskie &
exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
deadd-notification-center &
xsettingsd &
nm-applet &
picom --experimental-backends -fb
sh ~/.config/polybar/launch.sh &

exec i3
