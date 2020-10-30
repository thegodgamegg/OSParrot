# OSParrot
OSParrot


Instalación 





sudo apt-get install wget git -y





cd ~

wget https://raw.githubusercontent.com/thegodgamegg/OSParrot/master/install.sh

chmod +x install.sh

    POWERLEVEL10k El error consiste en que no puedo configurarlo hasta que no se cree el archivo .p10k.zsh pero este se crea hasta que se configura totalmente el powerlevel10k, para solucionarlo que tendras que hacerlo manualmente aqui los comandos (se deben de ejucatar con el usuario donde se este instalando slightly_smiling_face):

cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
zsh

Aqui deberas selecionar la configuración seleccióna cualquiera al azar, una vez teminado cambiaras esto con estos comandos:

exit

rm ~/.p10k.zsh
cd ~
wget https://github.com/kyb3rbat/configs_Kyb3rvotarOS/tree/master/zsh/p10k_normal.zsh
mv ~/p10k_normal.zsh ~/.p10k.zsh
cd ~
wget https://github.com/kyb3rbat/configs_Kyb3rvotarOS/blob/master/kyb3r_config/zshrc
rm ~/.zshrc
mv ~/zshrc ~/.zshrc

En los campos "user" debe ir tu usuario normal (si lo instalaste en root deberas puedes saltarte este paso upside_down_face)

Ahora deberas cambiar la zsh pero para el usuario root con los siguientes comandos:

sudo su

Ingresas la contraseña de tu usuario no_mouth, luego continuas con los comandos:

cd ~
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
zsh

Al igual que en usuario normal (si lo has instalado en root puedes saltar este paso wink), deberas selecionar la configuración seleccióna cualquiera al azar, una vez teminado cambiaras esto con estos comandos:

Ahora crearas un link para el usuario root del zsh de tu usuario normal y configuraras el powerlevel10k (esto se debe ejucatar como el usuario root), si utilizaras root salta esta parte upside_down_face:

exit

cd ~
rm .zshrc
sudo ln -s -f /home/thegodgamegg/.zshrc /root/.zshrc
rm .p10k.zsh
cd ~
wget https://github.com/kyb3rbat/configs_Kyb3rvotarOS/blob/master/zsh/p10k_root.zsh
mv /root/p10k_root.zsh /root/.p10k.zsh

Y por ultimo cambiaras la shell predeterminada para los usuarios smiley

sudo usermod --shell /usr/bin/zsh root
sudo usermod --shell /usr/bin/zsh thegodgamegg
