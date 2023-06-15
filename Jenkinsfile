pipeline {
    agent any

    stages {
        stage('Build Maven') {
            steps {
                git branch: 'master', url: 'https://github.com/Thatsha/your-repository.git'
                sh 'mvn clean install'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t your-docker-image-name .'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                withCredentials([string(credentialsId: 'docker-hub-credentials', variable: 'DOCKER_HUB_CREDENTIALS')]) {
                    sh 'docker login -u your-docker-hub-username -p $DOCKER_HUB_CREDENTIALS'
                    sh 'docker push your-docker-image-name'
                }
            }
        }
    }
}
