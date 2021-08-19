FROM	alpine:3.14

RUN		apk update && apk add openrc && rc default

RUN		apk add nginx openssl &&\
		mkdir -p /var/www/html && mkdir /www &&\
		adduser -D -g 'www' www &&\
		chown -R www:www /var/www/html &&\
		chown -R www:www /www

RUN 	openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
		-subj '/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=monie' \
		-keyout /etc/ssl/localhost.key \
		-out /etc/ssl/localhost.crt

COPY	conf/nginx.conf /etc/nginx/

COPY	conf/resume /www/

EXPOSE	80

CMD		["nginx", "-g", "daemon off;"]