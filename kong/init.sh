#!/bin/bash

/bin/cp -f /etc/kong/kong.conf.default /etc/kong/kong.conf

echo "pg_host = postgres" >> /etc/kong/kong.conf
echo "pg_user = postgres" >> /etc/kong/kong.conf
echo "pg_password = postgres" >> /etc/kong/kong.conf
echo "pg_database = postgres" >> /etc/kong/kong.conf

echo 'PATH="/usr/local/openresty/bin/:"$PATH' >> /etc/profile

localedef -v -c -i en_US -f UTF-8 en_US.UTF-8

exit 0
