if [ ! -f "test_exist" ]
then
    echo "*******FIRST TIME************"
    touch test_exist
    service mysql start
    mysql -e "CREATE DATABASE IF NOT EXISTS wordpress_database;"
    mysql -e "CREATE USER '${DB_USER}'@'%' identified by '${DB_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON wordpress_database.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}' ;"
    mysql -e "flush privileges;"
    mysql wordpress_database < wordpress.sql
    #mysql -e "SET PASSWORD FOR 'root'@'localhost' = '2ff898e158cd0311';"
    #mysql -u root --password='root123'
    mysqladmin --user=root password ${MYSQL_ROOT_PASSWORD}
    #mysql -e "ALTER USER 'root'@'localhost' identified by '${MYSQL_ROOT_PASSWORD}' ;"
    service mysql stop
fi
