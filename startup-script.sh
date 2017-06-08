#!/bin/bash
sudo yum -y install https://centos7.iuscommunity.org/ius-release.rpm
sudo yum --setopt=group_package_types=mandatory,default,optional groupinstall "Development Tools"
sudo yum -y install python36u \
	    python36u-pip \
	    python-pip \
	    python36u-devel \
	    python-devel \
		yum-utils groupinstall development \
		tmux vim git wget zip unzip inotify-tools \
		yum-axelget htop nload

sudo groupadd supergroup
sudo usermod -a -G supergroup centos
sudo usermod -a -G supergroup admin 
sudo usermod -a -G supergroup hive
sudo usermod -a -G supergroup hue
sudo usermod -a -G supergroup impala

sudo ln -sf /usr/bin/python3.6 /usr/bin/python3
sudo pip3.6 install --upgrade pip
sudo pip3.6 install pandas numpy sklearn statsmodels \
		  patsy bokeh jupyter tornado django boto3 gevent
sudo pip install awscli boto3
aws s3 cp s3://assorted-config/.tmux.conf /home/centos/.tmux.conf
aws s3 cp s3://assorted-config/cloudera-cluster.pem .ssh
sudo chmod 600 .ssh/cloudera-cluster.pem
sudo chown -R centos:centos .vim .tmux.conf .ssh/cloudera-cluster.pem
exit 0
