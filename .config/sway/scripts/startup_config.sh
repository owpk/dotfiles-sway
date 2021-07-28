#!/bin/bash
KEYBOARD=`swaymsg -t get_inputs | grep -i keyboard | grep -i identifier | sed 's/"identifier": //' | sed 's/ //g' | sed 's/,//' | tail -1`
TARGET="$HOME/.config/sway/config.d/input"
CONF="$HOME/.config/sway/keyboard.conf"

echo "#keyboard settings was preloaded by $HOME/.config/sway/scipts/startup_config.sh script" > $TARGET
echo "input $KEYBOARD {" >> $TARGET
cat $CONF >> $TARGET
