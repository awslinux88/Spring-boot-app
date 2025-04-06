Pipeline {
    agent any
    stages {
        stage('build code using maven'){
            steps {
                withDockerContainer('maven:3.9.9-eclipse-temurin-17-alpine') {
                    sh 'mvn clean package'
                }
            }
        }

        stage('docker build image'){
            steps{
                sh ' docker build -t awsli/docker-automation:v1 . '
            }
        }

        stage('docker push image to docker hub'){
            steps{
                withDockerRegistry(credentialsId: 'dockerhub', url: 'https://index.docker.io/v1/') {
                 sh ' docker push awsli/docker-automation:v1 '
                }
                
            }
        }
    }
}