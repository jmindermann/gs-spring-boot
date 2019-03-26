node {
   stage('Checkout') { // for display purposes
      // Get some code from a GitHub repository
      git 'https://github.com/jmindermann/gs-spring-boot.git'
   }
   stage('Build') {
      // build with gradle
      sh "chmod +x ./gradlew build"
   }
   stage('Deploy') {
      // deploy on docker
      sh "sudo docker build -t gs-spring-boot:latest"
   }
}
