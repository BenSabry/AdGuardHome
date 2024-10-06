#!/bin/sh
echo ""
echo "$(date) $0 $@"

/etc/AdGuardHome/AdGuardHome --update
