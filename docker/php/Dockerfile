FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    curl apt-file \
    libfreetype6-dev \
    libmcrypt-dev \
    libpng-dev \
    libjpeg-dev \
    libpng-dev \
    libwebp-dev \
    libonig-dev \
    libzip-dev
RUN apt-file update
RUN docker-php-ext-install iconv \
    && docker-php-ext-configure gd --with-jpeg --with-webp --with-freetype \
    && docker-php-ext-install gd mbstring zip \
    && docker-php-ext-enable gd 
    # Install the PHP pdo_mysql extention
    # && docker-php-ext-install pdo_mysql

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=2.3.5

EXPOSE 9000
WORKDIR /var/www/html

# FROM php:8.2.8-fpm
# ARG WORKDIR=/var/www/html
# ENV DOCUMENT_ROOT=${WORKDIR}
# ENV LARAVEL_PROCS_NUMBER=1
# ENV DOMAIN=_
# ENV CLIENT_MAX_BODY_SIZE=15M
# ENV NODE_VERSION=17.x
# ARG HOST_UID=1000
# ENV USER=www-data
# # Install system dependencies
# RUN apt-get update && apt-get install -y \
#     git \
#     curl \
#     libfreetype6-dev \
#     libjpeg62-turbo-dev \
#     libmemcached-dev \
#     libzip-dev \
#     libpng-dev \
#     libonig-dev \
#     libxml2-dev \
#     librdkafka-dev \
#     libpq-dev \
#     openssh-server \
#     zip \
#     unzip \
#     supervisor \
#     sqlite3  \
#     nano \
#     cron

# RUN curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION} | bash -
#  # Install Node    
# RUN apt-get install -y nodejs     
# # Install nginx 
# RUN apt-get update && apt-get install -y nginx

# # Clear cache
# RUN apt-get clean && rm -rf /var/lib/apt/lists/*
# # Install Kafka 
# RUN git clone https://github.com/arnaud-lb/php-rdkafka.git\
#     && cd php-rdkafka \
#     && phpize \
#     && ./configure \
#     && make all -j 5 \
#     && make install 

# # Install Rdkafka and enable it
# RUN docker-php-ext-enable rdkafka \
#      && cd .. \
#     && rm -rf /php-rdkafka

# # Install PHP extensions zip, mbstring, exif, bcmath, intl
# RUN docker-php-ext-configure gd --with-freetype --with-jpeg
# RUN docker-php-ext-install  zip mbstring exif pcntl bcmath -j$(nproc) gd intl

# # Install Redis and enable it
# RUN pecl install redis  && docker-php-ext-enable redis

# # Install the php memcached extension
# RUN pecl install memcached && docker-php-ext-enable memcached

# # Install the PHP pdo_pgsql extention
# RUN docker-php-ext-install pdo_pgsql

# # Install PHP Opcache extention
# RUN docker-php-ext-install opcache



