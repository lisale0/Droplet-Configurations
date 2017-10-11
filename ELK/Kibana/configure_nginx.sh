#!/usr/bin/env bash

host=localhost

#adding auth_basic and auth_basic_user_file
sed -i '29iauth_basic "Restricted Access";\nauth_basic_user_file /etc/nginx/htpasswd.users;' /etc/nginx/sites-available/default


sed -i "36iproxy_pass http://localhost:5601;\nproxy_http_version 1.1;\nproxy_set_header Connection 'upgrade';\nproxy_set_header Host $host;" /etc/nginx/sites-available/default

sudo service nginx restart
