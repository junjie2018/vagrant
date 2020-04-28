mkdir -p ~/software/phoenix

# tar -zxvf /vagrant/software/phoenix/apache-phoenix-5.0.0-HBase-2.0-bin.tar.gz -C ~/software/phoenix --strip-components 1
tar -zxvf /vagrant/software/phoenix/apache-phoenix-4.15.0-HBase-1.5-bin.tar.gz -C ~/software/phoenix --strip-components 1


# copy关键的jar包到hbase的目录下
cp ~/software/phoenix/phoenix-5.0.0-HBase-2.0-server.jar ~/software/hbase/lib
cp ~/software/phoenix/phoenix-core-5.0.0-HBase-2.0.jar ~/software/hbase/lib

# 拷贝配置文件到指定目录
cp /vagrant/software/phoenix/conf/* ~/software/phoenix/bin/



