#!/usr/bin/env bash

# create the source list for Kibana
echo "deb http://packages.elastic.co/kibana/4.4/debian stable main" | sudo tee -a /etc/apt/sources.list.d/kibana-4.4.x.list

#apt package update
sudo apt-get update

#install
sudo apt-get -y install kibana

# Kibana configuration in /opt/kibana/config/kibana.yml, run script --
/bin/bash configure_kibana.sh

# Enable Kibana
sudo update-rc.d kibana defaults 96 9

# Restart Kibana
sudo service kibana start
