# firefox developer
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2
sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/
sudo mv /opt/firefox*/ /opt/firefox-developer
sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer
echo -e '[Desktop Entry]\nVersion=yy.y.y\nEncoding=UTF-8\nName=Firefox Developer Edition\nGenericName=Web Browser\nComment=Navegador Web de Desenvolvimento\nExec=/opt/firefox-developer/firefox %u\nIcon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\nType=Application\nCategories=Network;WebBrowser;\nMimeType=text/html;text/xml;application/xhtml+xml;application/xml;application/rss+xml;application/rdf+xml;x-scheme-handler/http;x-scheme-handler/https;\nStartupWMClass=firefox-aurora' | sudo tee /usr/share/applications/firefox-developer.desktop
sudo chmod +x /usr/share/applications/firefox-developer.desktop
sudo update-alternatives --install /usr/bin/x-www-browser x-www-browser /usr/bin/firefox-developer 60
# sudo update-alternatives --config x-www-browser
sudo update-alternatives --set x-www-browser /usr/bin/firefox-developer
update-alternatives --display x-www-browser
xdg-settings set default-web-browser firefox-developer.desktop

sudo update-desktop-database
# desinstalar firefox padrão
sudo snap remove firefox

# Teclado RGB KNUP no Linux 
sudo apt install brightnessctl
brightnessctl -l
sudo brightnessctl --device='input8::scrolllock' set 1

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
