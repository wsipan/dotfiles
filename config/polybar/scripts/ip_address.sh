#!/bin/bash

INTERFACE=$(ip address | grep "^2:" | awk '{print $2}' | sed 's/://')
IP_ADDRESS=$(ip address | grep "$INTERFACE" | tail -n 1 | awk '{print $2}' | awk '{print $1}' FS=/ | xargs)

if [[ "$1" == "1" ]]; then

    echo "[  $IP_ADDRESS  ]"

elif [[ "$1" == "2" ]]; then

    echo " $IP_ADDRESS "

fi