#!/bin/bash

launchCompose(){
    cd $1
    docker-compose down
    cd ..
}

cd networks
for folder in $(ls)
do
    launchCompose $folder
done