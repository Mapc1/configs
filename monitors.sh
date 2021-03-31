if xrandr -q | grep 'HDMI-0 connected'; then
	  xrandr --output HDMI-0 --auto
    xrandr --output HDMI-0 --right-of eDP-1-1
    xrandr --output HDMI-0 --primary
elif xrandr -q | grep 'HDMI-1-0 connected'; then
    xrandr --output HDMI-0 --auto
  ┊ xrandr --output HDMI-0 --right-of eDP-1
    xrandr --output HDMI-0 --primary
else
  xrandr --output eDP-1 --auto
  xrandr --output eDP-1 --primary
fi
