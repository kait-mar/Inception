FROM debian
RUN apt-get update -y -qq
RUN apt-get upgrade -y -qq
RUN apt-get install php7.4 php7.4-fpm -y
RUN apt-get install curl -y
RUN mkdir /var/www
RUN cd /var/www && curl -O https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz && rm latest.tar.gz
RUN chown -R www-data:www-data /var/www/wordpress
RUN find /var/www/wordpress/ -type d -exec chmod 750 {} \;
RUN find /var/www/wordpress/ -type f -exec chmod 640 {} \;
RUN cd /var/www/wordpress && mv wp-config-sample.php wp-config.php
COPY wp-config.php /var/www/wordpress
#add all php modules