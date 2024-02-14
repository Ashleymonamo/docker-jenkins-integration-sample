FROM openjdk:8
EXPOSE 8080
ADD target/docker-jenkins-integration-sample.jar target/docker-jenkins-integration-sample.jar
ENTRYPOINT["java",".jar","/target/docker-jenkins-integration-sample.jar"]