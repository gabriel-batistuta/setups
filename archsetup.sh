# atualiza todos os pacotes do sistema, similar: (APT UPGRADE)
# sudo pacman -Syu

# Atualiza somente os pacotes remotos, similar: (APT UPDATE)
sudo pacman -Sy

# Audio Drivers (Pipeware)
sudo pacman -S sof-firmware
sudo pacman -S pipewire pipewire-alsa pipewire-pulse pipewire-jack

# firefox-developer-edition
sudo pacman -S firefox-developer-edition

# YAY and VSCODE
# baixa o pacote do AUR (Arch User Repository)
cd ~/Downloads/
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S visual-studio-code-bin

# GIT
sudo pacman -S git -y
sudo pacman -S github-cli
git config --global user.email batistutag190@gmail.com
git config --global user.name gabriel
git config --global init.defaultBranch main
gh auth login
# gh config set browser $(which firefox-developer)


# ZSH
chsh -s $(which zsh)
# oh my zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
# plugin zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Now append values to your plugins=() in .zshrc
# TO:
# plugins=(git zsh-autosuggestions
# zsh-syntax-highlighting
# powerlevel10k/powerlevel10k
# git)


# PDF2HTMLEX
mkdir -p ~/Applications
wget https://github.com/pdf2htmlEX/pdf2htmlEX/releases/download/v0.18.8.rc1/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.AppImage
mv pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.AppImage ~/Applications/
chmod +x ~/Applications/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.AppImage
mv ~/Applications/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.AppImage ~/Applications/pdf2htmlex
# fuse2 necessário pra rodar AppImages
sudo pacman -S fuse2
echo 'export PATH=$PATH:~/Applications' >> ~/.zshrc
source ~/.zshrc


# extra packages
sudo pacman -S neofetch
sudo pacman -S tmux
sudo pacman -S inxi
sudo pacman -S jq
sudo yay -S pdf2htmlex
sudo pacman -S screenfetch
sudo pacman -S wget
sudo pacman -S wine
yay -S wkhtmltopdf-static
yay -S gobuster

# flatpak
# atualiza somente os pacotes remotos
sudo pacman -S --needed base-devel git
sudo pacman -S flatpak

# Graphical Apps
# Add flathub
flatpak remote-add --if-not-exists flathub "https://flathub.org/repo/flathub.flatpakrepo"
# OBS STUDIO
flatpak install flathub com.obsproject.Studio
# DISCORD
flatpak install flathub com.discordapp.Discord
# LUTRIS
flatpak install flathub net.lutris.Lutris
# QBITORRENT
sudo pacman -S qbittorrent
# STEAM
sudo pacman -S steam
# TELEGRAM
sudo pacman -S telegram-desktop
# VIDCUTTER
sudo pacman -S vidcutter

# DEVELOPMENT ->
# GO
sudo pacman -S go
# LunarVIM
bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/rolling/utils/installer/install-neovim-from-release)
# Python
sudo pacman -Sy python-pip
# Pyright (Python Debugger)
sudo pacman -Sy pyright
# Node and NPM
sudo pacman -S nodejs npm
# PHP
sudo pacman -S php
# Ruby
sudo pacman -S ruby
# Rust
# sudo pacman -S rustup
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# Flutter
yay -Sy flutter
yay -Sy android-sdk android-sdk-build-tools android-sdk-cmdline-tools-latest android-platform android-sdk-platform-tools
sudo cp -R /opt/android-sdk ~
cd ~
sudo chown -R gabriel:gabriel android-sdk
echo 'export ANDROID_HOME=$HOME/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk' >> ~/.zshrc
yes | flutter doctor --android-licenses
# POSTGRES
sudo pacman -S postgresql
sudo systemctl start postgresql.service
sudo -iu postgres initdb --locale=pt_BR.UTF-8 -D /var/lib/postgres/data
sudo -u postgres psql << EOF
alter user postgres password '0000'
EOF
# ODBC
sudo pacman -S unixodbc postgresql-libs
yay -S psqlodbc
# C
sudo pacman -S clang
sudo pacman -S cmake
# 