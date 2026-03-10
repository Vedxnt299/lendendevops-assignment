pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Vedxnt299/lendendevops-assignment.git'
            }
        }

        stage('Security Scan') {
            steps {
                sh 'trivy config --severity CRITICAL --exit-code 1 terraform/'
            }
        }

        stage('Terraform Init') {
            steps {
                dir('terraform') {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir('terraform') {
                    sh 'terraform plan'
                }
            }
        }

    }
}