#!/bin/bash

/usr/bin/mysqladmin password "$MYSQL_ROOT_PASSWORD"

/usr/bin/mysqld "$@"