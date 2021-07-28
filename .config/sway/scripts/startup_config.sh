#!/bin/bash
KEYBOARD=`swaymsg -t get_inputs | grep -i keyboard | grep -i identifier | sed 's/"identifier": //' | sed 's/ //g' | sed 's/,//' | tail -1`
TARGET="$HOME/.config/sway/config.d/input"
CONF="$HOME/.config/sway/keyboard.conf"

echo "# keyboard settings was preloaded by $HOME/.config/sway/scipts/startup_config.sh script" > $TARGET
echo "# you need to reboot system if you start sway with this dotfiles for the first time, because input config will be loaded
before this script is executed" >> $TARGET
echo "input $KEYBOARD {" >> $TARGET
cat $CONF >> $TARGET
