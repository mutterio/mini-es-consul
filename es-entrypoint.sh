#!/bin/sh
HOST_IP=$(curl -m 2 -s http://169.254.169.254/latest/dynamic/instance-identity/document | grep privateIp | cut -d \" -f 4)
export HOST_IP=${HOST_IP:-172.17.42.1}

consul-template -log-level=${LOG_LEVEL} -consul=${CONSUL_HOST}:${CONSUL_PORT} -config=/tmp/consul-template.conf -once
# consul template outputs es_options
source /tmp/config/es_options
exec /start.sh
