#!/bin/bash

# echo "start-container.sh está sendo executado" > /tmp/script.log
# exec > /tmp/script.log 2>&1
# set -x

# ENV SERVER_NAME=domain.com

cd /app
composer install
php artisan config:clear

exec supervisord -c /etc/supervisor/supervisord.conf
