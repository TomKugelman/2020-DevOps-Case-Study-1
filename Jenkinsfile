pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                dir('/App') {
                    sh 'chmod 7777 /App'
                    git url: 'https://github.com/TomKugelman/2020-DevOps-Case-Study-1'
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