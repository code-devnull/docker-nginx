FROM php:8-fpm-alpine

# RUN groupadd -r app -g 1000 && useradd -u 1000 -r -g app -m -d /app -s /sbin/nologin -c "App user" app && \
#     chmod 755 /usr/share/nginx/html
RUN apk update && apk add --no-cache vim
# RUN chown -R nginx:nginx /usr/share/nginx/html
COPY php.ini $PHP_INI_DIR/conf.d/

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