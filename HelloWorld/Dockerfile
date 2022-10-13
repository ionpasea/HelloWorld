FROM sonarsource/sonar-scanner-cli 
COPY . /dist 
RUN cd /dist 
WORKDIR /dist/
CMD sonar-scanner -Dsonar.host.url=http://142.126.144.197:9000  -Dsonar.login=admin -Dsonar.password=admin123 -Dsonar.projectKey=sonarbackend

