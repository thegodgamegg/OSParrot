#!/bin/bash

#instalacion bspwm

# Variables para los colores
verde="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
rojo="\e[0;31m\033[1m"
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
morado="\e[0;35m\033[1m"
turquesa="\e[0;36m\033[1m"
gris="\e[0;37m\033[1m"


echo -e "\n${amarillo}[Instalando y configurando bspwm y sxhkd]${endColour}\n"
# Instalación de bspwm y sxhkd

cd ~
sudo apt-get update
sudo apt-get install bspwm -y 
cd ~
git clone https://github.com/thegodgamegg/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm && sudo make && sudo make install
cd ../sxhkd && sudo make && sudo make install
mkdir -p ~/.config/{bspwm,sxhkd}
chown -R thegodgamegg:thegodgamegg /home/thegodgamegg

sudo cp /home/thegodgamegg/bspwm/examples/bspwmrc ~/.config/bspwm/
sudo cp /home/thegodgamegg/bspwm/examples/sxhkdrc ~/.config/sxhkd/
chmod u+x ~/.config/bspwm/bspwmrc
echo -e "\n${morado}[bspwm y sxhkd instaldos y configurados]${endColour}\n"


#Añadiendo repositorio para redimencionar ventanas 
cd ~/.config/bspwm/
mkdir scripts
cd scripts
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/bspwm_resize
chmod +x bspwm_resize



echo -e "\n${amarillo}[Creando y configurando el archivo ~/.xinitrc]${endColour}\n"
# Creación y configuración del archivo ~/.xinitrc 
cd ~
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/.xinitrc
cd ~
echo -e "\n${morado}[.xinitrc fue creado y configurado]${endColour}\n"

# Configuración de compton
echo -e "\n${amarillo}[Creando y configurando el compton.conf]${endColour}\n"
cd ~/.config/
mkdir compton
cd ~/.config/compton/
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/compton.conf
echo -e "\n${morado}[compton.conf fue creado y configurado]${endColour}\n"

echo -e "\n${amarillo}[Configurando el wallpaper]${endColour}\n"
# Configurando el wallpaper
mkdir ~/.config/compton/wallpaper/
cd ~/.config/compton/wallpaper/
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/background.png
echo -e "\n${morado}[wallpaper configurado]${endColour}\n"

