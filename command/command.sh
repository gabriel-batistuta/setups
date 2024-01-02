PLATFORM=$(jq '.platform' KEYS.json) 
if [[ "$PLATFORM" == "$PC" ]]; then
    # update path to add lvim to path
    echo "export PATH="$HOME/.local/bin/:$PATH"" >> ~/.zshrc
fi

# shortcut for development folder
echo 'alias p="cd ~/Documents/programming"' >> ~/.zshrc

# shorcut for view hardware info
echo 'alias hardware="sudo lshw"' >> ~/.zshrc

# shortcut for use a script
echo 'alias uernnews="cd ~/Documents/programming/Feed_UERN_Render && python3 main.py && cd"' >> ~/.zshrc

echo 'alias python="python3"' >> ~/.zshrc

echo 'alias show_path() {
        file=$1
        echo "$(pwd)/$file"
}' >> ~/.zshrc
