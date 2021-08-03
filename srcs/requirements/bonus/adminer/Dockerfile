FROM	alpine:3.14

RUN		apk update && apk add openrc && rc default

RUN		apk add php7 php7-fpm php7-mysqli \ 
		php7-zlib php7-curl php7-mbstring \
		php7-json php7-session

RUN		adduser -D -g 'www' www &&\
		mkdir -p /var/www/html/adminer &&\
		chown -R www:www /var/www/html/

COPY	conf/adminer-4.8.1.php /var/www/html/adminer/index.php

COPY	conf/www.conf /etc/php7/php-fpm.d/

EXPOSE	9000

CMD		[ "php-fpm7", "--nodaemonize" ]