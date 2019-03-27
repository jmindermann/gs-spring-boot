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
      // deploy on docker Suche: Beispiel Jenkins Openshift neue Container bauen von ausserhalb
      sh "sudo docker build -t gs-spring-boot ."
      sh "oc new-app gs-spring-boot"
      sh "oc expose svc/gs-spring-boot"
      
      //sh "sudo docker run -d --name gs-spring-boot-container gs-spring-boot"
   }
}
