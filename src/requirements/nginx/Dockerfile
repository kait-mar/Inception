FROM debian:buster
RUN apt-get update -y -qq
RUN apt-get upgrade -y -qq
RUN apt-get install nginx -y -qq
COPY default /etc/nginx/sites-available/
RUN apt-get install openssl
COPY nginx-selfsigned.crt /etc/ssl/certs/
COPY nginx-selfsigned.key etc/ssl/private/
COPY self-signed.conf /etc/nginx/snippets
RUN chown -R www-data:www-data /var/www
RUN find /var/www/ -type d -exec chmod 755 {} \;
RUN find /var/www/ -type f -exec chmod 644 {} \;
CMD ["nginx", "-g", "daemon off;"]