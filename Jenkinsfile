pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    terraform plan
                    y
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