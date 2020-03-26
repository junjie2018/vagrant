mkdir -p ~/software/hadoop

# 解压文件并将配置文件拷贝到指定目录
# tar -zxvf /vagrant/software/hadoop/hadoop-3.2.1.tar.gz -C ~/software/hadoop --strip-components 1
# tar -zxvf /vagrant/software/hadoop/hadoop-2.8.5.tar.gz -C ~/software/hadoop --strip-components 1
tar -zxvf /vagrant/software/hadoop/hadoop-2.9.2.tar.gz -C ~/software/hadoop --strip-components 1


# 拷贝配置文件到指定目录
cp /vagrant/software/hadoop/conf/* ~/software/hadoop/etc/hadoop/

# 设置配置环境变量
echo '
export HADOOP_HOME=/home/vagrant/software/hadoop
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' | sudo tee -a /etc/profile
source /etc/profile


