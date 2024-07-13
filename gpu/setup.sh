# this script allows to install the tool for swtch the graphics card of the machine
# https://github.com/bayasdev/envycontrol
sudo apt install jq
sudo apt install gnome-tweaks
sudo apt install gnome-shell-extension-prefs
sudo apt install dconf-editor

this_dir=$(pwd -P)
cd ~/Documentos/temporary/

wget https://github.com/bayasdev/envycontrol/releases/download/v3.4.0/python3-envycontrol_3.4.0-1_all.deb

sudo dpkg -i python3-envycontrol_3.4.0-1_all.deb

cd $(this_dir)

mkdir gpu_settings

unzip GPU_profile_selectorlorenzo9904.gmail.com.v11.shell-extension.zip -d gpu_settings

METADATA_FILE=gpu_settings/metada.json

UUID=$(jq -r '.uuid' "$METADATA_FILE")

mv gpu_settings $UUID

cp $UUID ~/.local/share/gnome-shell/extensions/

# now you go to app "Extensions" and enable the gpu profile selector