#!/usr/bin/env bash

if [ ! -x /usr/sbin/nginx ]; then
    sudo apt-get install nginx
fi

sudo apt-get install apache2-utils

# add kibanaadmin user  to nginx
sudo htpasswd -c /etc/nginx/htpasswd.users kibanaadmin

#configure /etc/nginx/sites-available/default
# --- run script here

sudo service nginx restart
