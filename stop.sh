#!/bin/bash

PWD=$(cd "$(dirname "$0")"; pwd)

cd $PWD
docker-compose exec kong kong stop
