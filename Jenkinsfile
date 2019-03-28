pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps{
                // Get project from DXC GitHub repository
                git 'https://github.dxc.com/jmindermann/gs-spring-boot.git'
            }
        }
        stage('Build') {
            steps{
                script {
                    // build with gradle
                    sh "chmod +x ./gradlew build"
                }
            }
        }
        stage('Deploy') {
            steps{
                script {
                    // deploy on docker
                    //sh "sudo docker build -t gs-spring-boot ."
                    //sh "sudo docker run -d --name gs-spring-boot-container gs-spring-boot"
                    sh "oc new-app gs-spring-boot"
                    sh "oc expose svc/gs-spring-boot"
                }
            }
        }
    }
}
