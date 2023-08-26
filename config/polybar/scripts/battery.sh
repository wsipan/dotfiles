#!/bin/bash

PERCENT=$(acpi | awk '{print $4}' | tr -d ,)
STATUS=$(acpi | awk '{print $3}' | tr -d ,)

if [[ "$1" == "1" ]]; then
    if [[ "$STATUS" != "Discharging" ]]; then
        echo "[ 󱟠 $PERCENT ]" #󱟡
    else
        echo "[ 󱟟 $PERCENT ]"
    fi
elif [[ "$1" == "2" ]]; then
    if [[ "$STATUS" != "Discharging" ]]; then
        echo " 󱟠 $PERCENT " #󱟡
    else
        echo " 󱟟 $PERCENT "
    fi
fi