#FROM openjdk:21
#EXPOSE 8080
##ADD target/docker-jenkins.jar docker-jenkins-integrate
#ADD docker-jenkins-integrate/src/main/java/ ashley15/docker-jenkins
#
#CMD["java","-jar","app/docker-jenkins.jar"]
# Use a base image
FROM openjdk:11

# Set the working directory
WORKDIR /jenkins-docker

# Copy the Java application JAR file
COPY target/docker-jenkins.jar  /jenkins-docker

# Set the entry point to run the Java application
ENTRYPOINT ["java", "-jar", "/app/docker-jenkins.jar"]

# Set the default command to run the Java application
CMD ["java", "-jar", "app/docker-jenkins.jar"]
