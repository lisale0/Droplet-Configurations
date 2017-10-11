#!/usr/bin/env bash

#copy the ELK Server's SSL certificate into the appropriate location 
sudo mkdir -p /etc/pki/tls/certs
sudo cp /tmp/logstash-forwarder.crt /etc/pki/tls/certs/
