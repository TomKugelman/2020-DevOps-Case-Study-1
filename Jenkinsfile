pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'rm -rf 2020-DevOps-Case-Study-1'
                
                git url: 'https://github.com/TomKugelman/2020-DevOps-Case-Study-1'
                sh "docker build -t tomkugelman/capstone-flask:latest ."
                withDockerRegistry([ credentialsId: "DockerHub"]) {
                    sh "docker push tomkugelman/capstone-flask:latest"
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