service mariadb start
echo "CREATE DATABASE wordpress_database;" | mysql -u root
echo "CREATE USER 'kait-mar'@'%' identified by 'login123';" | mysql -u root
echo "GRANT ALL PRIVILEGES on *.* to 'kait-mar'@'%' IDENTIFIED BY 'login123';" | mysql -u root;
echo "GRANT ALL PRIVILEGES ON wordpress_database.* TO 'kait-mar'@'%';" | mysql -u root
echo "FLUSH PRIVILEGES;" | mysql -u root
service mariadb stop

mysqld_safe --datadir="/var/lib/mysql"
#mysqld_safe
