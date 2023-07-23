# Laravel APP + MYSQL + PHP-MYADMIN WITH DOCKER SETUP



Requirements
------------
- Docker

PHP and MySQL do not need to be installed to run the software locally

Installation
------------
1. Clone respository
```bash
git clone https://github.com/karan218/laravel-docker.git
cd laravel-docker
```

2. Copy .env.docker to .env with the following command
```bash
cp .env.docker .env
```

3. Update following details in .env files according to yours
```bash
DB_DATABASE=your_database_name
DB_PASSWORD=you_mysql_root_password
MYSQL_ROOT_PASSWORD=you_mysql_root_password
```

4. Run the following commands to setup docker enviorment
```bash
make setup
```

5. Run the following commands to set up storage folder permission
```bash
make folder-permission
```

6. Update following details in src/.env files according to yours root .env files
```bash
DB_HOST=mysql_db
DB_DATABASE=your_database_name
DB_PASSWORD=you_mysql_root_password
MYSQL_ROOT_PASSWORD=you_mysql_root_password
```

7. Run the following commands to run migrations & seeders
```bash
make data
```

8. Assuming you have not changed any details in the .env files you should be able to access 

- [Laravel App](http://localhost:9000/public).
- [phpMyAdmin database admin](http://localhost:9001).

9. Start coding :)

