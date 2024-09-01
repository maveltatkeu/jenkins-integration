pipeline {
    agent any
    environment {
        DOCKERHUB_CREDENTIALS = credentials('Docker')
    }
    stages{
        stage('Build Maven'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/maveltatkeu/jenkins-integration']]])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t kora1/devops-integration .'
                }
            }
        }
        stage('Push image to Hub'){
            steps{
                script{

                   bat "docker login -u $DOCKERHUB_CREDENTIALS_USR -p $DOCKERHUB_CREDENTIALS_PSW"
                   bat "docker push kora1/devops-integration"
                   echo 'Login Completed'
                }
            }
        }
        stage('Deploy to k8s'){
            steps{
                script{
                    kubernetesDeploy (configs: 'deploymentservice.yaml',kubeconfigId: 'k8sconfigpwd')
                }
            }
        }
    }
}