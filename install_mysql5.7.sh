#!/usr/bin/env bash

#sudo pip3 install mysqlclient fails with mysql_config not found
#sudo apt-get install libmysqlclient-dev
#without pip3 it will not going to work for python3
#sudo pip3 install mysqlclient
#python3 manage.py migrate

echo 'deb http://repo.mysql.com/apt/ubuntu/ trusty mysql-5.7' | sudo tee -a /etc/apt/sources.list
sudo apt-get update
sudo apt-get install -y mysql-server
