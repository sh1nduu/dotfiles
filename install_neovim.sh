yum -y install libtool autoconf automake cmake gcc gcc-c++ make pkgconfig unzip

git clone https://github.com/neovim/neovim
cd neovim && make && make install
