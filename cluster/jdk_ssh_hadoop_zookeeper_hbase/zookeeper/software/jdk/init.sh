mkdir -p ~/software/jdk

tar -zxvf /vagrant/software/jdk/jdk-8u231-linux-x64.tar.gz -C ~/software/jdk --strip-components 1

echo '
export JAVA_HOME=/home/vagrant/software/jdk
export PATH=$PATH:$JAVA_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile