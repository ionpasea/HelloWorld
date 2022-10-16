FROM sonarsource/sonar-scanner-cli 
COPY . /dist 
RUN cd /dist 
WORKDIR /dist/
CMD sonar-scanner -Dsonar.host.url=http://rocasinc.com:9000  -Dsonar.login=admin -Dsonar.password=admin123 -Dsonar.projectKey=sonarbackend

