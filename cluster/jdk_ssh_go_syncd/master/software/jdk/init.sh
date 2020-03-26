mkdir software

tar -zxvf /vagrant/software/jdk/jdk-8u231-linux-x64.tar.gz -C ~/software/

echo '
export JAVA_HOME=/home/vagrant/software/jdk1.8.0_231
export PATH=$PATH:$JAVA_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile