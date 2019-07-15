FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get -y install apache2
RUN apt-get -y install libapache2-mod-php php-mysql
LABEL owner="vijay"
ENV dbname="wpdb"
COPY wordpress/ /var/www/html/
CMD ["apachectl","-D","FOREGROUND"]
