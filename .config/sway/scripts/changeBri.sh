#!/bin/bash
#changeBri

msgId="991114"

# Query amixer for the current volume and whether or not the speaker is muted
bri=$(xbacklight -get)
res=$(expr $bri + $2)
echo $bri
echo $res
echo $@

"xbacklight $@" > /dev/null

# Show the brightness notification
dunstify -a "changeBrightness" -u low -i audio-volume-high -r "$msgId" "Bright: ${res}%"

