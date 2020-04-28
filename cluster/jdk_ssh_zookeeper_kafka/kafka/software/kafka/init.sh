mkdir -p ~/software/kafka

tar -zxvf /vagrant/software/kafka/kafka_2.11-0.9.0.1.tgz -C ~/software/kafka --strip-components 1

cp /vagrant/software/kafka/conf/* ~/software/kafka/config/

echo '
export KAFKA_HOME=/home/vagrant/software/kafka
export PATH=$PATH:$KAFKA_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile