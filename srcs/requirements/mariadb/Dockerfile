FROM	alpine:3.14

RUN		apk update && apk add openrc && rc default

RUN		apk add mysql mysql-client && \
		mkdir "/run/mysqld" && \
		chown -R mysql /run/mysqld

COPY	conf/createdb.sql conf/monie.sql conf/start.sh ./

COPY	conf/my.cnf /etc/my.cnf

EXPOSE	3306

CMD		[ "sh", "start.sh" ]