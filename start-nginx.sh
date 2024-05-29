#!/bin/bash

# Substitute environment variables in Nginx config
envsubst '$MONEY_MANAGER_ADDRESS $PERSONAL_WEBSITE_ADDRESS' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

# Start Nginx in foreground
nginx -g 'daemon off;'
