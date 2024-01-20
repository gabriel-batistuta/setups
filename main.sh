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

files_to_run_PC=(KEYS.sh
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
    requirements/tmux/tmux.sh
    libraries/curl/curl.sh
    libraries/wget/wget.sh
    libraries/inxi/inxi.sh
    libraries/jq/jq.sh
    libraries/neofetch/neofetch.sh
    libraries/pdf2htmlEX/pdf2htmlEX.sh
    libraries/screenfetch/screenfetch.sh
    libraries/wine/wine.sh
    libraries/wkhtmltopdf/wkhtmltopdf.sh
    jobs/jobs.sh
    development/go/go.sh
    development/neovim/neovim.sh
    development/node/node.sh
    development/php/lamp-xampp.sh
    development/ruby/ruby.sh
    development/rust/rust.sh
    development/lunarvim/lunarvim.sh
    development/vscode/vscode.sh
    development/postman/postman.sh
    development/insomnia/insomnia.sh
    development/zeal/zeal.sh
    command/command.sh
    apps/authy/authy.sh
    apps/discord/discord.sh
    apps/qbitorrent/qbitorrent.sh
    apps/steam/steam.sh
    apps/telegram/telegram.sh
    apps/vlc/vlc.sh
    apps/lutris/lutris.sh
    apps/vidcutter/vidcutter.sh
    tools/gobuster/gobuster.sh)

files_to_run_PHONE=(KEYS.sh
    requirements/git/git.sh
    requirements/github/github/github.sh
    requirements/github/github-cli/github-cli.sh
    requirements/tmux/tmux.sh
    development/python/python.sh
    zsh/zsh/zsh.sh
    zsh/oh-my-zsh/oh-my-zsh.sh
    zsh/oh-my-zsh/oh-my-zsh.py
    libraries/curl/curl.sh
    libraries/wget/wget.sh
    libraries/inxi/inxi.sh
    libraries/wkhtmltopdf/wkhtmltopdf.sh
    development/node/node.sh
    command/command.sh
    development/go/go.sh
    tools/gobuster/gobuster.sh
)

write_installed_tools() {
    # getting the filename of tool
    tool_path=$1
    tool=$(echo "$tool_path" | awk -F/ '{print $NF}' | cut -d. -f1)
    
    # creating a log file to write the installed tools
    log_file="tools_log.txt"
    if [ -e "~/$log_file" ]; then
        :
    else
        cd
        touch $log_file
        echo "create: LOG_FILE ~/$log_file"
    fi
    echo "$tool" >> $log_file
}

main() {
    PLATFORM=$(jq '.platform' secret.json) 
    PC='x86_64'
    PHONE='Android'

    if [[ "$PLATFORM" == "$PC" ]]; then
        echo "[Platform]: PC"
        for file in "${files_to_run_PC[@]}"; do
            give_permission_and_run $file
            write_installed_tools $file
        done
    elif [[ "$PLATFORM" == "$PHONE" ]]; then
        echo "[Platform]: PHONE"
        for file in "${files_to_run_PHONE[@]}"; do
            give_permission_and_run $file
            write_installed_tools $file
        done
    else
        echo -e "[UNKNOWN PLATFORM]\n[Aborting...]"
    fi
}

main
