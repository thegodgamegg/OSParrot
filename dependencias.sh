#!/bin/bash


# se instalan las dependencias de los demas paquetes usados en el install.sh

sudo apt-get install build-essential cmake -y
sudo apt-get install xfce4-terminal mousepad caja scrub ranger libssl-dev libffi-dev -y
sudo apt-get install python-dev build-essential tmux -y
sudo apt-get install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev -y
sudo apt-get install libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev -y
sudo apt-get install libxcb-ewmh-dev libxcb-icccm4-dev  python3-xcbgen xcb-proto libxcb-image0-dev -y

sudo apt-get install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev -Y
sudo apt-get install libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y
sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev -y
sudo apt-get install libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev -y
sudo apt-get install rofi compton feh -y

