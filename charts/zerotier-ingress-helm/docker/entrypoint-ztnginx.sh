#!/usr/bin/env bash

NGINX_LISTEN_PORT="${NGINX_LISTEN_PORT:-8000}"
NGINX_PROXY_READ_TIMEOUT=${NGINX_PROXY_READ_TIMEOUT:-60}


if [ -z "$NGINX_PROXY_ADDRESS" ]; then
    echo "Error: NGINX_PROXY_ADDRESS environment variable is not set"
    exit 1
fi

envsubst '$NGINX_LISTEN_PORT,$NGINX_PROXY_ADDRESS,$NGINX_PROXY_READ_TIMEOUT' < /default.conf.template > /etc/nginx/conf.d/default.conf

cat /etc/nginx/conf.d/default.conf 

exec /docker-entrypoint.sh nginx -g "daemon off;"
