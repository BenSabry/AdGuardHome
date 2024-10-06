#!/bin/sh
echo ""
echo "$(date) $0 $@"

# variables
tmp="/tmp/AdGuardHome"
app="/etc/AdGuardHome"

# url
url="https://github.com/AdguardTeam/AdGuardHome/releases/latest"
ver=$(wget -S -o /dev/stdout "$url" 2>&1 | grep 'Location: ' | cut -d '/' -f8)
download="https://github.com/AdguardTeam/AdGuardHome/releases/download/${ver}/AdGuardHome_linux_amd64.tar.gz"

# download
rm -rf $tmp
mkdir $tmp
cd $tmp

file="linux_amd64.tar.gz"
wget -O "$file" "$download" &> /dev/null
tar -xvzf "$file" &> /dev/null

mv "AdGuardHome" "$app"

# install
$app/AdGuardHome -s install

# clean
rm -rf "$tmp"

# update adguard
/etc/periodic/daily/adguard-update.sh
