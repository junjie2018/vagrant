mkdir software

# tar -zxvf /vagrant/software/hbase/hbase-2.2.3-bin.tar.gz -C ~/software/

# # copy配置文件到指定位置
# cp /vagrant/software/hbase/conf/* ~/software/hbase-2.2.3/conf

# echo '
# export HBASE_HOME=/home/vagrant/software/hbase-2.2.3
# export PATH=$PATH:$HBASE_HOME/bin' | sudo tee -a ~/.bashrc
# source ~/.bashrc





# tar -zxvf /vagrant/software/hbase/hbase-0.98.24-hadoop2-bin.tar.gz -C ~/software/

# # copy配置文件到指定位置
# cp /vagrant/software/hbase/conf/* ~/software/hbase-0.98.24-hadoop2/conf

# echo '
# export HBASE_HOME=/home/vagrant/software/hbase-0.98.24-hadoop2
# export PATH=$PATH:$HBASE_HOME/bin' | sudo tee -a ~/.bashrc
# source ~/.bashrc





tar -zxvf /vagrant/software/hbase/hbase-1.3.0-bin.tar.gz -C ~/software/

# copy配置文件到指定位置
cp /vagrant/software/hbase/conf/* ~/software/hbase-1.3.0/conf

echo '
export HBASE_HOME=/home/vagrant/software/hbase-1.3.0
export PATH=$PATH:$HBASE_HOME/bin' | sudo tee -a ~/.bashrc
source ~/.bashrc



