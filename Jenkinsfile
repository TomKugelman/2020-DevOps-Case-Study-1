pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                git url: 'https://github.com/TomKugelman/2020-DevOps-Case-Study-1'
                // Here we would run test cases in a docker container, 
                // but since we have no test cases and 
                // docker does not want to run inside a container
                // We will forgoe the testing phase for now and assume we have been given a fully built image
            }
        }
        stage('Deploy') {
            steps {
                // Ansible playbook will handle all the config and installs for us, 
                // as well as the kubernetes deployment
                ansiblePlaybook(playbook: 'playbook-deploy.yml')
                //ansiblePlaybook(playbook: 'test-playbook.yml')
                //sh 'ansible tom@worker -m ping'
            }
        }
    }
}