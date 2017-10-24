FROM php:7-alpine
WORKDIR /var/www
RUN apk update && apk add bash mysql-client \
git curl libmcrypt libmcrypt-dev openssh-client icu-dev \
libxml2-dev freetype-dev libpng-dev libjpeg-turbo-dev g++ make autoconf \
&& docker-php-ext-install bcmath \
&& docker-php-ext-configure pdo && docker-php-ext-install pdo \
&& docker-php-ext-configure pdo_mysql && docker-php-ext-install pdo_mysql \
&& pecl install xdebug && docker-php-ext-enable xdebug \
&& echo "xdebug.remote_enable=on" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
&& echo "xdebug.remote_autostart=off" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
&& echo "xdebug.remote_port=9000" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
&& echo "xdebug.remote_handler=dbgp" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
&& echo "xdebug.remote_connect_back=0" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN curl https://getcomposer.org/composer.phar > /usr/local/bin/composer \
  && chmod a+x /usr/local/bin/composer
