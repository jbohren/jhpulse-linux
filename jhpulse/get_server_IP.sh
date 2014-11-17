#!/bin/sh
echo `host jhpulse.johnshopkins.edu | head -n1 | sed 's/\ /\n/g' | tail -n1` > ~/.jhpulse/VPN_SERVER_IP

