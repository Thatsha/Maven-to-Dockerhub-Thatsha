pipeline {
    agent any
    tools {
        maven 'maven_3.9.2' 
    }
    environment {
        DATE = new Date().format('yy.M')
        TAG = "${DATE}.${BUILD_NUMBER}"
    }
    stages {
        stage ('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    docker.build("thatsha/Maven-to-DockerhubThatsha:${TAG}")
                }
            }
        }
	    stage('Pushing Docker Image to Dockerhub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_credential') {
                        docker.image("thatsha/Maven-to-DockerhubThatsha:${TAG}").push()
                        docker.image("thatsha/Maven-to-DockerhubThatsha:${TAG}").push("latest")
                    }
                }
            }
        }
        stage('Deploy'){
            steps {
                sh "docker stop hello-world | true"
                sh "docker rm hello-world | true"
                sh "docker run --name Maven-to-DockerhubThatsha -d -p 9004:8080 thatsha/Maven-to-DockerhubThatsha:${TAG}"
            }
        }
    }
}
