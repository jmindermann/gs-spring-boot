node {
   stage('Checkout') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/jmindermann/gs-spring-boot.git'
   }
   stage('Build') {
      // Run the gradle build
      if (isUnix()) {
         sh "chmod +x ./gradlew build"
      } else {
         bat "./gradlew build"
      }
    }
    stage('Run application') {
      // Run the application
      if (isUnix()) {
         sh "chmod +x java -jar ./build/libs/gs-spring-boot-0.1.0.jar --server.port=9090"
      } else {
         bat "java -jar ./build/libs/gs-spring-boot-0.1.0.jar --server.port=9090"
      }
    }
}
