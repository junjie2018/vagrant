mkdir software

# 解压文件
tar -zxvf /vagrant/software/hadooop/hadoop-3.2.1.tar.gz -C ~/software/

# copy配置文件到指定位置
cp /vagrant/software/hadoop/conf/* ~/software/hadoop-3.2.1/etc/hadoop/

# 设置配置环境变量
echo '
export HADOOP_HOME=/home/vagrant/software/hadoop-3.2.1
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' | sudo tee -a ~/.bashrc
source ~/.bashrc

