function copyFileByPattern(){
    for file in `ls $1`
    do
        if [ -f $1"/"$file ]; then
            if [[ $file =~ $2 ]]; then
                cp $1"/"$file $3
            fi
        else
            copyFileByPattern $1"/"$file $2 $3
        fi
    done
}

mkdir -p ~/software/hbase

# tar -zxvf /vagrant/software/hbase/hbase-1.3.0-bin.tar.gz -C ~/software/hbase --strip-components 1
# tar -zxvf /vagrant/software/hbase/hbase-0.98.24-hadoop2-bin.tar.gz -C ~/software/hbase --strip-components 1
# tar -zxvf /vagrant/software/hbase/hbase-2.2.3-bin.tar.gz -C ~/software/hbase --strip-components 1
# tar -zxvf /vagrant/software/hbase/hbase-2.0.0-bin.tar.gz -C ~/software/hbase --strip-components 1
tar -zxvf /vagrant/software/hbase/hbase-1.5.0-bin.tar.gz -C ~/software/hbase --strip-components 1


# copy配置文件到指定位置
cp /vagrant/software/hbase/conf/* ~/software/hbase/conf
rm -rf ~/software/hbase/lib/hadoop-*
copyFileByPattern ~/software/hadoop/share ^hadoop-.*jar$ ~/software/hbase/lib/


echo '
export HBASE_HOME=/home/vagrant/software/hbase
export PATH=$PATH:$HBASE_HOME/bin' | sudo tee -a /etc/profile
source /etc/profile
