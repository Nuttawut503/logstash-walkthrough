#!/bin/bash

docker run -it --rm \
  -e config.reload.automatic=true \
  -v "$(pwd)"/data:/usr/share/logstash/data \
  -v "$(pwd)"/config/logstash.yml:/usr/share/logstash/config/logstash.yml \
  -v "$(pwd)"/config/pipelines.yml:/usr/share/logstash/config/pipelines.yml \
  -v "$(pwd)"/pipeline:/usr/share/logstash/pipeline \
  -v "$(pwd)"/input:/usr/share/logstash/input \
  -v "$(pwd)"/output:/usr/share/logstash/output \
  -p 8080:8080 \
  -p 8081:8081 \
  -p 8082:8082 \
  -p 8083:8083 \
  -p 8084:8084 \
  docker.elastic.co/logstash/logstash:7.15.2
