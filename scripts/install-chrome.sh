#!/bin/bash

echo "Installing Google Chrome"

export DEBIAN_FRONTEND=noninteractive

apt-get update -y
apt-get install -y wget gnupg
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c "echo 'deb http://dl.google.com/linux/chrome/deb/ stable main' >>   /etc/apt/sources.list"
# sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get install -y google-chrome-stable fonts-ipafont-gothic fonts-wqy-zenhei fonts-thai-tlwg fonts-kacst fonts-freefont-ttf libxss1 --no-install-recommends
apt-get install -y xvfb --no-install-recommends
apt-get install -y xauth --no-install-recommends
apt-get install -y x11-apps --no-install-recommends
apt-get install -y patch
apt-get install -y fonts-liberation gconf-service libappindicator1 libasound2 libatk1.0-0 libcairo2 libcups2 libfontconfig1 libgbm-dev libgdk-pixbuf2.0-0 libgtk-3-0 libicu-dev libjpeg-dev libnspr4 libnss3 libpango-1.0-0 libpangocairo-1.0-0 libpng-dev libx11-6 libx11-xcb1 libxcb1 libxcomposite1 libxcursor1 libxdamage1 libxext6 libxfixes3 libxi6 libxrandr2 libxrender1 libxss1 libxtst6 xdg-utils -no-install-recommends
apt-get -y -qq --no-install-recommends install fontconfig fonts-freefont-ttf fonts-gfs-neohellenic fonts-indic fonts-ipafont-gothic fonts-kacst fonts-liberation fonts-noto-cjk fonts-noto-color-emoji fonts-roboto fonts-thai-tlwg fonts-ubuntu fonts-wqy-zenhei
apt-get clean
rm -rf /var/lib/apt/lists/*

