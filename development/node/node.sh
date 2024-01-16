node_source_code='https://nodejs.org/dist/v20.11.0/node-v20.11.0.tar.gz'

cd ~/Documents/temporary && wget $node_source_code 
tar xzf node-v20.11.0
sudo mv node-v20.11.0.tar.gz/bin/node /usr/bin
echo "export node='/usr/bin/node'" >> ~./zshrc