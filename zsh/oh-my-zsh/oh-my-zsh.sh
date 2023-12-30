# plugins guide install: https://www.alura.com.br/artigos/oh-my-zsh-melhorando-produtividade-terminal 
PLATFORM=$(jq '.platform' KEYS.json) 

if [[ "$PLATFORM" == "$PC" ]]; then
    sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
    # plugin fzf
    # source: https://github.com/junegunn/fzf
    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
elif [[ "$PLATFORM" == "$PHONE" ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

else
    :
fi

# plugin: zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
# source: https://github.com/ohmyzsh/ohmyzsh/issues/7688#issuecomment-476947050 
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting