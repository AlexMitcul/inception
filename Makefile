

all: up

up:
	docker-compose -f ./srcs/docker-compose.yml up -d

status:
	docker ps



