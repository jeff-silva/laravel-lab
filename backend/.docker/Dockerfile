FROM dunglas/frankenphp

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN pecl install redis \
    && docker-php-ext-enable redis

RUN apt-get update && \
    apt-get -y install git zip unzip supervisor bash supervisor

RUN install-php-extensions \
    pcntl pdo_mysql

COPY ./start-container.sh /usr/local/bin/start-container.sh
COPY ./supervisord.conf /etc/supervisor/supervisord.conf

RUN chmod +x /usr/local/bin/start-container.sh
RUN chown -R www-data:www-data /app
RUN chmod -R 0777 /app

ENTRYPOINT ["/usr/local/bin/start-container.sh"]
