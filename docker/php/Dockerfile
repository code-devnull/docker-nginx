FROM php:8.2-fpm

# RUN groupadd -r app -g 1000 && useradd -u 1000 -r -g app -m -d /app -s /sbin/nologin -c "App user" app && \
#     chmod 755 /usr/share/nginx/html
# RUN apk update && apk add --no-cache vim
# RUN chown -R nginx:nginx /usr/share/nginx/html
# COPY php.ini $PHP_INI_DIR/conf.d/

# 安裝 php extensions 的神器，請務必一試！
# https://github.com/mlocati/docker-php-extension-installer
COPY --from=mlocati/php-extension-installer /usr/bin/install-php-extensions /usr/bin/

RUN install-php-extensions redis mysqli xdebug
# # Install packages
# RUN apk --no-cache add php8 php8-fpm php8-mysqli php8-json php8-openssl php8-curl \
#     php8-zlib php8-xml php8-phar php8-intl php8-dom php8-xmlreader php8-ctype \
#     php8-mbstring php8-gd nginx supervisor curl php8-pdo php8-pdo_mysql php8-session \
#     php8-pecl-mcrypt php8-zip php8-tokenizer php8-fileinfo php8-simplexml php8-iconv php8-bcmath bash \
#     php8-xmlwriter php8-sockets dcron php8-ftp php8-opcache php8-bz2 php8-exif php8-gettext php8-pecl-igbinary \
#     php8-pecl-memcached php8-imap php8-posix php8-shmop php8-soap php8-sysvmsg php8-sysvsem php8-sysvshm \
#     php8-xsl openssl php8-gmp php8-redis php8-calendar  php8-common git py3-setuptools wget \
#     php8-sodium

# RUN ln -s /usr/bin/php8 /usr/bin/php
# # Install Composer
# RUN curl -sS https://getcomposer.org/installer | php8 -- --install-dir=/usr/local/bin --filename=composer --version=2.3.5

# # Configure Nginx
# COPY docker/config/nginx.conf /etc/nginx/nginx.conf

# # Configure PHP-FPM
# COPY docker/config/php.ini /etc/php7/custom.ini
# COPY docker/config/fpm-pool.conf /etc/php7/php-fpm.d/www.conf

WORKDIR /usr/share/nginx/html

EXPOSE 80
EXPOSE 9000


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

# # Install the PHP pdo_mysql extention
# RUN docker-php-ext-install pdo_mysql

# # Install the PHP pdo_pgsql extention
# RUN docker-php-ext-install pdo_pgsql

# # Install PHP Opcache extention
# RUN docker-php-ext-install opcache

# # Install Composer
# RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# # Set working directory
# WORKDIR $WORKDIR

# RUN rm -Rf /var/www/* && \
# mkdir -p /var/www/html

# ADD src/index.php $WORKDIR/index.php
# ADD src/conf/nginx/default.conf /etc/nginx/sites-available/default
# ADD src/php.ini $PHP_INI_DIR/conf.d/
# ADD src/opcache.ini $PHP_INI_DIR/conf.d/
# ADD src/supervisor/supervisord.conf /etc/supervisor/supervisord.conf

# COPY src/entrypoint.sh /usr/local/bin/
# RUN chmod +x /usr/local/bin/entrypoint.sh
# RUN ln -s /usr/local/bin/entrypoint.sh /

# ENTRYPOINT ["entrypoint.sh"]



# RUN usermod -u ${HOST_UID} www-data
# RUN groupmod -g ${HOST_UID} www-data

# RUN chmod -R 755 $WORKDIR
# RUN chown -R www-data:www-data $WORKDIR
# EXPOSE 80
# CMD [ "entrypoint" ]