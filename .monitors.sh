if xrandr -q | grep 'HDMI-0 connected'; then
	xrandr --output eDP-1-1 --off --output HDMI-0 --auto
else
	xrandr --output eDP-1-1 --auto
fi
