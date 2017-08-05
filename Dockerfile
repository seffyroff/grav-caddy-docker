FROM yobasystems/alpine-caddy:php

MAINTAINER Phil Merricks https://github.com/seffyroff

USER root
RUN apk add --no-cache --update \
php7-mbstring \
php7-tokenizer \
php7-dom \
php7-fpm \
php7-json \
php7-zlib \
php7-xml \
php7-pdo \
php7-phar \
php7-openssl \
php7-gd \
php7-iconv \
php7-mcrypt \
php7-session \
php7-zip \
php7-curl \
php7-opcache \
php7-ctype \
php7-apcu \
php7-intl \
php7-bcmath \
php7-xmlreader 

RUN \
	rm -fR /var/www/* \

	&& composer create-project getgrav/grav /var/www

EXPOSE 2015

COPY Caddyfile /etc/Caddyfile

RUN chown -R caddy:caddy /var/www /srv /var/log

USER caddy

ENTRYPOINT ["/usr/bin/caddy"]
CMD ["--conf", "/etc/Caddyfile"]