FROM php:7-fpm-alpine
WORKDIR /var/www
RUN apk update && apk add bash mysql-client \
&& docker-php-ext-install bcmath \
&& docker-php-ext-configure pdo && docker-php-ext-install pdo \
&& docker-php-ext-configure pdo_mysql && docker-php-ext-install pdo_mysql
RUN curl https://getcomposer.org/composer.phar > /usr/local/bin/composer \
  && chmod a+x /usr/local/bin/composer
