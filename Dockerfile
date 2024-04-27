FROM ubuntu:18.04
RUN apt update
FROM maven:latest
FROM tomcat:9.0
WORKDIR /boxfuse-sample-java-war-hello
RUN mvn package
WORKDIR /target
ADD target/hello-1.0.war /var/lib/tomcat/webapps/
