install_app() {
    app_name=$1
    executable_path=$2
    type="Application"
    icon_path=$3
    desktop_filename=$4
    icon_foldername=$5

    sudo mv $executable_path /usr/bin/
    exec=/usr/bin/$(basename "$executable_path")
    sudo mkdir /usr/share/icons/$icon_foldername
    sudo mv $icon_path /usr/share/icons/$icon_foldername
    icon=/usr/share/icons/$icon_foldername/$(basename "$icon_path")
    sudo touch ~/.local/share/applications/$desktop_filename.desktop

    sudo echo "[Desktop Entry]
    Name=$app_name
    Exec=$exec
    Type=Application
    Icon=$icon" >> ~/.local/share/applications/$desktop_filename.desktop
}

refresh_menu() {
    sudo gtk-update-icon-cache -f -t ~/.local/share/icons/
    sudo update-desktop-database
}