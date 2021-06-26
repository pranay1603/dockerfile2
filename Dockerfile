from centos:latest

copy  hadoop-1.2.1-1.x86_64.rpm /root/

copy  jdk-8u171-linux-x64.rpm   /root/

run yum install initscripts -y

run yum install gettext -y

run rpm -ivh /root/jdk-8u171-linux-x64.rpm 

run rpm -ivh /root/hadoop-1.2.1-1.x86_64.rpm --force 

copy hdfs-site.xml  /etc/hadoop/hdfs-site.xml

copy core-site.xml  /etc/hadoop/core-sites.xml

copy hadoop.sh  /root/

cmd ["bash", "/root/hadoop.sh"]

#entrypoint ["hadoop-daemon.sh", "start", "datanode"]

#cmd ["/bin/bash"] 
