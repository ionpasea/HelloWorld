#!/bin/bash
cd HelloWorld
docker-compose -f docker-compose2.yml build
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
docker-compose -f docker-compose2.yml up