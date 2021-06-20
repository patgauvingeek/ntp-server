#!/bin/sh
cd config
if [ ! -f "/config/ntp.keys" ]; then
  ntp-keygen -M
fi

echo using $(readlink -f /etc/ntp.keys)

ntpd -g -d

