export LANG=en_US.UTF-8
export ENV=$HOME/.kshrc

xrdb -merge $HOME/.Xresources
xidle &

# disable annoying beep
xset b off

# enable trackpoint for thinkpads
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation" 1
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Button" 2
xinput set-prop "/dev/wsmouse" "WS Pointer Wheel Emulation Axes" 6 7 4 5

# use caps lock as ctrl key
setxkbmap -option ctrl:nocaps

# set bg
$HOME/.fehbg &

# start cwm
exec cwm
