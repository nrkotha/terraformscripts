pipeline {
    agent any
	
    stages {
		
		stage('Checkout code') {
        steps {
            checkout scm
        }
    }
		
        stage('Set Terraform path') {
        steps {
            script{
				def tfHome= tool name: 'Terraform'
				env.PATH="${tfHome}:${env.PATH}"
			}
			sh 'terraform --version'
        }
    }
		
		
        stage('init') {
            steps {
				echo 'storage name='+${TERRAFORM_STORAGE_ACCOUNT_NAME}
                //sh 'terraform init'
            }
        }
        stage('plan') {
            steps {
                echo 'Planning....'
            }
        }
    }
}

