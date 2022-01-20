# WebServer_Docker

Web-server на основе Ubuntu 20.04 - PHP 7.4, nginx, Apache2

Сборка образа: $sudo docker build -t php-app .
Запуск с копированием папки в образ: $sudo docker run -d -p 80:80 --name=php-app-container php-app
Запуск в подключением папки: $sudo docker run -d -p 80:80 -v $(pwd)/src:/var/www/html --name=php-app-cont
ainer php-app

Создание сети Docker: sudo docker network create -d bridge php-app-network
Запускаем MySQL: $sudo docker run -d -v $(pwd)/.data/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=secret --network=php-app-network --name=mysql mysql:5.7.24

После создания контейнера желательно зайти в MySQL и проверить:
mysql -u root mysql