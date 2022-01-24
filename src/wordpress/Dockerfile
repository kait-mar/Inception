FROM debian:buster
RUN apt-get update -y 
RUN apt-get upgrade -y 
#RUN apt-get install php7.3-fpm -y
RUN apt-get install -y  php7.3 php-fpm php-mysqli mariadb-client
#php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session -y
RUN apt-get install curl -y
RUN mkdir -p /var/www && mkdir -p /var/www/html
RUN cd /var/www/html && curl -O https://ru.wordpress.org/wordpress-5.7.2-ru_RU.tar.gz && tar -xvf wordpress-5.7.2-ru_RU.tar.gz && rm wordpress-5.7.2-ru_RU.tar.gz
#https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz && rm latest.tar.gz
RUN chown -R www-data:www-data /var/www/html/wordpress
#RUN find /var/www/html/wordpress/ -type d -exec chmod 755 {} \;
#RUN find /var/www/html/wordpress/ -type f -exec chmod 755 {} \;
#RUN cd /var/www/html/wordpress && mv wp-config-sample.php wp-config.php
COPY wp-config.php /var/www/html/wordpress
#EXPOSE 9000
COPY www.conf /etc/php/7.3/fpm/pool.d/
#CMD  /etc/init.d/php7.3-fpm start && tail -f /dev/null
RUN mkdir ./run/php/
CMD ./usr/sbin/php-fpm7.3 -F
#CMD /usr/sbin/php-fpm7.3 --nodaemonize  # /etc/init.d/php7.4-fpm start
#CMD /etc/init.d/php7.4-fpm start && tail -f /dev/null
#add all php modules
#CMD ["tail", "-f", "/dev/null"]