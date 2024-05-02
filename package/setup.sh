# brew
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$(whoami)/.zshrc
source ~/.zshrc
brew install gcc

# pacman
wget https://gitlab.com/trivoxel/utilities/deb-pacman/uploads/460d83f8711c1ab5e16065e57e7eeabc/deb-pacman-2.0-0.deb -O ~/Documents/temporary/deb-pacman-2.0-0.deb
sudo dpkg -i ~/Documents/temporary/deb-pacman-2.0-0.deb

# rpm
sudo apt install rpm