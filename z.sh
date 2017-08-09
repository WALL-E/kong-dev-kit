#!/bin/bash

chmod 600 kong/id_rsa
ssh -o stricthostkeychecking=no 127.0.0.1 -p 8022 -i kong/id_rsa
