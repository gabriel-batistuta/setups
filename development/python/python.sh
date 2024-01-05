# python3
sudo apt-get install python3

# pip
sudo apt install python3-pip

# update pip
python3 -m ensurepip --upgrade

# virtual enviroment
sudo apt install python3.10-venv

# python error adviser
sudo snap install pyright --classic


# https://docs.posit.co/resources/install-python-source/#install-pip
# install new release of python
update_python() {
    download_link=$1
    cd ~/Documents && wget $download_link
    compressed_filename=$(basename $download_link)
    version=$(echo "$compressed_filename" | grep -oP '\d+\.\d+\.\d+')
    tar -xvzf $compressed_filename
    python_folder=${$compressed_filename//.tar.gz/}
    cd $python_folder

    export PYTHON_VERSION=$version
    export PYTHON_MAJOR=3

    sudo apt-get update
    sudo apt-get install gdebi-core

    sudo apt-get install \
    curl \
    gcc \
    libbz2-dev \
    libev-dev \
    libffi-dev \
    libgdbm-dev \
    liblzma-dev \
    libncurses-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    make \
    tk-dev \
    wget \
    zlib1g-dev

    ./configure \
    --prefix=/opt/python/${PYTHON_VERSION} \
    --enable-shared \
    --enable-optimizations \
    --enable-ipv6 \
    LDFLAGS=-Wl,-rpath=/opt/python/${PYTHON_VERSION}/lib,--disable-new-dtags
    make
    sudo make install

    curl -O https://bootstrap.pypa.io/get-pip.py
    sudo /opt/python/${PYTHON_VERSION}/bin/python${PYTHON_MAJOR} get-pip.py

    echo "PATH=/opt/python/${PYTHON_VERSION}/bin/:$PATH" >> ~/.zshrc
}