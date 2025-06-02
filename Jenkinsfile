pipeline {
    agent any

    stages {
        stage('Plan') {
            steps {
                sh '''
                    steps:
                      - shell: bash
                        env:
                          SUPER_SECRET: ${{ secrets.SuperSecret }}
                        run: |
                          example-command "$SUPER_SECRET"
                    ls -la
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