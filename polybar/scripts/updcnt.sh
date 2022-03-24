#!/bin/sh
format() {
    if [ "$1" -eq 0 ]; then
        echo '-'
    else
        echo "$1"
    fi
}

if ! updates_arch="$(checkupdates | wc -l)"; then
    updates_arch=0
fi

if ! updates_aur="$(checkupdates-aur | wc -l)"; then
    updates_aur=0
fi

echo "($(format $updates_arch)/$(format $updates_aur))"
