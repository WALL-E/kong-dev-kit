# kong-dev-kit

Kong Development, out-of-the-box, SSH Server for Docker containers

* Development environment
  * CentOS 7.3.1611
    * kong 0.10.1
  * PostgreSQL 9.6.2


## Depend
You must install docker and docker-compose

* docker 1.12+
* docker-compose 1.8+

[INSTALL](https://github.com/WALL-E/static)


## Start docker and kong

```
# docker-compose build

# docker-compose up -d

# docker-compose exec kong kong start
```

Now, Kong is running

`:8000` - Proxy layer for API requests

`:8001` - RESTful Admin API for configuration

`:8022` - Connect to container by ssh

```
$ curl 127.0.0.1:8001
```

[DOCS](https://getkong.org/docs/)

## Running for development

```
# chmod 600 kong/id_rsa
# ssh 127.0.0.1 -p 8022 -i kong/id_rsa

Official repo
# git clone https://github.com/Mashape/kong.git

Person repo
# git clone https://github.com/WALL-E/kong.git

# cd kong
# git checkout -b local-branchname origin/remote_branchname

# make dev

# make lint

# make test

# make test-integration

# make test-plugins

# make test-all

# make install

# kong restart
```

另外，需要修改测试配置文件: `spec/kong_tests.conf`
```
database = postgres
pg_host = postgres_tests
pg_user = postgres
pg_password = postgres
pg_port = 5432
pg_database = kong_tests
```

For more details, please check [kong/README.md](https://github.com/Mashape/kong/blob/master/README.md)
