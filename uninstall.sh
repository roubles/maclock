#!/usr/bin/env bash

USER=$(logname)
HOME=$(eval echo "~$USER")
echo "USER=$USER" 
echo "HOME=$HOME"

rm -f /usr/local/bin/maclock
echo "maclock successfully uninstalled."
