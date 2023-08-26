#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

# polybar -c=~/.config/polybar/config.ini main --reload &
# polybar -c=~/.config/polybar/config.ini color-bar --reload &
polybar -c=~/.config/polybar/config.ini color-bar-floating --reload &