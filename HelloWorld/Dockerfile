FROM sonarsource/sonar-scanner-cli 
COPY . /dist 
RUN cd /dist 
WORKDIR /dist/
CMD sleep 150 && sonar-scanner -Dsonar.host.url=http://localhost:9000  -Dsonar.login=admin -Dsonar.password=admin -Dsonar.projectKey=sonarbackend

