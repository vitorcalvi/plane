#!/bin/sh

export dollar="$"
export http_upgrade="http_upgrade"
export scheme="scheme"

# Substitute variables into the Nginx config template
envsubst < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

# Start Nginx in the foreground
exec nginx -g 'daemon off;'
