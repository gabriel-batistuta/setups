# firefox
wget "https://download.mozilla.org/?product=firefox-devedition-latest-ssl&os=linux64&lang=pt-BR" -O firefox-developer.tar.bz2
sudo tar -jxvf  firefox-developer.tar.bz2 -C /opt/
sudo mv /opt/firefox*/ /opt/firefox-developer
sudo ln -sf /opt/firefox-developer/firefox /usr/bin/firefox-developer
echo -e '[Desktop Entry]\n Version=yy.y.y\n Encoding=UTF-8\n Name=Mozilla Firefox\n Comment=Navegador Web\n Exec=/opt/firefox-developer/firefox\n Icon=/opt/firefox-developer/browser/chrome/icons/default/default128.png\n Type=Application\n Categories=Network' | sudo tee /usr/share/applications/firefox-developer.desktop
sudo chmod +x /usr/share/applications/firefox-developer.desktop
sudo update-alternatives --config x-www-browser

# git
sudo apt-get install git
git config --global user.email batistutag190@gmail.com
git config --global user.name gabriel
git config --global init.defaultBranch main

# GitHub CLI (tool for development using GitHub)
sudo apt install gh -y
gh auth login

# ssh
# https://phoenixnap.com/kb/git-clone-ssh

sudo apt install flatpak

# https://snapcraft.io/install/snap-store/ubuntu
sudo apt install snapd

sudo apt install tmux
