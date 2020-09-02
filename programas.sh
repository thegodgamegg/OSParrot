#!/bin/bash
#instalando programas como navegadores ckrackmapexec.

# Variables para los colores
verde="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
rojo="\e[0;31m\033[1m"
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
morado="\e[0;35m\033[1m"
turquesa="\e[0;36m\033[1m"
gris="\e[0;37m\033[1m"


cd /opt/
echo -e "\n${amarillo}[Instalando CrackMapExec]${endColour}\n"
sudo git clone https://github.com/byt3bl33d3r/CrackMapExec.git
cd /opt/CrackMapExec/
sudo python3 setup.py install
echo -e "\n${morado}[Instalado CrackMapExec]${endColour}\n"

cd
sudo git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
echo -e "\n${morado}[Dependecias instaladas]${endColour}\n"

# Instalación de Chrome Browser #########################################
cd ~
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/google-chrome-stable_current_amd64.deb
rm ~/google-chrome-stable_current_amd64.deb
sudo apt-get update
echo -e "\n${morado}[Chrome Browser instalado]${endColour}\n"

echo -e "\n${amarillo}[Instalando Brave Browser]${endColour}\n"
# Instalación de Brave Browser ##########################################
cd ~
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
sudo apt-get install brave-browser -y
sudo rm /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
echo -e "\n${morado}[Brave Browser instalado]${endColour}\n"




echo -e "\n${amarillo}[Instalando Hack Nerd Fonts]${endColour}\n"
# Instalación de Hack Nerd Fonts
cd /usr/local/share/fonts/
sudo wget https://github.com/thegodgamegg/OSParrot/raw/master/MasterDownloasFile/Hack.zip
sudo unzip Hack.zip
sudo rm Hack.zip
echo -e "\n${morado}[Hack Nerd Fonts instaldo]${endColour}\n"

echo -e "\n${amarillo}[Instalando la polybar]${endColour}\n"
