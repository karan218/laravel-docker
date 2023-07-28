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
migrate:
	docker exec laravel-docker bash -c "php artisan migrate"
key:
	docker exec laravel-docker bash -c "php artisan key:generate"
cache-clear:
	docker exec laravel-docker bash -c "php artisan optimize:cl"
passport:
	docker exec laravel-docker bash -c "php artisan passport:install"
test:
	docker exec laravel-docker bash -c "php artisan test"
stop:
	docker-compose stop
down:
	docker-compose down -v

