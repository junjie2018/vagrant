hdfs namenode -format
start-dfs.sh
start-yarn.sh
mr-jobhistory-daemon.sh start historyserver
hadoop fs -mkdir /input
hadoop fs -put /vagrant/input/input /input/input

hadoop dfsadmin -safemode leave
