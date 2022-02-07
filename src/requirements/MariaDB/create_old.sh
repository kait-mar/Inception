#service mysql start
echo "CREATE DATABASE wordpress_database;" | mysql -u root
echo "CREATE USER '${DB_USER}'@'%' identified by '${DB_PASSWORD}';" | mysql -u root
#echo "GRANT ALL PRIVILEGES on *.* to 'kait-mar'@'%' IDENTIFIED BY 'login123';" | mysql -u root
echo "GRANT ALL PRIVILEGES ON wordpress_database.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}' ;" | mysql -u root
echo "flush privileges;" | mysql -u root
#mysql -u root wordpress_database < wordpress.sql
#mysql -u root -e "ALTER USER 'root'@'localhost' identified by '${MYSQL_ROOT_PASSWORD}' ;"

#service mysql stop
#mysqld_safe --datadir="/var/lib/mysql"
#to check if the database is empty or not
#mysql> SELECT COUNT(DISTINCT `table_name`) AS TotalNumberOfTables FROM `information_schema`.`columns` WHERE `table_schema` = 'wordpress_database';
#/usr/bin/mysqld_safe

# i think the difference between the admin user and a normal user is the privileges !! I found nothing related 
# so here is what I added