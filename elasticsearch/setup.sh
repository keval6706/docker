#!/bin/bash

# Wait for Elasticsearch to be ready
until curl -s http://localhost:9200 > /dev/null; do
    echo 'Waiting for Elasticsearch...'
    sleep 5
done

# Set up kibana_system user
curl -X POST -u "elastic:${ELASTIC_PASSWORD}" "http://localhost:9200/_security/user/kibana_system/_password" -H "Content-Type: application/json" -d "{\"password\":\"${ELASTICSEARCH_PASSWORD}\"}"

# Keep the container running
tail -f /dev/null