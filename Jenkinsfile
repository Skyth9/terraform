pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    terraform init -upgrade
                    terraform plan -out
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