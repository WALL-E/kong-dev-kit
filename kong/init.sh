#!/bin/bash

/bin/cp -f /etc/kong/kong.conf.default /etc/kong/kong.conf

echo "pg_host = postgres" >> /etc/kong/kong.conf
echo "pg_user = postgres" >> /etc/kong/kong.conf
echo "pg_password = postgres" >> /etc/kong/kong.conf
echo "pg_database = postgres" >> /etc/kong/kong.conf

echo 'PATH="/usr/local/openresty/bin/:"$PATH' >> /etc/profile

echo 'LANG="zh_CN.UTF-8"'  > /etc/locale.conf
localedef -v -c -i zh_CN -f UTF-8 zh_CN.UTF-8
localedef -v -c -i en_US -f UTF-8 en_US.UTF-8

cd ~
git clone https://github.com/WALL-E/kong.git
cd kong/
git checkout -b feat/cors origin/feat/cors
make dev
make lint

exit 0
