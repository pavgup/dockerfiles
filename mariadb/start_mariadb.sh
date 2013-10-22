#!/bin/bash

if [[ ! -z "$PASSWORD" ]]; then
    mkdir -p /opt/mysql
    cp -a /var/lib/mysql/* /opt/mysql/
    chown -R mysql:mysql /opt/mysql
    chmod -R 755 /opt/mysql
fi
mysqld_safe & sleep 5
if [[ ! -z "$PASSWORD" ]]; then
    echo "UPDATE mysql.user SET Password=PASSWORD('$PASSWORD') WHERE User='root'; FLUSH PRIVILEGES;" | mysql -u root --password=a_stronk_password mysql
    echo "GRANT ALL ON *.* to root@'%' IDENTIFIED BY '$PASSWORD'; FLUSH PRIVILEGES;" | mysql -u root --password="$PASSWORD" mysql
fi
tailf /var/log/mysql.log
