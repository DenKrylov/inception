FROM	alpine:3.14

RUN	apk update && apk add openrc && rc default

RUN	apk add vsftpd openssl

RUN     openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
        -subj '/C=RU/ST=Moscow/L=Moscow/O=42/OU=21/CN=monie' \
        -keyout /etc/ssl/private/vsftpd.key \
        -out /etc/ssl/certs/vsftpd.crt  

COPY    /conf/ /

RUN     chmod 711 start.sh &&\
        adduser -D -h /var/www/html/wordpress monie; echo "monie:!Q2w3e4r5t" | chpasswd &&\
        mv vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE  20 21 30000

CMD     [ "sh", "start.sh" ]