#!/bin/bash
SCREEN_DIR=$(xdg-user-dir PICTURES)
FILENAME="screenshot-`date +%F-%T`"
TARGET=$SCREEN_DIR/$FILENAME.jpg
SLURP_FROMAT="%x,%y %wx%h"

notif() {
   notify-send -t 5000 "SCREENSHOT SAVED" $1
}

if [[ $1 == '-g' ]]
then
   grim -g "$(slurp -d)" $TARGET
else
   grim $TARGET
fi

notif $TARGET
cat $TARGET | wl-copy
