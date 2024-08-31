pipeline {
    agent any
    tools{
        maven 'maven_3_5_0'
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/maveltatkeu/jenkins-integration']]])
                sh 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    sh 'docker build -t kora1/devops-integration .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{
                   withCredentials([string(credentialsId: 'Cheom-#Dck0', variable: 'dockerhubpwd')]) {
                   sh 'docker login -u koraWings -p ${dockerhubpwd}'

}
                   sh 'docker push javatechie/devops-integration'
                }
            }
        }

    }
}