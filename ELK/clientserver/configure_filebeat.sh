#!/usr/bin/env bash

# modify the existing prospector to send syslog and auth.log to Logstash. Under paths, comment out the - /var/log/*.log file. This will prevent Filebeat from sending every .log in that directory to Logstash

#manual configuration
