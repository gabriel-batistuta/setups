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

# <<<------------------- IMPORTANT: OPEN STORE AND INSTALL ANDROID STUDIO FOR CONTINUE ------------------->>>

# install expo for react native
npm install -g expo-cli
# install configs for use android studio emulator
sudo apt install openjdk-17-jdk
# set paths for android studio
echo 'export ANDROID_HOME=/home/gabriel/Android/Sdk
export ANDROID_SDK_ROOT=/home/gabriel/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH' >> ~/.zshrc
source ~/.zshrc

# php | laravel
sudo apt-get install -y \
  build-essential autoconf make pkg-config \
  libxml2-dev libssl-dev libcurl4-openssl-dev \
  libjpeg-dev libpng-dev libonig-dev \
  libsqlite3-dev libbz2-dev zlib1g-dev libzip-dev \
  libtidy-dev libxslt1-dev
# phpenv sintax is equal to rbenv, phpenv install, local, global
phpenv install 8.2.6
# composer
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer --version

# ruby
sudo apt update
sudo apt install -y git curl autoconf bison build-essential libssl-dev libyaml-dev libreadline-dev zlib1g-dev libncurses-dev libffi-dev libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
# rbenv
rbenv install 3.4.1
rbenv global 3.4.1
# remove alias gem
ruby -v
unalias gem
which gem
# install bundler and rails
gem install bundler
gem install rails

# docker
sudo apt update
sudo apt install ca-certificates curl gnupg
# (sudo docker)

# Apache Airflow
# add no ~/.zshrc:
# export AIRFLOW_HOME=~/airflow
# Defina a versão do Airflow
export AIRFLOW_VERSION=3.1.6
# Crie e ative um ambiente virtual
python -m venv .venv
source .venv/bin/activate
# Atualize o pip
python -m pip install --upgrade pip setuptools wheel
# Descobre a versão do Python (ex: 3.10, 3.11)
PYTHON_VERSION="$(python -c 'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")')"
# URL de constraints correta para sua versão de Python
CONSTRAINT_URL="https://raw.githubusercontent.com/apache/airflow/constraints-${AIRFLOW_VERSION}/constraints-${PYTHON_VERSION}.txt"
# Instala o Airflow usando constraints (obrigatório)
python -m pip install "apache-airflow==${AIRFLOW_VERSION}" --constraint "${CONSTRAINT_URL}"
# start airflow -> localhost:8080
airflow standalone

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

# ODBC (for use library in python to handle postgres)
sudo apt install odbc-postgresql

# install PG_ADMIN4 (Graphical APP for Postgres )
curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg
sudo sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'
# Install for both desktop and web modes:
sudo apt install pgadmin4

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
