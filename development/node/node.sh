node_source_code='https://nodejs.org/dist/v20.11.0/node-v20.11.0.tar.gz'

cd ~/Documents/temporary && wget $node_source_code 
tar xzf node-v20.11.0
sudo mv node-v20.11.0.tar.gz/bin/node /usr/bin
# echo "export node='/usr/bin/node'" >> ~./zshrc
echo "export PATH=$PATH:/usr/bin/node" >> ~/.zshrc
sudo npm cache clean -f
sudo npm install -g n
sudo n stable

sudo ln -sf /usr/local/n/versions/node/20.11.0/bin/node /usr/bin/node

sudo npm install npm -g
