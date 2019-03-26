FROM java:8
WORKDIR /
ADD build/libs/gs-spring-boot-0.1.0.jar gs-spring-boot-0.1.0.jar
EXPOSE 8088
CMD java - jar gs-spring-boot-0.1.0.jar
