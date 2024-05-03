# shortcut for development folder
echo 'alias p="cd ~/Documents/programming"\n' >> ~/.zshrc

# shorcut for view hardware info
echo 'alias hardware="sudo lshw"\n' >> ~/.zshrc

# shortcut for use a script
echo 'alias f="cd ~/Documents/programming/Feed_UERN_Render && python3 main.py && cd"\n' >> ~/.zshrc

# equivalent python call to windows
echo 'alias python="python3"\n' >> ~/.zshrc

# equivalent clear call to windows
echo 'alias cls="clear"' >> ~/.zshrc

# call python venv
echo 'alias python_venv="python3 -m virtualenv -p python3"' >> ~/.zshrc

echo 'alias postgres="psql -h localhost -U postgres"'

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
