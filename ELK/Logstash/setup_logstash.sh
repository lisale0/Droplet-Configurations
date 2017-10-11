#!/usr/bin/env bash

/usr/bin/env bash install_logstash.sh
/usr/bin/env bash generate_ssl.sh
/usr/bin/env bash configure_logstash.sh
sudo service logstash configtest
sudo service logstash restart
sudo update-rc.d logstash defaults 96 9
