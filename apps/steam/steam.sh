mkdir ~/Documents/temporary && cd ~/Documents/temporary 
wget https://cdn.cloudflare.steamstatic.com/client/installer/steam.deb

sudo dpkg -i steam.deb
sudo apt-get install -f