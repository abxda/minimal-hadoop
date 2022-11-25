#!/bin/sh
 
 echo  "if [ -f /vagrant/hadoop-env-user.sh ]; then"  >> ~/.bashrc
 echo  "  . /vagrant/hadoop-env-user.sh"  >> ~/.bashrc 
 echo  "fi" >> ~/.bashrc
 . /home/vagrant/.bashrc
 
 . /vagrant/hadoop-env-user.sh

 ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
 cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
 chmod 600 ~/.ssh/authorized_keys
 
 mkdir -p /home/vagrant/hdfs/namenode
 mkdir -p /home/vagrant/hdfs/datanode
 
 hadoop namenode -format

