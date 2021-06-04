#!/bin/bash
#changeVolume

msgId="991049"

# Query amixer for the current volume and whether or not the speaker is muted
volume=$(pactl list sinks | grep '^[[:space:]]Volume:' |  head -n $(( $SINK + 1 )) | tail -n 1 | sed -e 's,.* \([0-9][0-9]*\)%.*,\1,')
res=$(expr $volume + $@)

pactl set-sink-volume @DEFAULT_SINK@ +$@% > /dev/null

if [[ $volume == 0 ]]; then
    # Show the sound muted notification
    dunstify -a "changeVolume" -u low -i audio-volume-muted -r "$msgId" "Volume muted"
else
    # Show the volume notification
    dunstify -a "changeVolume" -u low -i audio-volume-high -r "$msgId" \
    "Volume: ${res}%"
fi

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "changeVolume"n
