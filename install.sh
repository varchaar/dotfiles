#!/bin/bash

stow -t /home/varchar/ awesome
stow -t /home/varchar/ bin
stow -t /home/varchar/ compton
stow -t /home/varchar/ gtk
stow -t /home/varchar/ kitty
stow -t /home/varchar/ nvim
stow -t /home/varchar/ ranger
stow -t /home/varchar/ rofi
stow -t /home/varchar/ zsh

sudo xargs -a Packages pacman -S --noconfirm --needed
