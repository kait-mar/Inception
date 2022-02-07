FROM debian:buster
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y
COPY my.cnf /etc/mysql/my.cnf
RUN chmod +rw /etc/mysql/my.cnf
COPY create.sh /var
COPY wordpress.sql /
#RUN sh /var/create.sh
#CMD sh /var/create.sh && mysqld
CMD sh /var/create.sh && /usr/bin/mysqld_safe
#&& tail -f /dev/null
