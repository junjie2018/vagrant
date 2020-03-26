mkdir software

tar -zxvf /vagrant/software/zookeeper/zookeeper-3.4.5.tar.gz -C ~/software/

echo '
export PATH_TO_ZK=/home/vagrant/software/zookeeper-3.4.5
export PATH=$PATH:$PATH_TO_ZK/bin' | sudo tee -a ~/.bashrc
source ~/.bashrc