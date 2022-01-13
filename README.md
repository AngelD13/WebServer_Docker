# WebServer_Docker

Web-server на основе Ubuntu 20.04 - PHP 7.4, nginx, Apache2

Сборка образа: $sudo docker build -t php-app .
Запуск с копированием папки в образ: $sudo docker run -d -p 80:80 --name=php-app-container php-app
Запуск в подключением папки: $sudo docker run -d -p 80:80 -v $(pwd)/src:/var/www/html --name=php-app-cont
ainer php-app
