pipeline {
    agent any
    environment {
        ARM_CLIENT_ID = credentials('AZURE_CLIENT_ID')
        ARM_CLIENT_SECRET = credentials('AZURE_CLIENT_SECRET')
        ARM_SUBSCRIPTION_ID = credentials('AZURE_SUBSCRIPTION_ID')
        ARM_TENANT_ID = credentials('AZURE_TENANT_ID')
    }
    parameters {
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select Environment')
    }
    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/your-repo/terraform-vm-deployment.git'
            }
        }

        stage('Terraform Init') {
            steps {
                dir("environments/${params.ENV}") {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                dir("environments/${params.ENV}") {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        stage('Terraform Apply') {
            steps {
                dir("environments/${params.ENV}") {
                    sh 'terraform apply -auto-approve tfplan'
                }
            }
        }
    }
}

