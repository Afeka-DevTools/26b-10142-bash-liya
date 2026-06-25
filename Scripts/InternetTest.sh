#!/bin/bash

TARGET="8.8.8.8"
TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "[$TIMESTAMP] Checking internet connectivity..."

if ping -c 2 $TARGET > /dev/null 2>&1; then
    echo "[$TIMESTAMP] SUCCESS: Internet connection is active."
else
    echo "[$TIMESTAMP] ERROR: No internet connection detected."
fi
