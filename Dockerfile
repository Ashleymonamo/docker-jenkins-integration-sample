FROM openjdk:21
EXPOSE 8080
#ADD target/docker-jenkins.jar docker-jenkins-integrate
ADD docker-jenkins-integrate/src/main/java/ ashley15/docker-jenkins

CMD["java","-jar","app/docker-jenkins.jar"]