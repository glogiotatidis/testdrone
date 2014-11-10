#!/bin/bash
set -e  
cd $DRONE_BUILD_DIR

# wrapdocker &  
# sleep 5

export DOCKER_HOST=tcp://178.62.192.52:2375
docker login -e $DOCKER_EMAIL -u $DOCKER_USERNAME -p $DOCKER_PASSWORD
docker build -t giorgos/test-drone:$DRONE_COMMIT .  
docker push giorgos/test-drone:$DRONE_COMMIT

fig -f ci-fig.yml up
