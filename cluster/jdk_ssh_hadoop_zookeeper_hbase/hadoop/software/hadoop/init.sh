mkdir software

# # 解压文件
# tar -zxvf /vagrant/software/hadoop/hadoop-3.2.1.tar.gz -C ~/software/

# # copy配置文件到指定位置
# cp /vagrant/software/hadoop/conf/* ~/software/hadoop-3.2.1/etc/hadoop/

# # 设置配置环境变量
# echo '
# export HADOOP_HOME=/home/vagrant/software/hadoop-3.2.1
# export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' | sudo tee -a /etc/profile
# source /etc/profile


# 解压文件
tar -zxvf /vagrant/software/hadoop/hadoop-2.8.5.tar.gz -C ~/software/

# copy配置文件到指定位置
cp /vagrant/software/hadoop/conf/* ~/software/hadoop-2.8.5/etc/hadoop/

# 设置配置环境变量
echo '
export HADOOP_HOME=/home/vagrant/software/hadoop-2.8.5
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' | sudo tee -a /etc/profile
source /etc/profile


