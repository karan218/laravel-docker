setup:
	@make build
	@make up 
	@make create-project
build:
	docker-compose build --no-cache --force-rm
up:
	docker-compose up -d
create-project:
	docker exec laravel-docker bash -c "composer create-project --prefer-dist laravel/laravel ."
folder-permission:
	docker exec laravel-docker bash -c "chmod -R 777 storage/"
composer-update:
	docker exec laravel-docker bash -c "composer update"
data:
	docker exec laravel-docker bash -c "php artisan migrate:fresh --seed"
stop:
	docker-compose stop
down:
	docker-compose down

