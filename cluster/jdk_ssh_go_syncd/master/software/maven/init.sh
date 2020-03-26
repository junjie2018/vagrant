mkdir software

tar -zxvf /vagrant/software/maven/apache-maven-3.6.0-bin.tar.gz -C ~/software/

# copy配置文件到指定位置
cp /vagrant/software/maven/conf/* ~/software/apache-maven-3.6.0/conf

echo '
export MAVEN_HOME=/home/vagrant/software/apache-maven-3.6.0
export PATH=$PATH:$MAVEN_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile