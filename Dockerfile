FROM openjdk:8
EXPOSE 8080
ADD target/docker-automation.jar docker-automation.jar
ENTRYPOINT ["java","-jar","/docker-automation.jar"]