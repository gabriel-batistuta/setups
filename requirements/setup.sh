# firefox developer
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" \
     -O ~/Downloads/firefox-developer.tar.xz
sudo tar -xJf ~/Downloads/firefox-developer.tar.xz -C /opt/
sudo mv /opt/firefox /opt/firefox-developer
sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer
cat <<EOF | sudo tee /usr/share/applications/firefox-developer.desktop
[Desktop Entry]
Version=141.0b6
Encoding=UTF-8
Name=Firefox Developer Edition
GenericName=Web Browser
Comment=Navegador Web de Desenvolvimento
Exec=/opt/firefox-developer/firefox %u
Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;
MimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;x-scheme-handler/http;x-scheme-handler/https;
StartupWMClass=firefox-dev
EOF
sudo chmod +x /usr/share/applications/firefox-developer.desktop
sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /usr/bin/firefox-developer 60
# sudo update-alternatives --config x-www-browser
sudo update-alternatives --set x-www-browser /usr/bin/firefox-developer
update-alternatives --display x-www-browser
xdg-settings set default-web-browser firefox-developer.desktop

sudo update-desktop-database
# desinstalar firefox padrão
sudo snap remove firefox

sudo apt install gedit



# Teclado RGB KNUP no Linux 
mkdir -p ~/.config/autostart
nano ~/.config/autostart/keyboard-led.desktop
# ADICIONE ISSO:
[Desktop Entry]
Type=Application
Exec=xset led 3
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=Keyboard LED
Comment=Ativar LED do teclado ao iniciar
# OU
crontab -e
@reboot DISPLAY=:0 xset led 3
# OU
setxkbmap -option "grp_led:scroll"


#sudo apt install brightnessctl
#brightnessctl -l
#sudo brightnessctl --device='input8::scrolllock' set 1

# git
sudo apt-get install git
git config --global user.email batistutag190@gmail.com
git config --global user.name gabriel
git config --global init.defaultBranch main

# GitHub CLI (tool for development using GitHub)
sudo apt install gh -y
gh auth login
gh config set browser $(which firefox-developer)
# ssh
# https://phoenixnap.com/kb/git-clone-ssh

sudo apt install flatpak

# https://snapcraft.io/install/snap-store/ubuntu
sudo apt install snapd

sudo apt install tmux
