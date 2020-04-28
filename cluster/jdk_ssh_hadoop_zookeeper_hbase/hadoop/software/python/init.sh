mkdir -p software/python

sudo apt-get -y install gcc
sudo apt-get -y install make

tar -xvf /vagrant/software/python/Python-3.7.6.tgz -C ~/software/python --strip-components 1
sudo cp ~/software/python /usr/local/python


cd ~/software/python
