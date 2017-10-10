#!/usr/bin/env bash

# download sample dashboards
cd ~
curl -L -O https://download.elastic.co/beats/dashboards/beats-dashboards-1.1.0.zip
sudo apt-get -y install unzip

# extract content
unzip beats-dashboards-*.zip

#load sample dashboard
cd beats-dashboards-*
./load.sh
