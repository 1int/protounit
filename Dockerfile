FROM php:8.3-cli
WORKDIR /var/www/html
COPY composer.json .
COPY composer.lock .
COPY --link tests tests

RUN apt-get update && apt-get install -y git
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN composer install
RUN pecl install protobuf && docker-php-ext-enable protobuf

CMD ["vendor/bin/phpunit", "./tests"]