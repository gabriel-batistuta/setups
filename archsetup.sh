# atualiza todos os pacotes do sistema, similar: (APT UPGRADE)
# sudo pacman -Syu

# Atualiza somente os pacotes remotos, similar: (APT UPDATE)
sudo pacman -Sy

# Firefox Developer Edition
sudo pacman -S firefox-developer-edition
xdg-settings set default-web-browser firefox-developer-edition.desktop

# nvidia drivers
sudo pacman -S base-devel linux-headers git nano --needed
sudo pacman -S nvidia

# Gnome Terminal
# definir como app padrão de terminal no linux
# sudo pacman -S gnome-terminal

# Trocar o uso do wayland por x11
sudo nano /etc/gdm/custom.conf
# na tela desmarque o WaylandEnable=false
# [daemon]
# WaylandEnable=false
# reinicie sistema de janelas
# sudo systemctl restart gdm
# mostre o atual
# echo $XDG_SESSION_TYPE



# GNOME Dock in Arch Linux
yay -S gnome-shell-extension-dash-to-dock
yay -S chrome-gnome-shell
# go to https://extensions.gnome.org/extension/307/dash-to-dock/
# and turn on option
# after that go to Gnome Extensions and set on and configure Dash to Dock

# kitty terminal
curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
# Create symbolic links to add kitty and kitten to PATH (assuming ~/.local/bin is in
# your system-wide PATH)
ln -sf ~/.local/kitty.app/bin/kitty ~/.local/kitty.app/bin/kitten ~/.local/bin/
# Place the kitty.desktop file somewhere it can be found by the OS
cp ~/.local/kitty.app/share/applications/kitty.desktop ~/.local/share/applications/
# If you want to open text files and images in kitty via your file manager also add the kitty-open.desktop file
cp ~/.local/kitty.app/share/applications/kitty-open.desktop ~/.local/share/applications/
# Update the paths to the kitty and its icon in the kitty desktop file(s)
sed -i "s|Icon=kitty|Icon=$(readlink -f ~)/.local/kitty.app/share/icons/hicolor/256x256/apps/kitty.png|g" ~/.local/share/applications/kitty*.desktop
sed -i "s|Exec=kitty|Exec=$(readlink -f ~)/.local/kitty.app/bin/kitty|g" ~/.local/share/applications/kitty*.desktop
# Make xdg-terminal-exec (and hence desktop environments that support it use kitty)
echo 'kitty.desktop' > ~/.config/xdg-terminals.list

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
echo '\nexport BROWSER=firefox-developer-edition' >> ~/.zshrc
xdg-mime default firefox-developer-edition.desktop x-scheme-handler/http\nxdg-mime default firefox-developer-edition.desktop x-scheme-handler/https\n

# Tmux
sudo pacman -S tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
touch ~/.tmux.conf
echo '
set -g prefix ^A
set -g base-index 1
#set -g renumber-windows on
setw -g mode-keys vi
set -g detach-on-destroy off
set-option -g mouse on
set-option -g status-position top

bind-key '"' split-window -c "#{pane_current_path}"
bind-key % split-window -h -c "#{pane_current_path}"
bind-key a set-window-option synchronize-panes\; display-message "synchronize-panels is now #{?pane_sync>

bind-key h select-pane -L
bind-key j select-pane -D
bind-key k select-pane -U
bind-key l select-pane -R

bind-key C-h resize-pane -L 5
bind-key C-j resize-pane -D 5
bind-key C-k resize-pane -U 5
bind-key C-l resize-pane -R 5

set -g @plugin 'tmux-plugins/tpm'
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @plugin 'catppuccin/tmux'

set -g @catppuccin_flavor 'mocha'

run "~/.tmux/plugins/tpm/tpm"
' > ~/.tmux.conf

# NerdFonts
mkdir ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/SourceCodePro.zip -O ~/.fonts/SourceCodePro.zip
unzip ~/.fonts/SourceCodePro.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/NerdFontsSymbolsOnly.zip -O ~/.fonts/NerdFontsSymbolsOnly.zip
unzip ~/.fonts/NerdFontsSymbolsOnly.zip
rm SourceCodePro.zip && rm NerdFontsSymbolsOnly.zip

# Alacrity
sudo pacman -S cmake freetype2 fontconfig pkg-config make libxcb libxkbcommon python
sudo pacman -S alacritty
if [ -d "~/.config" ]; then
  mkdir -p ~/.config/alacritty/
  touch ~/.config/alacritty/alacritty.toml
