#!/bin/sh
 
 ssh-keygen -b 2048 -t rsa -f ~/.ssh/id_rsa -q -N ""
 cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
 chmod 600 ~/.ssh/authorized_keys
 echo -e "\nif [ -f /vagrant/hadoop-env-user.sh ]; then\n    . /vagrant/hadoop-env-user.sh\nfi\n" >> ~/.bashrc
 mkdir -p /home/vagrant/hdfs/namenode
 mkdir -p /home/vagrant/hdfs/datanode
 cd /home/vagrant
 sh .bashrc
 hadoop namenode -format


