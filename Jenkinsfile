pipeline {
    agent any
    environment {
        ARM_SUBSCRIPTION_ID = credentials('ARM_SUBSCRIPTION_ID')
        ARM_CLIENT_ID       = credentials('ARM_CLIENT_ID')
        ARM_CLIENT_SECRET   = credentials('ARM_CLIENT_SECRET')
        ARM_TENANT_ID       = credentials('ARM_TENANT_ID')
    }
    parameters {
        choice(name: 'ENVIRONMENT', choices: ['dev', 'prod'], description: 'Select Environment')
    }
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/athotamurali/multiplevmsbuild.git'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh "terraform plan -var-file=environments/${params.ENVIRONMENT}.tfvars"
            }
        }
        stage('Terraform Apply') {
            steps {
                sh "terraform apply -auto-approve -var-file=environments/${params.ENVIRONMENT}.tfvars"
            }
        }
    }
}
