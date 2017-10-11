#!/usr/bin/env bash

#download sample board to home directory
cd ~
curl -L -O https://download.elastic.co/beats/dashboards/beats-dashboards-1.1.0.zip

# unzip package
sudo apt-get -y install unzip
unzip beats-dashboards-*.zip

# load the sample board
cd beats-dashboards-*
./load.sh
