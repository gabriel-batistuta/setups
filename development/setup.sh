sudo apt install golang-go

# neovim
# autor of code:
# https://github.com/LunarVim/LunarVim/issues/2811/#issuecomment-1182864476

# cd ~/Documents/temporary && wget https://github.com/neovim/neovim/releases/download/v0.9.4/nvim-linux64.tar.gz
# tar xzvf nvim-linux64.tar.gz
# sudo mv nvim-linux64/bin/nvim /usr/local/bin

# autor of code:
# https://www.reddit.com/r/lunarvim/comments/18o3fbg/comment/kef4en0/
bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/rolling/utils/installer/install-neovim-from-release)

# python3
sudo apt-get install python3
# pip
sudo apt install python3-pip
# update pip
python3 -m ensurepip --upgrade
# virtual enviroment
sudo apt install python3.10-venv
pip install virtualenv
# python error adviser
sudo snap install pyright --classic

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
source ~/.nvm/nvm.sh
nvm install 20
node -v
npm -v

# php
cd ~/Documents/temporary
sudo apt-get install lamp-server^ -y
chmod +x xampp-linux-x64-8.2.0-0-installer.run
sudo ./xampp-linux-x64-8.2.0-0-installer.run

# ruby
sudo apt-get install ruby-full

# sqlite
sudo apt install sqlite3
sqlite3 --version
sudo apt install sqlitebrowser

# rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# vs code
sudo snap install code --classic

# Zeal docs (for documentation in programming languages)
sudo apt install zeal -y

# install postgresql
# https://www.youtube.com/watch?v=cdhpmaa4YJE
sudo sh -c 'echo "deb https://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
# show if is running and the version
sudo systemctl status postgresql.service
psql --version
# give password for user postgres
sudo -u postgres psql << EOF
alter user postgres password '0000'
EOF
# enter in postgres
# psql -h localhost -U postgres

# ODBC
sudo apt install odbc-postgresql

# flutter
wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.22.3-stable.tar.xz
sudo tar -xf ~/Downloads/flutter_linux_3.22.3-stable.tar.xz -C /usr/bin/
echo 'export PATH="/usr/bin/flutter/bin:$PATH"' >> ~/.zshenv
echo 'export PATH="/usr/bin/flutter/bin:$PATH"' >> ~/.bash_profile
sudo apt install clang
sudo apt install cmake
sudo apt install ninja-build
sudo apt install libgtk-3-dev
# Open Android Studio
# Tools Menu, SDK Manager
# In the window that comes up there are inner panels, choose SDK Tools panel
# Tick Android SDK Command-line Tools
# Choose Apply button near the bottom of the window
flutter doctor --android-licenses
