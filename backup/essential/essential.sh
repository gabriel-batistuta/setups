# return for home
cd 

echo 'you can see the complete documentation in -> https://github.com/gabriel-batistuta/setups/tree/master/backup'

echo 'STARTING NOW!'

# set the user using the command that catch the name of the user of the system
# ref: https://pt.stackoverflow.com/questions/364889/como-passar-resultado-de-comando-para-uma-vari%C3%A1vel-em-bash#:~:text=Basta%20usar%20a%20sintaxe%20de,ser%20feita%20de%20dois%20jeitos.&text=Neste%20caso%20o%20resultado%20%C3%A9,haver%20diferen%C3%A7as%20entre%20as%20abordagens.

# setting the username of the user
echo 'please type your username: '
read user

# setting the email of the user
echo 'please type your email: '
read email

# show username and email
echo 'user: '$user, 'email:'$email

# updating the packages
sudo apt update && sudo apt upgrade -y

# CONFIGS OF WORKSPACE ->

# GIT (controller of code version)
sudo apt install git -y

git config --global user.name $user

git config --global user.email $email

# GitHub CLI (tool for development using GitHub)
sudo apt install gh -y

gh auth login

# creating a local folder for work in path: '/home/$user/Documentos/programming'
cd Documentos

mkdir programming