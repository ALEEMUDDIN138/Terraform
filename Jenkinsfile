pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('terraform-access')
        AWS_SECRET_ACCESS_KEY = credentials('Terraform-secret')
    }
    stages {
        stage('Checkout Code') {
            steps {
               git url: 'https://github.com/ALEEMUDDIN138/Terraform.git', branch: 'main'
            }
        }
        stage('Terraform Init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan -var-file=environment.tfvars -out=tfplan'
            }
        }
        stage('Terraform Apply') {
            when {
                branch 'main'   // only apply in main branch
            }
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }
}
