FROM ubuntu:xenial
MAINTAINER Syed Zahir Ullah.M

# Installing apache2
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
RUN apt-get clean

# Copying Json file in the working dir of apache
COPY myself.json /var/www/html

#Exposing the port 
EXPOSE 80

#Starting apache2
CMD ["apache2ctl", "-D", "FOREGROUND"]
