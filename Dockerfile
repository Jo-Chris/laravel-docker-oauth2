FROM php:7.4-fpm

WORKDIR /var/www/html

RUN apt-get update -y && apt-get install -y libzip-dev libpng-dev libnss3

RUN docker-php-ext-install pdo pdo_mysql zip gd
