#!/bin/bash

if [ "${1}" == "pre" ]; then
    systemctl stop bluetooth
elif [ "${1}" == "post" ]; then
    systemctl start bluetooth
fi
