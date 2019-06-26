#!/usr/bin/env bash
# ---
# Use "run program" to run it only if it is not already running
# Use "program &" to run it regardless
# ---
# NOTE: This script runs with every restart of AwesomeWM
# TODO: run_once

function run {
    if ! pgrep $1 > /dev/null ;
    then
        $@&
    fi
}

# Music
run mpd ~/.config/mpd/mpd.conf

# Emacs daemon
#run emacs --daemon

# Load terminal colorscheme and settings
#xrdb ~/.Xresources

# Urxvt daemon
#run urxvtd -q -o -f

# Mpv input file
if [ ! -e /tmp/mpv.fifo ]; then
    mkfifo /tmp/mpv.fifo
fi

# Desktop effects
compton -b --config ~/.config/compton/compton.conf

# Battery notifications
# run battery_daemon

# Network manager tray icon
run nm-applet

#run kde-connect
run kdeconnect-indicator

# Xfce power daemon
run xfce4-power-manager

#bluetooth applet
run blueman-applet
# Keyboard layout
# setxkbmap -layout "us,gr" -option "grp:alt_shift_toggle" &
# setxkbmap -layout "us,de" -option "grp:alt_shift_toggle" &
# setxkbmap -layout "us,gr,ru" -option "grp:alt_shift_toggle"

# Caps Lock is Escape (Escape remains as is)
# setxkbmap -option caps:escape

# Scratchpad
# scratchpad
