FROM debian:buster
RUN apt-get update -y -qq
RUN apt-get upgrade -y -qq
RUN apt-get install nginx -y -qq
COPY default /etc/nginx/sites-available/
#RUN mv /var/www/nginx_conf /var/www/default
#RUN cp /var/www/default /etc/nginx/sites-available/default
#COPY nginx_TLS /var/www/
#RUN cp /var/www/nginx_TLS /var/www/nginx.conf
#RUN mv /var/www/nginx.conf /etc/nginx/
#RUN apt install apt-utils -y
RUN apt-get install openssl
COPY nginx-selfsigned.crt /etc/ssl/certs/
COPY nginx-selfsigned.key etc/ssl/private/
COPY self-signed.conf /etc/nginx/snippets
#COPY php-fcgi /etc/init.d
#RUN update-rc.d php-fcgi defaults
RUN chown -R www-data:www-data /var/www
#RUN chmod 755 {dir} && chmod 644 {files}
RUN find /var/www/ -type d -exec chmod 755 {} \;
RUN find /var/www/ -type f -exec chmod 644 {} \;
#CMD tail -f /dev/null
#RUN /etc/init.d/nginx start
CMD ["nginx", "-g", "daemon off;"]
#RUN apt-get install systemd systemd-sysv -y
#RUN systemctl enable nginx
#/etc/init.d/nginx start
#RUN rc-service nginx start
#COPY /src/ /var/www/html
#EXPOSE 80
#RUN apt -y -qq update