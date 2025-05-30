pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    ls
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