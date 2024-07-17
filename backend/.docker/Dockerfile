FROM dunglas/frankenphp

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN pecl install redis \
    && docker-php-ext-enable redis

RUN apt-get update && \
    apt-get -y install git zip unzip supervisor

RUN install-php-extensions \
    pcntl

COPY ./start-container.sh /usr/local/bin/start-container.sh
COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ENTRYPOINT ["start-container.sh"]
