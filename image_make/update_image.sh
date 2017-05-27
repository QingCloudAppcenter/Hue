#!/bin/bash
server=$1
if [ $# -lt 1 ];then
    echo error!
else
    scp ../code/hue_shell.sh $server:/usr/local/hue/
    scp ../code/my.cnf $server:/usr/local/mysql/
    scp -r ../code/conf.d $server:/etc/confd/
    scp -r ../code/templates $server:/etc/confd/
    scp ../code/mysql.tgz $server:/usr/local/mysql/
    scp ../../app-agent-linux-amd64.tar.gz $server:/usr/local/ 
fi
