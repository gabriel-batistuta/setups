# return for home
cd 

echo 'you can see the complete documentation in -> https://github.com/gabriel-batistuta/setups/tree/master/backup'

echo 'STARTING NOW!'

# set the user using the command that catch the name of the user of the system
# ref: https://pt.stackoverflow.com/questions/364889/como-passar-resultado-de-comando-para-uma-vari%C3%A1vel-em-bash#:~:text=Basta%20usar%20a%20sintaxe%20de,ser%20feita%20de%20dois%20jeitos.&text=Neste%20caso%20o%20resultado%20%C3%A9,haver%20diferen%C3%A7as%20entre%20as%20abordagens.

# configuration for the superuser
sudo passwd root
sudo passwd -u root

# setting the username of the user
echo 'please type your username: '
read user

# setting the email of the user
echo 'please type your email: '
read email

# show username and email
echo 'user: '$user, 'email:'$email

# updating the packages
sudo apt update && sudo apt upgrade -y

# CONFIGS OF WORKSPACE ->

# GIT (controller of code version)
sudo apt install git -y

git config --global user.name $user

git config --global user.email $email

# GitHub CLI (tool for development using GitHub)
sudo apt install gh -y

gh auth login

# install the Authy Desktop in:'https://snapcraft.io/authy' for generate token for login (GitHub, Twitch)
sudo snap install authy

# creating a local folder for work in path: '/home/$user/Documentos/programming'
cd Documentos

mkdir programming

cd programming

# downloading the repositories most used by me
git clone https://github.com/gabriel-batistuta/setups.git

# return for home
cd

# INSTALLING THE PROGRAMS AND TOOLS ->

# Tachi-desk (one project of Tachiyomi desktop)
sudo add-apt-repository ppa:suwayomi/tachidesk-server
sudo apt install tachidesk-server

# VLC player (video media player)
sudo apt install vlc -y

# need instalation ->
# need install the JAVA_HOME. ref: https://stackoverflow.com/questions/24641536/how-to-set-java-home-in-linux-for-all-users

# plantuml (tool that transform a text in png, ASCI code). ref: https://plantuml.com/starting

# Zeal docs (for documentation in programming languages)
sudo apt install zeal -y

# qbitorrent (downloader and seeder of archives in web)
sudo apt install qbittorrent -y

# neovim (code editor)  
sudo apt install neovim -y

# wine (executer of .exe archives)
sudo apt install wine -y

# snap (installer of snap packages)
sudo apt install snapd -y

# discord (social network for gamers and more)
sudo snap install discord -y

# telegram desktop (social network for phones)
sudo apt install telegram-desktop -y
# snap install telegram-desktop

# Guide of install ZSH: 
# https://www.vivaolinux.com.br/artigo/ZSH-Personalizando-seu-Terminal 
# https://adamtheautomator.com/install-oh-my-zsh-on-ubuntu/
# ZSH (command line interpreter).
sudo apt install zsh -y

# OH MY ZSH (package of themes for ZSH)
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" && git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

# plugin de ZSH of error checker
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# fzf (searcher of archives in command line)
sudo apt install fzf -y

# screenfetch (show description of your system and pc). run: screenfetch
sudo apt install screenfetch -y

# inxi (too show description of your system and pc). run: inxi
sudo apt install inxi -y

# wkhtmltopdf 'https://wkhtmltopdf.org'
wget 'https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb'
sudo dpkg -i wkhtmltox_0.12.6.1-2.jammy_amd64.deb

# pdf2htmlEX 'https://github.com/pdf2htmlEX/pdf2htmlEX'
wget 'https://github.com/pdf2htmlEX/pdf2htmlEX/releases/download/v0.18.8.rc1/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.deb'
sudo dpkg -i pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.deb



# VS Code (code editor) for Debian packages
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

# config VS Code as a main code editor
git config --global core.editor code

# SHORTCUTS ->

# local to file .bashrc who run the commands every you turn on the computer: /etc/bash.bashrc

function commands_to_record(){     echo p='cd Documentos/programming';     echo hardware='sudo lshw'; echo uern='feeduern'; }


feeduern() {
	cd /home/gabriel/Documentos/programming/Feed_UERN_Render
	python3 main.py
	cd
}

function functions_to_record(){
    echo feeduern
}

# an arrow (>) replaces the entire file, two arrows (>>) add whatever you want to the file without erasing its previous content
functions_to_record, commands_to_record >> .bashrc

# path to the work folder. run: $p 
# p='cd Documentos/programming'

# path to list your hardware. run: $hardware
# hardware='sudo lshw'
