FROM tomcat:8.0-alpine

MAINTAINER Hari harichowdary.java@gmail.com



WORKDIR /usr/local/tomcat
RUN mvn package
COPY ./java-tomcat-maven-example.war /usr/local/tomcat/webapps

EXPOSE 8080
CMD ["catalina.sh", "run"]
