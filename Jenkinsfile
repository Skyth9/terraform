pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh 'terraform plan'
            }
        }

        stage('Apply') {
            steps {
                echo 'Hello World'
            }
        }
    }
}