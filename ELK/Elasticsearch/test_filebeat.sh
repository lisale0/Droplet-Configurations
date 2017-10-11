#!/usr/bin/env bash

curl -XGET 'http://localhost:9200/filebeat-*/_search?pretty'
