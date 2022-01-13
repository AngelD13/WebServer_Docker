FROM ubuntu:20.04

LABEL Korotin-YeM="mirgorodfor@gmail.com" version="0.1"

ENV DEBIAN_FRONTEND=noninteractive

# Установка и обновление программ
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y software-properties-common apt-transport-https ca-certificates curl gnupg-agent
RUN apt-get update -y
RUN apt-get install -y mc nginx git php libapache2-mod-php php-bcmath php-bz2 php-cli php-common php-curl php-dev php-fpm php-gd php-gmp php-imagick php-imap php-intl php-json php-mbstring php-mysql php-soap php-ssh2 php-tokenizer php-xml php-xmlrpc php-zip

# Копируем настройки nginx
COPY ./infrastructure/default /etc/nginx/sites-available
# Копируем настройки Apache
COPY ./infrastructure/ports.conf /etc/apache2

# Запускаем
CMD  service apache2 start && service php7.4-fpm start && nginx -g "daemon off;"

EXPOSE 80