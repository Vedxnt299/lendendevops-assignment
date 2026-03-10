pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Vedxnt299/lendendevops-assignment.git'
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