#!/bin/bash
KEYBOARD=`swaymsg -t get_inputs | grep -i keyboard | grep -i identifier | sed 's/"identifier": //' | sed 's/ //g' | sed 's/,//' | tail -1`
echo $KEYBOARD

if [[ $1 ]]
then
   KEYBOARD=$1
fi

swaymsg -t get_inputs | jq -r \
    "first(.[]|select(.identifier == $KEYBOARD and .type == \"keyboard\")) \
    | .xkb_active_layout_name"

swaymsg -mrt subscribe '["input"]' | jq -r --unbuffered \
    "select(.change == \"xkb_layout\")
    | .input
    | select(.identifier == $KEYBOARD and .type == \"keyboard\") \
    | .xkb_active_layout_name"
