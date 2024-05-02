sudo apt-get install curl

# inxi (tool to show description of your system and pc).
# https://github.com/smxi/inxi
sudo apt install inxi -y

# tool for get data from json with shellscript 
# https://github.com/jqlang/jq
# https://jqlang.github.io/jq/download/
# https://www.baeldung.com/linux/jq-command-json
sudo apt-get install jq

sudo apt install neofetch

# pdf2htmlEX 'https://github.com/pdf2htmlEX/pdf2htmlEX'
wget 'https://github.com/pdf2htmlEX/pdf2htmlEX/releases/download/v0.18.8.rc1/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.deb' -O ~/Documents/temporary/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.deb
sudo dpkg -i ~/Documents/temporary/pdf2htmlEX-0.18.8.rc1-master-20200630-Ubuntu-bionic-x86_64.deb

sudo apt-get install screenfetch

sudo apt install wget

# wine (executer of .exe archives)
sudo apt install wine -y

# wkhtmltopdf 'https://wkhtmltopdf.org'
sudo apt install wkhtmltopdf

sudo apt install gobuster