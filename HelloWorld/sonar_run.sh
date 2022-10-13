#!/bin/bash
cd HelloWorld
docker-compose -f docker-compose-sonar.yml build
docker-compose -f docker-compose-sonar.yml up -d
# sudo apt-get install jq -y
PROJECTKEY="sonarbackend"
Check=`curl -s -u admin:admin123 http://142.126.144.195:9000/api/qualitygates /project_status?projectKey=$PROJECTKEY | jq '.projectStatus.status' | tr - d '"'`
max_retry=30
counter=0
until [ "$Check" == "OK" ] || [ "$Check" = "ERROR" ] || [ "$Check" ==  "WARN" ];
 do
 sleep 20
 [[ counter -eq $max_retry ]] && echo "Failed! Check you sonnar-server  container" && exit 1
 echo "Retrying. Try #$counter"
 ((counter++))

Check=`curl -s -u admin:admin123 http://142.126.144.195:9000/api/qualitygates /project_status?projectKey=$PROJECTKEY | jq '.projectStatus.status' | tr - d '"'`
done
QGSTATUS=`curl -s -u admin:admin123 http://142.126.144.195:9000/api/qualitygates /project_status?projectKey=$PROJECTKEY | jq '.projectStatus.status' | tr - d '"'`
if [ "$QGSTATUS" = "OK" ]
then
echo "Status is OK"
echo "Stopping and removing docker images ...."
docker-compose -f docker-compose-sonar.yml down --rmi all
echo "Sonar scanning has successfully ended with the status 'OK'"
elif [ "$QGSTATUS" = "WARN" ]
then
echo "Status is WARN. Check out the quality of the products at  http://142.126.144.195:9000"
exit 1 # terminate and indicate error
elif [ "$QGSTATUS" = "ERROR" ]
then
echo "Status is ERROR. Check out the quality of the products at  http://142.126.144.195:9000"
exit 1 # terminate and indicate error
fi
