#!/usr/bin/env sh

# Print currently connected bluetooth device name if any

bluetoothctl info 2>&1 >/dev/null # fails if no device is connected
if [ $? -eq 0 ]; then
  DEV_NAME=`bluetoothctl info | head -n2 | tail -n1 | cut -d' ' -f2-`
  echo $DEV_NAME 
  exit 0
else
  exit 1
fi
