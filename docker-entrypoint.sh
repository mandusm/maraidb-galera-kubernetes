#!/bin/bash

/usr/sbin/mysqld &> /tmp/mysql.out  &
echo $! > /tmp/mysql.pid
while true; do
	/usr/bin/mysqladmin password "$MYSQL_ROOT_PASSWORD" &> /dev/null
	if [ $? -eq 0 ]; then
		break
	fi
done

kill -9 `cat /tmp/mysql.pid`
/usr/sbin/mysqld "$@"


