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
                //ansiblePlaybook(playbook: 'test-playbook.yml')
                sh 'ansible tom@worker -m ping'
            }
        }
    }
}