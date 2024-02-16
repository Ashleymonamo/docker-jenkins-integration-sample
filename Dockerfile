FROM openjdk:21
EXPOSE 8080
ADD target/docker-jenkins-integrate.java docker-jenkins-integrate
ENTRYPOINT["java","/docker-jenkins.java"]