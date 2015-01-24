#!/bin/bash
set -e

if ! echo "$UID" | grep -qE ^?[0-9]+$ || [ "$UID" -eq "0" ]; then
  echo "Environment variable \$UID needs to be set to the user who should " \
       "own files."
  exit 1
fi

echo "Dropbox container starting up with UID $UID"

chown $UID /home/.dropbox /home/Dropbox /home
useradd -u $UID -d /home dropbox

su --login dropbox /home/rundropbox.sh
