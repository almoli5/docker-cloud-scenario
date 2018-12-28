#!/bin/bash

launchCompose(){
    cd $1
    docker-compose up -d
}

for folder in $(ls networks)
do
    launchCompose folder
done