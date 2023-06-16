// pipeline {
//     agent any

//     stages {
//         stage('Build Maven') {
//             steps {
//                 git branch: 'master', url: 'https://github.com/Thatsha/Maven-to-Dockerhub-Thatsha.git'
//                 sh 'mvn clean install'
//             }
//         }
//         stage('Build Docker Image') {
//             steps {
//                 sh 'docker build -t datatype-application .'
//             }
//         }
//         stage('Push to Docker Hub') {
//             steps {
//                 withCredentials([
//                     usernamePassword(credentialsId: 'github-credentials', passwordVariable: 'GITHUB_PASSWORD', usernameVariable: 'GITHUB_USERNAME')
//                 ]) {
//                     withCredentials([
//                         usernamePassword(credentialsId: 'docker-hub-credentials', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: 'DOCKERHUB_USERNAME')
//                     ]) {
//                         sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"
//                         sh "docker tag datatype-application $DOCKERHUB_USERNAME/datatype-application"
//                         sh "docker push $DOCKERHUB_USERNAME/datatype-application"
//                     }
//                 }
//             }
//         }
//     }
// }
