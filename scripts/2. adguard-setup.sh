#!/bin/sh
echo ""
echo "$(date) $0 $@"

# variables
tmp="/tmp/AdGuardHome"
app="/etc/AdGuardHome"

url="https://github.com/AdguardTeam/AdGuardHome/releases/latest/download/AdGuardHome_linux_amd64.tar.gz"

if [ -d "$tmp" ]; then
    rm -rf "$tmp"/*
else
    mkdir $tmp -p
fi
cd $tmp

file="linux_amd64.tar.gz"
wget -O "$file" "$url" &> /dev/null
tar -xvzf "$file" &> /dev/null

mv "AdGuardHome" "$app"

# install
$app/AdGuardHome -s install

# clean
rm -rf "$tmp"

# update adguard
/etc/periodic/daily/adguard-update.sh
