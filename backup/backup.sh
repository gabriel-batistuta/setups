cd 

# updating the packages
sudo apt updade && sudo apt upgrade -y

# VLC player (video media player)
sudo apt install vlc -y

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

# zsh (command line interpreter)
sudo apt install zsh -y

# fzf (searcher of archives in command line)
sudo apt install fzf -y

# screenfetch (show description of your system and pc)
sudo apt install screenfetch -y

# inxi (too show description of your system and pc)
sudo apt install inxi -y

# path for list your hardware. run: $hardware
hardware=lshw

# VS Code (code editor) for Debian packages
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

# GIT (controller of code version)
sudo apt install git -y

git config --global user.name "gabriel"

git config --global user.email batistutag190@gmail.com

git config --global core.editor code

# GitHub CLI (tool for development using GitHub)
sudo apt install gh -y

gh auth login

# creating a local folder for work
cd Documentos

mkdir programming

cd programming

# downloading the repositories most used by me
git clone https://github.com/gabriel-batistuta/setups.git

# downloading the dependencies for this repository
git clone https://github.com/gabriel-batistuta/nxt-programs.git

./nxt-programs/setup.sh

# downloading the dependencies for this repository
git clone https://github.com/gabriel-batistuta/script-anime.git

./script-anime/setup.sh

# downloading the dependencies for this repository
git clone https://github.com/gitlordi/RepositORE.git

./RepositORE/setup.sh
