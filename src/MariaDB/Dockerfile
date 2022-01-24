FROM debian:buster
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y
#CMD /etc/init.d/mariadb start && tail -f /dev/null
COPY my.cnf /etc/mysql/my.cnf
#COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod +rw /etc/mysql/my.cnf
COPY create.sh /var
CMD sh /var/create.sh && tail -f /dev/null
