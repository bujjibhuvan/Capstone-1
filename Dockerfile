FROM ubuntu:18.04
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive \
TZ=Asia/Singapore
RUN apt-get install -y apache2-utils
RUN apt-get clean
COPY . /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D","FOREGROUND"]
