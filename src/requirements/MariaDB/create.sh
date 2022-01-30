service mysql start
mysql -u root "CREATE DATABASE wordpress_database; use wordpress_database; source wordpress.sql"
mysql -u root "CREATE USER 'kait-mar'@'%' identified by 'login123';"
mysql -u root "GRANT ALL PRIVILEGES on *.* to 'kait-mar'@'%' IDENTIFIED BY 'login123';"
mysql -u root "GRANT ALL PRIVILEGES ON wordpress_database.* TO 'kait-mar'@'%';"
mysql -u root wordpress_database < wordpress.sql
mysql -u root -e "ALTER USER 'root'@'localhost' identified by 'root123' ; flush priviliges;"
mysql -u root "FLUSH PRIVILEGES;"
#service mysql stop
#mysqld_safe --datadir="/var/lib/mysql"
#to check if the database is empty or not
#mysql> SELECT COUNT(DISTINCT `table_name`) AS TotalNumberOfTables FROM `information_schema`.`columns` WHERE `table_schema` = 'wordpress_database';
/usr/bin/mysqld_safe

# i think the difference between the admin user and a normal user is the privileges !! I found nothing related 
# so here is what I added