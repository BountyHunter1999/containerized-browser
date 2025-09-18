#!/bin/bash

echo "Installing Firefox with Camouflage Theme"

# install firebox dependencies
apt-get update
apt install -y libgtk-3-0 libx11-xcb1 libasound2 python3 pip python3-venv

python3 -m venv venv
source venv/bin/activate
pip install -U camoufox[geoip]

python3 -m camoufox fetch


