mkdir -p ~/software/gcc

tar -zxvf /vagrant/software/gcc/gcc-7.2.0.tar.gz -C ~/software/gcc --strip-components 1

cd ~/software/gcc
./contrib/download_prerequisites