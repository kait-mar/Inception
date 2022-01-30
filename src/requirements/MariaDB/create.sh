service mysql start
echo "CREATE DATABASE wordpress_database; use wordpress_database; source wordpress.sql" | mysql -u root
echo "CREATE USER 'kait-mar'@'%' identified by 'login123';" | mysql -u root
echo "GRANT ALL PRIVILEGES on *.* to 'kait-mar'@'%' IDENTIFIED BY 'login123';" | mysql -u root;
echo "GRANT ALL PRIVILEGES ON wordpress_database.* TO 'kait-mar'@'%';" | mysql -u root

echo "CREATE USER 'root'@'%' identified by 'root98';" | mysql -u root
echo "GRANT CREATE PRIVILEGES ON wordpress_database.* TO root'@'%';" | mysql -u root
mysql -u root wordpress_database < wordpress.sql
echo "FLUSH PRIVILEGES;" | mysql -u root
#service mysql stop
#mysqld_safe --datadir="/var/lib/mysql"
/usr/bin/mysqld_safe

# i think the difference between the admin user and a normal user is the privileges !! I found nothing related 
# so here is what I added