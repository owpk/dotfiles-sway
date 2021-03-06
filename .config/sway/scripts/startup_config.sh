#!/bin/bash
# you need to reboot system if you start sway with this dotfiles for the first time, because input config will be loaded before this script is executed"
KEYBOARD=`swaymsg -t get_inputs | grep -i identifier | grep -i keyboard | tail -1 | sed 's/"identifier": //; s/ //g; s/,//'`
TARGET="$HOME/.config/sway/config.d/input"

cat > $TARGET << EOF
# keyboard settings was generated by  `pwd`/scipts/startup_config.sh script
input "type:keyboard" {
   repeat_delay 250
   repeat_rate 50
   xkb_layout "us,ru"
   xkb_options "grp:alt_shift_toggle,caps:escape"
}

input type:touchpad {
      dwt enabled
      tap enabled
      natural_scroll disable
}

# exec_always {
#    'swaymsg input type:keyboard xkb_layout "$(localectl status | grep "X11 Layout" | sed -e "s/^.*X11 Layout://")"'
#    'swaymsg input type:keyboard xkb_variant "$(localectl status | grep "X11 Variant" | sed -e "s/^.*X11 Variant://")"'
# }
EOF