else
  mkdir -p ~/.config
  mkdir -p ~/.config/alacritty/
  touch ~/.config/alacritty/alacritty.toml
fi

# Alacritty .toml
echo '
live_config_reload = true
[env]
TERM = "xterm-256color"

[window]
decorations = "buttonless"
dynamic_padding = false
opacity = 0.9

[window.dimensions]
#colums = 200
#lines = 40

[window.padding]
#x = 10
#y = 10

[font]
size=15

[font.bold]
#family = "SauseCodePro Nerd Font"
#style = "Bold"

[font.italic]
#family = "SauseCodePro Nerd Font"
#style = "Italic"

[font.normal]
#family = "SauseCodePro Nerd Font"
#style = "Regular"

[font.bold_italic]
#family = "SauseCodePro Nerd Font"
#style = "Bold Italic"

' > ~/.config/alacritty/alacritty.toml

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
# ALPACA AI
flatpak install flathub com.jeffser.Alpaca
# OBS STUDIO
flatpak install flathub com.obsproject.Studio
# DISCORD
flatpak install flathub com.discordapp.Discord
# visualisador de imagens do gnome
flatpak install flathub org.gnome.Loupe
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


#Instalar o virt-manager qemu
sudo pacman -S virt-manager qemu-desktop ebtables iptables-nft  dnsmasq edk2-ovmf spice-vdagent virt-viewer
sudo systemctl enable libvirtd.service && sudo systemctl start libvirtd.service
	
###Iniciar Rede manualmente
#sudo virsh net-start default 
###Automaticamente
sudo virsh net-autostart default 

# configuração pra deixar a VM com 1080p
# https://superuser.com/questions/132322/how-to-increase-the-visualized-screen-resolution-on-qemu-kvm#answer-1822071

# android-tools	
sudo pacman -S android-tools

# lutris dependencies
sudo pacman -S zenity gcc-libs gnutls vulkan-validation-layers vulkan-intel vulkan-radeon vulkan-icd-loader libva fontconfig lcms2 libxml2 libxcursor libxrandr libxdamage libxi gettext freetype2 glu libsm libpcap faudio giflib libpng libldap mpg123 openal v4l-utils libpulse alsa-lib alsa-plugins libjpeg-turbo libxcomposite libxinerama ocl-icd libxslt gst-plugins-base-libs vkd3d sdl2 sdl2_ttf sdl2_image sdl2_net libcups libidn11 pixman zlib mesa ncurses krb5 libxcb cairo libx11 libx86emu libxss libgphoto2 sane noto-fonts-emoji lib32-glibc lib32-gcc-libs lib32-gnutls lib32-vulkan-validation-layers lib32-vulkan-intel lib32-vulkan-radeon lib32-vulkan-icd-loader lib32-libva lib32-fontconfig lib32-lcms2 lib32-libxml2 lib32-libxcursor lib32-libxrandr lib32-libxdamage lib32-libxi lib32-gettext lib32-freetype2 lib32-glu lib32-libsm lib32-faudio lib32-libpcap lib32-giflib lib32-libpng lib32-libldap lib32-mpg123 lib32-openal lib32-v4l-utils lib32-libpulse lib32-alsa-lib lib32-alsa-plugins lib32-libjpeg-turbo lib32-libxcomposite lib32-libxinerama lib32-ocl-icd lib32-libxslt lib32-gst-plugins-base-libs lib32-vkd3d lib32-sdl2 lib32-sdl2_ttf lib32-sdl2_image lib32-libcups lib32-libidn11 lib32-pixman lib32-zlib lib32-mesa lib32-cairo lib32-libx11 lib32-libxcb lib32-krb5 lib32-ncurses lib32-libxss

# spice-vdagent
sudo pacman -S spice-vdagent

# install plank dock
sudo pacman -S plank

# install stable difusion
cd ~/
wget https://github.com/cmdr2/stable-diffusion-ui/releases/latest/download/Easy-Diffusion-Linux.zip
unzip Easy-Diffusion-Linux.zip
#cd easy-diffusion
#./start.sh
# alias
echo 'alias difusion="cd ~/easy-diffusion && ./start.sh"' >> ~/.zshrc

# HOMEBREW
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew && eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew && eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
echo "#eval \"\$($(brew --prefix)/bin/brew shellenv)\"" >> ~/.zshrc
