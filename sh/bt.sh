#!/usr/bin/env bash
# brew install blueutil
set -e

echo "Restarting Bluetooth..."
 /usr/local/bin/blueutil -p0
 /usr/local/bin/blueutil -p1
echo "Done."
