#!/bin/bash

# configuracion ambiente de trabajo parrotOS,
# thegodgamegg @s4vitar (Marcelo Vázquez) y @vokin (Víctor Laza), repositorio orginal: 

# Variables para los colores
verde="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
rojo="\e[0;31m\033[1m"
azul="\e[0;34m\033[1m"
amarillo="\e[0;33m\033[1m"
morado="\e[0;35m\033[1m"
turquesa="\e[0;36m\033[1m"
gris="\e[0;37m\033[1m"

echo -e "\n${verde}[INICIANDO...]${endColour}\n"


echo -e "\n${amarillo}[Creando el lanzador de la polybar]${endColour}\n"
# Creando el lanzador de la polybar
cd ~/.config
mkdir polybar
cd polybar
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/launch.sh
chmod +x launch.sh
echo -e "\n${morado}[Lanzador configurado]${endColour}\n"

echo -e "\n${amarillo}[Instalando la polybar]${endColour}\n"
# Instalando la polybar
cd /opt
sudo wget https://github.com/polybar/polybar/releases/download/3.4.3/polybar-3.4.3.tar
sudo tar -xf polybar-3.4.3.tar
sudo rm /opt/polybar-3.4.3.tar
cd /opt/polybar/
sudo mkdir /opt/polybar/build/
cd /opt/polybar/build/
sudo cmake ..
sudo make -j$(nproc)
sudo make install
echo -e "\n${morado}[Polybar instalado]${endColour}\n"


echo -e "\n${amarillo}[Creando y configurando modulos de la polybar]${endColour}\n"
# Configurando modulos de la polybar
cd ~/.config/
mkdir bin
cd ~/.config/bin/
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/vpn_status.sh
chmod +x ~/.config/bin/vpn_status.sh
echo -e "\n${morado}[Modulos creados y configurados]${endColour}\n"

# Configurando polybar
cd ~/.config/polybar
# reemplazar con los nuevos archivos de mi maestro
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/config
#cp /opt/polybar/config ~/.config/polybar/config

echo -e "\n${azul}[La polybar ha sido configurada con exito]${endColour}\n"

# Intalando el zsh 
sudo apt install zsh -y
cd ~
echo -e "\n${amarillo}[Descargando y confurando los functions]${endColour}\n"
# Configurando los functions del zsh
mkdir ~/.thegodgamegg/
cd ~/.thegodgamegg/
wget https://github.com/Peltoche/lsd/releases/download/0.14.0/lsd_0.14.0_amd64.deb
cd ~/.thegodgamegg/
sudo dpkg -i lsd_0.14.0_amd64.deb
cd ~/.thegodgamegg/
rm lsd_0.14.0_amd64.deb
cd ~/.thegodgamegg/
wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb
sudo dpkg -i bat_0.15.4_amd64.deb
cd ~/.thegodgamegg/
rm bat_0.15.4_amd64.deb
cd ~/.thegodgamegg/
wget https://github.com/sharkdp/bat/releases/download/v0.15.4/bat_0.15.4_amd64.deb
sudo dpkg -i bat_0.15.4_amd64.deb
sudo apt-get update
echo -e "\n${morado}[Functions configurados]${endColour}\n"


echo -e "\n${amarillo}[Configurando el fzf]${endColour}\n"
# Intalando fzf
cd ~
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install 
sudo git clone --depth 1 https://github.com/junegunn/fzf.git /root/.fzf
sudo /root/.fzf/install 
echo -e "\n${morado}[fzf configurado y instalado]${endColour}\n"

echo -e "\n${amarillo}[Instalando plugins de zsh]${endColour}\n"
# Instalndo plugins de zsh
sudo apt-get update
sudo apt-get install zsh-autosuggestions -y
sudo apt-get install zsh-syntax-highlighting -y
cd /usr/share/
sudo mkdir sudo
cd /usr/share/sudo/
sudo wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/sudo/sudo.plugin.zsh
sudo chown root:root -R /usr/local/share/zsh/site-functions/
sudo mv /root/powerlevel10k/ /root/.powerlevel10k/
echo -e "\n${morado}[Plugins instalados]${endColour}\n"

echo -e "\n${amarillo}[Instalando i3lock-fancy y imagegick]${endColour}\n"
# Instalación de i3lock-fancy y imagemagick
sudo apt-get update
sudo apt-get install i3lock-fancy imagemagick -y
echo -e "\n${morado}[i3lock-fancy i image instaldos]${endColour}\n"

echo -e "\n${amarillo}[Es obligatorio y muy importante leer el README.md el apartado "IMPORTANTE", ya que esto aún esta en desarrollo y allí te solucionan unos errores ]${endColour}\n"
