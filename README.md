# kong-dev-kit

Kong Development, out-of-the-box

* Development environment
  * kong 0.9.5
  * PostgreSQL 9.5.5

## Depend
You must install docker and docker-compose

* docker 1.12+
* docker-compose 1.8+

## Accelerator

There is a special branch for Chinese users, you can ignore this step if you don't need

```
# git checkout accelerator
```

## Start docker and kong

```
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

## Running for development

```
# chmod 600 kong/id_rsa
# ssh 127.0.0.1 -p 8022 -i kong/id_rsa

# git clone https://github.com/Mashape/kong.git
# cd kong

# make dev

# make lint

# make test

# make test-integration

# make test-plugins

# make test-all

# make install
```

For more details, please check [kong/README.md](https://github.com/WALL-E/kong/blob/master/README.md)
