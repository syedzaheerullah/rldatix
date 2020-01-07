FROM ubuntu:xenial
MAINTAINER Syed Zahir Ullah.M
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean
COPY myself.json /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
