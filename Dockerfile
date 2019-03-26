# Alpine Linux with OpenJDK JRE
FROM openjdk:8-jre-alpine
# copy WAR into image
COPY ./build/libs/gs-spring-boot-0.1.0.jar /gs-spring-boot.jar
# run application with this command line 
CMD ["/usr/bin/java", "-jar", "-Dspring.profiles.active=default", "/gs-spring-boot.jar"]
