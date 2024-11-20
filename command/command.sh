# shortcut for development folder
echo 'alias p="cd ~/Documentos/programming"\n' >> ~/.zshrc

echo 'alias s="source venv/bin/activate"\n' >> ~/.zshrc

echo 'alias r="pip install -r requirements.txt"\n' >> ~/.zshrc

echo 'alias v="python3 -m venv venv"\n' >> ~/.zshrc

# shorcut for view hardware info
echo 'alias hardware="sudo lshw"\n' >> ~/.zshrc

# shortcut for use a script
echo 'alias f="cd ~/Documentos/programming/Feed_UERN_Render && python3 main.py && cd"\n' >> ~/.zshrc

# equivalent python call to windows
echo 'alias python="python3"\n' >> ~/.zshrc

# equivalent clear call to windows
echo 'alias cls="clear"' >> ~/.zshrc

# call python venv
echo 'alias python_venv="python3 -m virtualenv -p python3"' >> ~/.zshrc

echo 'alias postgres="psql -h localhost -U postgres"' >> ~/.zshrc

echo 'alias firefox="firefox-developer"' >> ~/.zshrc

echo 'alias gem="sudo gem"' >> ~/.zshrc

# show absolute path of a file
echo 'show_path() {
        file=$1
        echo "$(pwd)/$file"
}\n' >> ~/.zshrc

# show filename of file removing blanks spaces
echo 'remove_space() {
        file_name=$1
        echo "$file_name" | sed 's/ /\\ /g'
}\n' >> ~/.zshrc

# find file by name
echo 'find_file() {
   file_name=$1
   directory=$(pwd)
   find $directory -type f | fzf --preview 'cat {}' --query '$file_name'
}\n' >> ~/.zshrc

# find all files with string in directory
echo 'find_string() {
  string=$1 
  directory=$(pwd)
  grep -rl '$string' $directory | fzf --preview 'cat {}'
}\n' >> ~/.zshrc

# replace all string of files in current directory (except git)
echo 'replace_string() {
  directory=$(pwd)
  old_string=$1
  new_string=$2
  find "$directory" -type f ! -path "*/.git/*" -exec sed -i "s/$old_string/$new_string/g" {} \;
}\n' >> ~/.zshrc

echo 'py() { 
  echo "Criando ambiente de desenvolvimento Python"
  touch main.py
  touch requirements.txt
  touch README.md
  touch .gitignore
  mkdir modules
  touch modules/__init__.py
  echo "import modules as md\n\nif __name__ == '__main__':\n\tpass" > main.py
  echo "__pycache__/\ntest.py\nvenv/\n.vscode/\n.github/" > .gitignore
  this_dir=$(basename $(pwd))
  echo "# $this_dir\n\n" > README.md
}\n' >> ~/.zshrc 

echo 'output() {
  echo "log do sistema"
  cat /var/log/syslog | grep CRON
  #cat /var/log/mail.log
}\n' >> ~/.zshrc

# rust tools for refined version of cat and ls files
cargo install bat exa

echo 'alias cat="bat"' >> ~/.zshrc
echo 'alias ls="exa"' >> ~/.zshrc

chmod 600 ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa
chmod 700 ~/.ssh
echo 'alias vm_oracle="ssh -i ~/.ssh/id_rsa ubuntu@129.148.56.24 -p 22"' >> ~/.zshrc
echo 'alias jutsu="ssh -D 9999 -C -q -N -i ~/.ssh/id_rsa ubuntu@129.148.56.24 -p 80"' >> ~/.zshrc
