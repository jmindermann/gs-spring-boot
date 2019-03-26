FROM java:8  
COPY . /var/www/java  
WORKDIR /var/www/java  
CMD java - jar gs-spring-boot-0.1.0.jar
