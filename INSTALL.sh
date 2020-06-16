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

echo -e "\n${amarillo}[Instalando dependencias]${endColour}\n"
#Instalando dependencias BSPWM
sudo apt-get update
sudo apt-get install xfce4-terminal mousepad caja scrub ranger libssl-dev libffi-dev python-dev build-essential tmux -y
echo -e "\n${morado}[Dependecias instaladas de BSPWM]${endColour}\n"


#sudo apt-get install xfce4-terminal mousepad caja scrub ranger libssl-dev libffi-dev python-dev build-essential tmux -y
echo -e "\n${amarillo}[Instalando Complementarios para Papel Tapiz transparencias y menumaestro]${endColour}\n"
sudo apt-get install rofi compton feh -y
echo -e "\n${morado}[Dependecias instaladas para Papel Tapiz transparencias y menumaestro]${endColour}\n"

cd /opt/

echo -e "\n${amarillo}[Instalando CrackMapExec]${endColour}\n"
sudo git clone https://github.com/byt3bl33d3r/CrackMapExec.git
cd /opt/CrackMapExec/
sudo python3 setup.py install
echo -e "\n${morado}[Instalado CrackMapExec]${endColour}\n"

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
echo -e "\n${morado}[Dependecias instaladas]${endColour}\n"

echo -e "\n${amarillo}[Instalando Chorme Browser]${endColour}\n"
# Instalación de Chrome Browser 
cd ~
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i ~/google-chrome-stable_current_amd64.deb
rm ~/google-chrome-stable_current_amd64.deb
sudo apt-get update
echo -e "\n${morado}[Chrome Browser instalado]${endColour}\n"

echo -e "\n${amarillo}[Instalando Brave Browser]${endColour}\n"
# Instalación de Brave Browser 
cd ~
sudo apt install apt-transport-https curl -y
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
sudo apt-get install brave-browser -y
sudo rm /etc/apt/sources.list.d/brave-browser-release.list
sudo apt-get update
echo -e "\n${morado}[Brave Browser instalado]${endColour}\n"

echo -e "\n${amarillo}[Instalando y configurando bspwm y sxhkd]${endColour}\n"
# Instalación de bspwm y sxhkd
cd ~
sudo apt-get install libxcb-xinerama0-dev libxcb-icccm4-dev libxcb-randr0-dev libxcb-util0-dev libxcb-ewmh-dev libxcb-keysyms1-dev libxcb-shape0-dev -y
sudo apt-get install bspwm -y 
cd ~
git clone https://github.com/thegodgamegg/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install
mkdir -p ~/.config/{bspwm,sxhkd}
cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
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
echo -e "\n${azul}[BSPWM y SXHKD han sido configurados con exito]${endColour}\n"

echo -e "\n${amarillo}[Creando el lanzador de la polybar]${endColour}\n"
# Creando el lanzador de la polybar
cd ~/.config
mkdir polybar
cd polybar
wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/MasterDownloasFile/launch.sh
chmod +x launch.sh
echo -e "\n${morado}[Lanzador configurado]${endColour}\n"

echo -e "\n${amarillo}[Instalando Hack Nerd Fonts]${endColour}\n"
# Instalación de Hack Nerd Fonts
cd /usr/local/share/fonts/
sudo wget https://github.com/thegodgamegg/OSParrot/raw/master/MasterDownloasFile/Hack.zip
sudo unzip Hack.zip
sudo rm Hack.zip
echo -e "\n${morado}[Hack Nerd Fonts instaldo]${endColour}\n"

echo -e "\n${amarillo}[Instalando la polybar]${endColour}\n"
# Instalando la polybar
sudo apt install build-essential git cmake cmake-data pkg-config python3-sphinx libcairo2-dev libxcb1-dev libxcb-util0-dev libxcb-randr0-dev libxcb-composite0-dev python3-xcbgen xcb-proto libxcb-image0-dev libxcb-ewmh-dev libxcb-icccm4-dev -y
sudo apt install libxcb-xkb-dev libxcb-xrm-dev libxcb-cursor-dev libasound2-dev libpulse-dev i3-wm libjsoncpp-dev libmpdclient-dev libcurl4-openssl-dev libnl-genl-3-dev -y
cd /opt
sudo wget https://github.com/polybar/polybar/releases/download/3.4.3/polybar-3.4.3.tar
sudo tar -xf polybar-3.4.3.tar
sudo rm /opt/polybar-3.4.3.tar
sudo cd /opt/polybar/
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
wget https://raw.githubusercontent.com/kyb3r-bat/configs_Kyb3rvotarOS/master/themes/config
cp /opt/polybar/config ~/.config/polybar/config

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
