service mysql start
mysql -e "CREATE DATABASE IF NOT EXISTS wordpress_database;"
mysql -e "CREATE USER '${DB_USER}'@'%' identified by '${DB_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON wordpress_database.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}' ;"
mysql -e "flush privileges;"
#--mysql -u root wordpress_database < wordpress.sql
#--mysql -u root -e "ALTER USER 'root'@'localhost' identified by '${MYSQL_ROOT_PASSWORD}' ;"
service mysql stop