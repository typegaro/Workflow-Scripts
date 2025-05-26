#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Uso: $0 <comando> <testo-notifica>"
    exit 1
fi

cmd="$1"
shift
text="$*"

eval "$cmd"

notify-send "Command" "$text"
