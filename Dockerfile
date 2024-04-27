FROM maven:latest
FROM tomcat:9.0
RUN cd boxfuse-sample-java-war-hello/
RUN mvn package
RUN cd target/
RUN cp hello-1.0.war /var/lib/tomcat/webapps/