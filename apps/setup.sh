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

mkdir ~/Documentos/temporary && cd ~/Documentos/temporary 

# telegram desktop (social network for phones)
sudo snap install telegram-desktop -y

sudo snap install vidcutter
