#!/bin/bash

launchCompose(){
    cd $1
    docker-compose up -d
}

for folder in $(ls containers)
do
    launchCompose folder
done