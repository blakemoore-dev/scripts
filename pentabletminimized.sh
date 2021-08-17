#!/bin/bash

killall pentablet
/usr/lib/pentablet/pentablet.sh &
sleep 2s
#xdotool search --class pentablet | xargs xdotool windowclose
PTWID=$(xdotool search --onlyvisible --sync --class pentablet)
xdotool mousemove --window $PTWID 980 50 click 1

