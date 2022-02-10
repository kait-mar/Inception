FROM debian:buster
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y
COPY tools/my.cnf /etc/mysql/my.cnf
RUN chmod +rw /etc/mysql/my.cnf
COPY conf/create.sh /var
COPY tools/wordpress.sql /
CMD sh /var/create.sh && /usr/bin/mysqld_safe
