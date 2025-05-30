pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    terraform init -upgrade
                    terraform plan -o
                '''
            }
        }

        stage('Apply') {
            steps {
                sh '''
                    terraform apply
                '''
            }
        }
    }
}