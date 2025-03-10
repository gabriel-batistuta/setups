# install the Authy Desktop in:'https://snapcraft.io/authy' for generate token for login (GitHub, Twitch)
sudo snap install authy

sudo apt install flatpak
flatpak remote-add --if-not-exists flathub "https://flathub.org/repo/flathub.flatpakrepo"

# OBS
flatpak install flathub com.obsproject.Studio
# Para erros de drivers da nvidia no OBS
# sudo apt update && sudo apt upgrade -y
# sudo ubuntu-drivers autoinstall  # (caso esteja usando Ubuntu)
# reboot


flatpak install flathub com.discordapp.Discord

flatpak install flathub net.lutris.Lutris

# qbitorrent (downloader and seeder of archives in web)
sudo apt install qbittorrent -y

mkdir ~/Documents/temporary && cd ~/Documents/temporary 
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb

sudo dpkg -i steam.deb
sudo apt-get install -f

# telegram desktop (social network for phones)
sudo apt install telegram-desktop -y

sudo snap install vidcutter
