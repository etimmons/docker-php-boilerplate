FROM php:7-alpine
WORKDIR /var/www
RUN apk update && apk add bash mysql-client supervisor \
&& docker-php-ext-install bcmath \
&& docker-php-ext-configure pdo && docker-php-ext-install pdo \
&& docker-php-ext-configure pdo_mysql && docker-php-ext-install pdo_mysql
RUN curl https://getcomposer.org/composer.phar > /usr/local/bin/composer \
  && chmod a+x /usr/local/bin/composer

RUN mkdir -p /var/log/supervisor

COPY supervisord.conf /etc/supervisor/supervisord.conf

COPY script-worker.conf /etc/supervisor/conf.d/script-worker.conf
COPY script-publisher.conf /etc/supervisor/conf.d/script-publisher.conf

EXPOSE 9001

