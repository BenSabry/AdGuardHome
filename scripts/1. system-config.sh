#!/bin/sh
echo ""
echo "$(date) $0 $@"

# repositories
repo="https://dl-cdn.alpinelinux.org/alpine/v$(cut -d'.' -f1,2 /etc/alpine-release)/community"
if ! (cat /etc/apk/repositories | grep "$repo" -q); then
    echo "$repo" >> /etc/apk/repositories
fi

/etc/periodic/weekly/system-upgrade.sh