#!/bin/bash

if ! command -v figlet &> /dev/null; then
    echo "figlet is required but not installed. Installing..."
    sudo apt-get update && sudo apt-get install -y figlet
fi

echo "Press [CTRL+C] to stop the clock."
clear

# לולאה אינסופית שמנקה את המסך ומציגה את הזמן
while true; do
    clear
    date +"%H:%M:%S" | figlet
    sleep 1
done
