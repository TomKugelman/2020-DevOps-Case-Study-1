pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                dir('/App') {
                    git url: 'https://github.com/TomKugelman/sba.kubernetes-cluster'
                    sh "docker build -t tomkugelman/capstone-flask:latest ."
                    withDockerRegistry([ credentialsID: "DockerHub"]) {
                        sh "docker push tomkugelman/capstone-flask:latest"
                    }
                }
            }
        }
        stage('Deploy') {
            steps {
                dir('/App') {
                    sh 'playbook-deploy.yaml'
                    deleteDir()
                }
            }
        }
    }
}