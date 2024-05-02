sudo apt-get install zsh 
# tornando zsh o shell padrão
chsh -s $(which zsh)

# oh my zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# plugin zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# plugin: zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
# source: https://github.com/ohmyzsh/ohmyzsh/issues/7688#issuecomment-476947050 
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# plugin fzf
# source: https://github.com/junegunn/fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
# adicionando os plugins
echo 'plugins+=(zsh-autosuggestions
zsh-syntax-highlighting
fzf)' >> ~/.zshrc