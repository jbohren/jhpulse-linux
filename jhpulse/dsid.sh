#!/bin/sh

echo "matched these:"
cat ~/.mozilla/firefox/*.default*/sessionstore-backups/recovery.js | \
  sed s/','/'\n'/g | \
  grep -B 2 DSID | \
  grep value

echo "using this one:"
cat ~/.mozilla/firefox/*.default*/sessionstore-backups/recovery.js | \
  sed s/','/'\n'/g | \
  grep -B 2 DSID | 
  grep value | \
  head -n1 | \
  awk -F"\"" '{print $4}' | \
  tr -d '\n' | \
  tee ~/.jhpulse/DSID

printf "\n"

