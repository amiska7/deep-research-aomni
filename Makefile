include .env

.PHONY: build up down bash start stop log sreset hreset

build:
	docker compose build
up:
	docker compose up -d
down:	
	docker compose down
bash:
	docker exec -it "${IMAGE_NAME}_${IMAGE_VERSION}" /bin/bash
start:
	docker compose start
stop:
	docker compose stop
log:
	docker compose logs ${IMAGE_NAME}
sreset:
	git reset --soft HEAD^
hreset:
	git reset --hard HEAD^