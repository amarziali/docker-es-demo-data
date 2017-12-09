#!/bin/sh

set -e

# Ingest data into Elasticsearch
filebeat -e --modules=nginx --setup  \
         -M "nginx.access.var.paths=/data/nginx_logs" \
         -E output.elasticsearch.hosts=elasticsearch:9200 \
         -E setup.kibana.host=kibana:5601
