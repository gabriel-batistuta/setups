#!/bin/zsh
sudo apt update && sudo apt upgrade -y

give_permission_and_run() {
    path=$1
    if echo "$path" | /bin/grep -q "\.py$"; then
        python3 -u "$path"
    else
        /bin/chmod +x "$path" && /usr/bin/sudo "./$path"
    fi
}

files_to_run=(KEYS.sh
    requirements/git/git.sh
    requirements/github/github/github.sh
    requirements/github/github-cli/github-cli.sh
    development/python/python.sh
    zsh/zsh/zsh.sh
    zsh/oh-my-zsh/oh-my-zsh.sh
    zsh/oh-my-zsh/oh-my-zsh.py
    requirements/folder/folder.sh
    requirements/store/snap/snap.sh
    requirements/store/flatpak/flatpak.sh
    libraries/curl/curl.sh
    libraries/inxi/inxi.sh
    libraries/jq/jq.sh
    libraries/neofetch/neofetch.sh
    libraries/pdf2htmlEX/pdf2htmlEX.sh
    libraries/screenfetch/screenfetch.sh
    libraries/wine/wine.sh
    libraries/wkhtmltopdf/wkhtmltopdf.sh
    jobs/jobs.sh
    development/neovim/neovim.sh
    development/node/node.sh
    development/php/lamp-xampp.sh
    development/ruby/ruby.sh
    development/rust/rust.sh
    development/lunarvim/lunarvim.sh
    development/vscode/vscode.sh
    development/zeal/zeal.sh
    command/command.sh
    apps/authy/authy.sh
    apps/discord/discord.sh
    apps/qbitorrent/qbitorrent.sh
    apps/steam/steam.sh
    apps/telegram/telegram.sh
    apps/vlc/vlc.sh
    apps/lutris/lutris.sh)

for file in "${files_to_run[@]}"; do
    give_permission_and_run $file
done
