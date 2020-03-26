mkdir -p software

tar -zxvf /vagrant/software/go/go1.14.linux-amd64.tar.gz -C ~/software/

echo '
export GO_HOME=/home/vagrant/software/go
export PATH=$PATH:$GO_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile