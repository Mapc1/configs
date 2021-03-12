if xrandr -q | grep 'HDMI-0 connected'; then
	xrandr --output HDMI-1-0 --right-of eDP-1
else
	xrandr --output eDP-1 --auto
fi
