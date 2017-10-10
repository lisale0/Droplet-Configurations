#!/usr/bin/env bash

sudo mkdir -p /etc/pki/tls/certs
sudo mkdir /etc/pki/tls/private

# Option 1: IP Address, if you do not have DNS set up
#configure /etc/ssl/openssl.cnf

#general SSL certificate and private key
cd /etc/pki/tls
sudo openssl req -config /etc/ssl/openssl.cnf -x509 -days 3650 -batch -nodes -newkey rsa:2048 -keyout private/logstash-forwarder.key -out certs/logstash-forwarder.crt


