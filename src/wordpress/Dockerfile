FROM debian
RUN apt-get update -y -qq
RUN apt-get upgrade -y -qq
RUN apt-get install php-fpm -y
#php7-opcache php7-gd php7-mysqli php7-zlib php7-curl php7-mbstring php7-json php7-session -y
RUN apt-get install curl -y
RUN mkdir /var/www && mkdir /var/www/html
RUN cd /var/www/html && curl -O https://wordpress.org/latest.tar.gz && tar -xvf latest.tar.gz && rm latest.tar.gz
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN find /var/www/html/wordpress/ -type d -exec chmod 750 {} \;
RUN find /var/www/html/wordpress/ -type f -exec chmod 640 {} \;
RUN cd /var/www/html/wordpress && mv wp-config-sample.php wp-config.php
COPY wp-config.php /var/www/html/wordpress
CMD /etc/init.d/php7.4-fpm start && tail -f /dev/null
#CMD /etc/init.d/php7.4-fpm start && tail -f /dev/null
#add all php modules
#CMD ["tail", "-f", "/dev/null"]