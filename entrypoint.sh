#!/bin/sh
cd config
if [ ! -f "/config/ntp.keys" ]; then
  ntp-keygen -M
  WARN='\033[0;33m'
  NC='\033[0m' # No Color
  echo "${WARN}=============================${NC}"
  echo "${WARN}WARNING!${NC} New keys generated !"
  echo "${WARN}=============================${NC}"
fi

ntpd -g
tail -f /config/ntp.keys
