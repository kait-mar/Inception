FROM debian:buster
RUN apt-get update -y 
RUN apt-get upgrade -y
RUN apt-get install -y  php7.3 php-fpm php-mysqli mariadb-client
RUN apt-get install curl -y
RUN mkdir -p /var/www && mkdir -p /var/www/html
RUN cd /var/www/html && curl -O https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz && rm latest.tar.gz
COPY conf/wp-config.php /var/www/html/wordpress
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/
RUN chown -R www-data:www-data /var/www/html/wordpress/
RUN mkdir ./run/php/
CMD ./usr/sbin/php-fpm7.3 -F