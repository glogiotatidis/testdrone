#!/bin/bash
set -e  
cd $DRONE_BUILD_DIR

wrapdocker &  
sleep 5

docker build -t giorgos/test-drone .  
docker push giorgos/test-drone
