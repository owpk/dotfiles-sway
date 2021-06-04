#!/bin/bash
# translate-shell dependency required !

txt=$(wl-paste | trans -b -t $1)
echo $txt
wl-copy $txt
notify-send "${txt}" -t 20000
