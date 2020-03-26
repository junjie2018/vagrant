mkdir software

tar -zxvf /vagrant/software/hadoop-3.2.1.tar.gz -C ~/software/
tar -zxvf /vagrant/software/jdk-8u231-linux-x64.tar.gz -C ~/software/
cp /vagrant/hadoop/* ~/software/hadoop-3.2.1/etc/hadoop/

# ssh-keygen -t rsa -P '' -f ~/.ssh/id_rsa
# cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

cp /vagrant/.ssh/id_rsa ~/.ssh/id_rsa
cp /vagrant/.ssh/id_rsa.pub ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

chmod 600 ~/.ssh/id_rsa

echo '
export JAVA_HOME=/home/vagrant/software/jdk1.8.0_231
export PATH=$PATH:$JAVA_HOME/bin

export HADOOP_HOME=/home/vagrant/software/hadoop-3.2.1
export PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin' | sudo tee -a ~/.bashrc
source ~/.bashrc

echo '
    StrictHostKeyChecking no
    UserKnownHostsFile /dev/null
' | sudo tee -a /etc/ssh/ssh_config