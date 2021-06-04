#!/bin/bash
swaymsg -t get_inputs | jq -r \
    "first(.[]|select(.identifier == \"$1\" and .type == \"keyboard\")) \
    | .xkb_active_layout_name"

swaymsg -mrt subscribe '["input"]' | jq -r --unbuffered \
    "select(.change == \"xkb_layout\")
    | .input
    | select(.identifier == \"$1\" and .type == \"keyboard\") \
    | .xkb_active_layout_name"
