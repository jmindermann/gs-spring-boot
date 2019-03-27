FROM fabric8/java-jboss-openjdk8-jdk
COPY . /var/www/java  
WORKDIR /var/www/java  
CMD java -jar ./build/libs/gs-spring-boot-0.1.0.jar --server.port=9090
