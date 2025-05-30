pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    terraform init
                    terraform plan
                '''
            }
        }

        stage('Apply') {
            steps {
                echo 'Hello World'
            }
        }
    }
}