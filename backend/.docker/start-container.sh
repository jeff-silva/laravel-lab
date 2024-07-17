#!/usr/bin/env bash

cd /app

composer install
php artisan config:clear
redis-server

exec /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
