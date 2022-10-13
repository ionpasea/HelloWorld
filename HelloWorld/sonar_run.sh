#!/bin/bash
cd HelloWorld
docker-compose -f docker-compose-sonar.yml build
echo "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"
docker-compose -f docker-compose-sonar.yml up -d
