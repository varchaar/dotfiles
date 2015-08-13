#!/bin/bash

export PATH=$PATH:~/.panel:~/.scripts

sxhkd -m 1 &

compton --config ~/.config/compton/compton.conf -b
# Set wallpaper
hsetroot -fill ~/Pictures/ill_follow_the_sun.png

xsetroot -cursor_name left_ptr 
xset +fp /usr/share/fonts/local
xset fp rehash
# Load X resources
xrdb -load $HOME/.Xresources_NumixDarkest

mpd
panel &
#plank &

exec bspwm
