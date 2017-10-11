#!/usr/bin/env bash

/usr/bin/env bash install_java8.sh

/usr/bin/env bash Elasticsearch/install_elasticsearch.sh

/usr/bin/env bash Kibana/setup_kibana.sh

/usr/bin/env bash Logstash/setup_logstash.sh

/usr/bin/env bash Kibana/load_board.sh

/usr/bin/env bash Elasticsearch/load_filebeat.sh

/usr/bin/env bash Elasticsearch/scp_cert.sh
