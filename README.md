# kong-dev-kit

Kong Development, out-of-the-box, SSH Server for Docker containers

* Development environment
  * CentOS 7.3.1611
    * kong 0.10.3
  * PostgreSQL 9.6.2
  * httpbin
  * kong-dashboard
  * redis


## Depend
You must install docker and docker-compose

* docker 17.06.0-ce
* docker-compose 1.12.0

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

`:9000` - HTTP Request & Response Service

`:9001` - Dashboard for managing Kong gateway

`:6379` - Redis

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

Run a single spec
```
bin/busted spec/03-plugins/24-rate-limiting/01-schema_spec.lua
```

Also, you need to modify the test configuration file: `spec/kong_tests.conf`
```
database = postgres
pg_host = postgres_tests
pg_user = postgres
pg_password = postgres
pg_port = 5432
pg_database = kong_tests
```

For more details, please check [kong/README.md](https://github.com/Mashape/kong/blob/master/README.md)
