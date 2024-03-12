# docker things
build-image:
	docker build -t $(image_name):$(version) -f $(file) .
up:
	docker compose up -d
stop:
	docker compose stop
down:
	docker compose down

# nginx things
nginx-check:
	docker exec -it dev-nginx nginx -t
nginx-reload:
	docker exec -it dev-nginx nginx -s reload