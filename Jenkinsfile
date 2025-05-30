pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    rm .terraform
                    rm .terraform.lock.hcl
                    ls -la
                    terraform init -upgrade
                    terraform plan
                '''
            }
        }

        stage('Apply') {
            steps {
                echo 'Hello World2'
            }
        }
    }
}