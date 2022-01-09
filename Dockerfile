FROM ubuntu:20.04

LABEL Korotin-YeM="mirgorodfor@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y

RUN apt-get install -y software-properties-common

RUN apt-get update -y

RUN apt-get install -y nginx curl git php php-bcmath php-bz2 php-cli php-common php-curl php-dev php-fpm php-gd php-gmp php-imagick php-imap php-intl php-json php-mbstring php-mysql php-soap php-ssh2 php-tokenizer php-xml php-xmlrpc php-zip

COPY ./infrastructure /etc/nginx/sites-available

CMD nginx -g "daemon off;"

EXPOSE 80