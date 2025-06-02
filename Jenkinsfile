pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    ls la
                    terraform plan -out plan.tf
                '''
            }
        }

        stage('Apply') {
            steps {
                sh '''
                    terraform apply -auto-approve
                '''
            }
        }
    }
}