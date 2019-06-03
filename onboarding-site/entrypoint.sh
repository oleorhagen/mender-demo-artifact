#!/bin/sh
set -e

PROC=$(cat /proc/cpuinfo | grep "model name" | sed -n -e 's/^model name.*: //p' | head -n1)
DEVICE_TYPE=$(sed -e 's/^device_type=//' /var/lib/mender/device_type 2>/dev/null || uname -m)
MENDER_VERSION=$(mender -version 2>/dev/null | head -n1)
MENDER_VERSION=${MENDER_VERSION:-N/A}
INVENTORY="$(for script in /usr/share/mender/inventory/mender-inventory-*; do $script; done)"
cat >/var/www/localhost/htdocs/device-info.js <<EOF
  mender_server = {
    "Web server": "$(hostname)",
    "Server address(es)": "[ $(echo "$INVENTORY" | sed -ne '/^ipv4/{s/^[^=]*=//; s,/.*$,,; p}' | tr '\n' ' ')]"
  }
  mender_identity = {
    "Device ID": "",
    "mac": "$(cat /sys/class/net/eth0/address)"
  }
  mender_inventory = {
    "device_type": "$DEVICE_TYPE",
    "mender_client_version": "$MENDER_VERSION",
    "os": "$(cat /proc/version)",
    "cpu": "$PROC",
    "kernel": "$(uname -r)"
  }
EOF
cd /var/www/localhost/htdocs
../busybox httpd -f
