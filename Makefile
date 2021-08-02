DC			= docker-compose -p incpetion -f srcs/docker-compose.yml

.PHONY:		all build up start down destroy stop restart logs ps

all:
			$(DC) build
			$(DC) up -d

build:
			$(DC) build

up:
			$(DC) up -d

start:
			$(DC) start

down:
			$(DC) down

destroy:
			$(DC) down -v

stop:
			$(DC) stop

restart:
			$(DC) stop
			$(DC) up -d

logs:
			$(DC) logs --tail=100 -f

ps:
			$(DC) ps

delete:
			docker stop $$(docker ps -aq) &&\
			docker rm $$(docker ps -aq) &&\
			docker volume rm $$(docker volume ls -q) &&\
			docker network rm $$( docker network ls -q)

#source https://habr.com/ru/company/ruvds/blog/486682/
# docker rmi $$(docker images -q) &&