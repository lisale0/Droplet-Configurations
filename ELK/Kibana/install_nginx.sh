#!/usr/bin/env bash

if [ ! -x /usr/sbin/nginx ]; then
    sudo apt-get install -y nginx
fi

sudo apt-get install -y apache2-utils

# add kibanaadmin user  to nginx
sudo htpasswd -c /etc/nginx/htpasswd.users kibanaadmin

