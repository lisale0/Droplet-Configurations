#!/usr/bin/env bash

# Add to package manager
wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
sudo apt-get update
sudo apt-get -y install elasticsearch

#next step make configurations to elasticsearch.yml, call script --
#/etc/elasticsearch/elasticsearch.yml
sed -i '/network.host/c\network.host: localhost' /etc/elasticsearch/elasticsearch.yml

#start Elasticsearch
sudo service elasticsearch restart

# start elasticsearch on boot up
sudo update-rc.d elasticsearch defaults 95 10
