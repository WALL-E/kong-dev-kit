#!/bin/bash

git clone https://github.com/WALL-E/kong.git
cd kong/
git checkout -b feat/cors origin/feat/cors
make dev
make lint
