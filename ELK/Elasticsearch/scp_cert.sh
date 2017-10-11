#!/usr/bin/env bash

user=root
client_server_private_address=165.227.15.10

scp /etc/pki/tls/certs/logstash-forwarder.crt $user@$client_server_private_address:/tmp

