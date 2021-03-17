#!/bin/bash

sudo mount -t tmpfs -o rw,size=256M tmpfs $PWD/debug

docker-compose down 
docker-compose up --build -d
docker-compose logs -f
