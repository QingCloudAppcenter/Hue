#!/bin/bash
server=$1
if [ $# -lt 1 ];then
    echo error!
else
    ssh $server "passwd ubuntu"
    ssh $server "rm /usr/local/hadoop"
    ssh $server "ln -s /usr/local/hadoop-2.7.2 /usr/local/hadoop"
    scp ../app-agent-linux-amd64.tar.gz $server:/usr/local/ 
    ssh $server "tar -zxf /usr/local/app-agent-linux-amd64.tar.gz -C /usr/local"
    ssh $server "rm /usr/local/app-agent-linux-amd64.tar.gz"
    ssh $server "cd /usr/local/app-agent-linux-amd64; ./install.sh"
    ssh $server "rm -r /usr/local/mysql/data"

    scp code/mysql.tgz $server:/usr/local/mysql/
    scp -r code/conf.d $server:/etc/confd/
    scp -r code/templates $server:/etc/confd/
    scp code/hue_shell.sh $server:/usr/local/hue/
    scp code/my.cnf $server:/usr/local/mysql/
fi
