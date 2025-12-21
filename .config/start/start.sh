sleep 1

# xrandr --output HDMI-2 --mode 1920x1080 --output eDP-1 --off

sleep 1

xset s off -dpms

sleep 1

setxkbmap -model abnt2 -layout br -variant abnt2
xinput float 12

~/.fehbg &
