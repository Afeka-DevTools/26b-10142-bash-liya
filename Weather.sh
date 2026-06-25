!/bin/bash

if [ -z "$1" ]; then
    echo "Usage: $0 <city_name>"
    exit 1
fi

CITY="$1"

if ! command -v curl &> /dev/null; then
    echo "curl is not installed. Trying to install..."
    sudo apt-get update && sudo apt-get install -y curl
fi

echo "Fetching weather for $CITY..."
curl -s "https://wttr.in/${CITY}?0"
