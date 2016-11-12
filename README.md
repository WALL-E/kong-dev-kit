# kong-dev-kit

Kong Development, out-of-the-box

* Development environment
  * kong 0.9.5 is installed 
  * PostgreSQL 9.5.5

## Depend

* docker 1.12+
* docker-compose 1.8+

## Start kong

```
docker-compose exec kong kong start
```

`:8000` - Proxy layer for API requests

`:8001` - RESTful Admin API for configuration

## Running for development

```
ssh 127.0.0.1 -p 8022 -i kong/id_rsa

git clone https://github.com/Mashape/kong.git
cd kong

make dev

make lint

make test

make install
```

For more details, please check **kong/README.md**
