#!/usr/bin/env bash

USER=$(logname)
HOME=$(eval echo "~$USER")
echo "USER=$USER" 
echo "HOME=$HOME" 

if [ ! -d /usr/local/bin/ ]; then
    echo "Creating /usr/local/bin ..."
    mkdir -p /usr/local/bin/ 
fi

echo "Installing scripts in /usr/local/bin"
cp ./scripts/maclock /usr/local/bin
if [ ! -f /usr/local/bin/maclock ]; then
    echo "Error installing script."
    exit 4
fi

chmod 755 /usr/local/bin/maclock
echo "maclock successfully installed."
