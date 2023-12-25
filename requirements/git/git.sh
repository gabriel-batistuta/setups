apt-get install git

email=$(jq '.email' ~/Documents/programming/setups/KEYS.json)

username=$(jq '.username' ~/Documents/programming/setups/KEYS.json)

git config --global user.email $email
git config --global user.name $username