#!/bin/bash

chmod 600 kong/id_rsa
ssh 127.0.0.1 -p 8022 -i kong/id_rsa
