apt-get install git

# if [ "$0" = "$ZSH_SOURCE" ]; then
#     root_directory=${PWD%/*/*}
#     email=$(jq '.email' $root_directory/secret.json)
#     username=$(jq '.username' $root_directory/secret.json)
#     echo 'main'
#     echo "$email"
#     echo "$username"


email=$(jq '.email' ./secret.json)
username=$(jq '.username' ./secret.json)

git config --global user.email $email
git config --global user.name $username