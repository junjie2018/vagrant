mkdir -p software
mkdir -p data/zookeeper/

tar -zxvf /vagrant/software/zookeeper/zookeeper-3.4.5.tar.gz -C ~/software/

# copy配置文件到指定位置
cp /vagrant/software/zookeeper/conf/* ~/software/zookeeper-3.4.5/conf

echo '
export PATH_TO_ZK=/home/vagrant/software/zookeeper-3.4.5
export PATH=$PATH:$PATH_TO_ZK/bin' | sudo tee -a /etc/profile
source /etc/profile