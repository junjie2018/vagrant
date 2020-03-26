mkdir software

sudo apt-get install -y unzip
sudo apt-get install -y make

unzip /vagrant/software/syncd/dreamans-syncd-master.zip -d ~/software/

syncd_repo_path=/home/vagrant/software/syncd
syncd_install_path=/home/vagrant/software/syncd-deploy

checkCommand() {
    type $1 > /dev/null 2>&1
    if [ $? -ne 0 ]; then
        echo "error: $1 must be installed"
        echo "install exit"
        exit 1
    fi
}

checkCommand "go"
checkCommand "git"
checkCommand "make"

if [ -d ${syncd_install_path} ];then
    syncd_install_path=${syncd_install_path}-$( date +%Y%m%d%H%M%S )
fi

cd ${syncd_repo_path}
make

rm -fr ${syncd_install_path}
cp -r ${syncd_repo_path}/output ${syncd_install_path}

cat << EOF

Installing Syncd Path:  ${syncd_install_path}
Install complete.

EOF

echo '
export SYNCD_HOME=/home/vagrant/software/syncd-deploy
export PATH=$PATH:$SYNCD_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile

