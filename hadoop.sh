#!/bin/bash

envsubst '${IP},${PORT}' </etc/hadoop/core-sites.xml  > /etc/hadoop/core-site.xml

rm  -f /etc/hadoop/core-sites.xml

mkdir /data

hadoop-daemon.sh start datanode 

hadoop dfsadmin -report 

tail -f /dev/null
