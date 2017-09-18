#!/bin/bash
server=$1
if [ $# -lt 1 ];then
    echo error!
else
    #ssh $server "passwd ubuntu"
    #scp ../app-agent-linux-amd64.tar.gz $server:/usr/local/ 
    #ssh $server "tar -zxf /usr/local/app-agent-linux-amd64.tar.gz -C /usr/local"
    #ssh $server "rm /usr/local/app-agent-linux-amd64.tar.gz"
    #ssh $server "cd /usr/local/app-agent-linux-amd64; ./install.sh"
    #ssh $server "rm -r /usr/local/mysql/data"
    #ssh $server "groupadd yunify"
    #ssh $server "useradd -g yunify yunify"
    #scp image/* $server:/usr/local/
    #ssh $server "rm -rf /usr/local/hadoop-2.7.3/"
    #ssh $server "tar -zxf /usr/local/hadoop-2.7.3.tar.gz -C /usr/local"
    #ssh $server "rm /usr/local/hadoop-2.7.3.tar.gz"
    #ssh $server "rm -rf /usr/local/spark-2.*-bin-hadoop2.7/"
    #ssh $server "tar -zxf /usr/local/spark-2.2.0-bin-hadoop2.7.tgz -C /usr/local"
    #ssh $server "rm /usr/local/spark-2.2.0-bin-hadoop2.7.tgz"
    
    #scp jar/mysql-connector-java-5.1.39-bin.jar $server:/usr/local/hive/lib/
    #scp jar/S3/* $server:/usr/local/hadoop/share/hadoop/common/lib/
    #scp code/mysql.tgz $server:/usr/local/mysql/
    scp code/profile $server:/etc/    
    scp -r code/conf.d $server:/etc/confd/
    scp -r code/templates $server:/etc/confd/
    scp code/hue_shell.sh $server:/usr/local/hue/
    scp code/my.cnf $server:/usr/local/mysql/
fi
