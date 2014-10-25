#!/bin/sh

cat ~/.mozilla/firefox/*.default*/sessionstore-backups/recovery.js | sed s/','/'\n'/g | grep -B 2 DSID | head -n1 | awk -F"\"" '{print $4}' | tr -d '\n' > ~/.jhpulse/DSID
