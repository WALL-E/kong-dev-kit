#!/bin/bash

/bin/cp -f /etc/kong/kong.conf.default /etc/kong/kong.conf

echo "pg_host = postgres" >> /etc/kong/kong.conf
echo "pg_user = postgres" >> /etc/kong/kong.conf
echo "pg_password = postgres" >> /etc/kong/kong.conf
echo "pg_database = postgres" >> /etc/kong/kong.conf
