pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git url: 'https://github.com/TomKugelman/2020-DevOps-Case-Study-1'
            }
        }
        stage('Deploy') {
            steps {
                sh "./2020-DevOps-Case-Study-1/playbook-deploy.yaml"
                
            }
        }
    }
}