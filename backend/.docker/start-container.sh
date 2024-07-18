#!/bin/bash

# echo "start-container.sh está sendo executado" > /tmp/script.log
# exec > /tmp/script.log 2>&1
# set -x

# ENV SERVER_NAME=domain.com

cd /app
composer install
php artisan config:clear

echo "" > /app/storage/logs/supervisor-php-stdout.log
echo "" > /app/storage/logs/supervisor-php-stderr.log
echo "" > /app/storage/logs/supervisor-cron-stdout.log
echo "" > /app/storage/logs/supervisor-cron-stderr.log

exec supervisord -c /etc/supervisor/supervisord.conf
