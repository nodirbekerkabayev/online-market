up:
	sudo docker compose up -d

build:
	sudo docker compose up -d --build

chmod:
	chmod -R 777 /var/www

.PHONY: database

database:
	sudo docker exec -it market_db mysql -u root -p

bash:
	sudo docker exec -it market_app bash

user:
	php artisan moonshine:user

down:
	sudo docker compose down

op:
	php artisan optimize

mg:
	php artisan migrate
