#!/bin/bash
cd HelloWorld
docker-compose -f docker-compose-sonar.yml build
docker-compose -f docker-compose-sonar.yml up -d
