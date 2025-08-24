#!/bin/bash

# Get total RAM in GB (rounded down)
TOTAL_RAM_GB=$(free -g | awk '/^Mem:/{print $2}')

echo "Detected System RAM: ${TOTAL_RAM_GB} GB"

if [ "$TOTAL_RAM_GB" -le 1 ]; then
    CONFIG="garudrecon_1g.cfg"
elif [ "$TOTAL_RAM_GB" -le 2 ]; then
    CONFIG="garudrecon_2g.cfg"
elif [ "$TOTAL_RAM_GB" -le 4 ]; then
    CONFIG="garudrecon_4g.cfg"
elif [ "$TOTAL_RAM_GB" -le 6 ]; then
    CONFIG="garudrecon_6g.cfg"
elif [ "$TOTAL_RAM_GB" -le 8 ]; then
    CONFIG="garudrecon_8g.cfg"
elif [ "$TOTAL_RAM_GB" -ge 16 ]; then
    CONFIG="garudrecon_max.cfg"
else
    CONFIG="garudrecon_max.cfg"  # fallback
fi

echo "Recommended config file: $CONFIG"
