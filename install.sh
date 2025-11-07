#!/bin/bash
echo "Starting Install Of 'sandcount 1.1'..."

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
echo "Downloading Stuff..."
mkdir -p /usr/share/sandpotnoodles
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sandcount/refs/heads/main/appicon.png -O /usr/share/sandpotnoodles/sandcount.png
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sandcount/refs/heads/main/sandcount.desktop -O /usr/share/applications/sandcount.desktop
wget https://github.com/ActuallySandPotNoodles/sandcount/releases/download/release-1.1/sandcount_x86_64 -O /usr/bin/sandcount
chmod 775 /usr/bin/sandcount
echo "Install Complete!"
