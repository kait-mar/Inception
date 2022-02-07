CREATE DATABASE wordpress_database;
--CREATE USER '${DB_USER}'@'%' identified by '${DB_PASSWORD}';
GRANT ALL PRIVILEGES ON wordpress_database.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}' ;
flush privileges;
--mysql -u root wordpress_database < wordpress.sql
--mysql -u root -e "ALTER USER 'root'@'localhost' identified by '${MYSQL_ROOT_PASSWORD}' ;"
