FROM debian
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install mariadb-server -y
EXPOSE 3306
#CMD /etc/init.d/mariadb start && tail -f /dev/null
COPY my.cnf /etc/mysql/my.cnf
RUN chmod +rw /etc/mysql/my.cnf
COPY create.sh /var
CMD sh /var/create.sh && tail -f /dev/null
