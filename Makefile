setup:
	@make build
	@make up 
	@make create-project
build:
	sudo docker-compose build --no-cache --force-rm
up:
	sudo docker-compose up -d
create-project:
	sudo docker exec laravel-docker bash -c "composer create-project --prefer-dist laravel/laravel ."
folder-permission:
	sudo docker exec laravel-docker bash -c "chmod -R 777 storage/"
composer-update:
	sudo docker exec laravel-docker bash -c "composer update"
data:
	sudo docker exec laravel-docker bash -c "php artisan migrate:fresh --seed"
migrate:
	sudo docker exec laravel-docker bash -c "php artisan migrate"
key:
	sudo docker exec laravel-docker bash -c "php artisan key:generate"
cache-clear:
	sudo docker exec laravel-docker bash -c "php artisan optimize:cl"
passport:
	sudo docker exec laravel-docker bash -c "php artisan passport:install"
test:
	sudo docker exec laravel-docker bash -c "php artisan test"
stop:
	sudo docker-compose stop
down:
	sudo docker-compose down
down-v:
	sudo docker-compose down -v

