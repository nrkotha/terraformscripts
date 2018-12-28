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
				//echo 'storage name='+${TERRAFORM_STORAGE_ACCOUNT_NAME}
                sh 'az storage container create -n devtfstate --account-name ${TERRAFORM_STORAGE_ACCOUNT_NAME} --account-key ${TERRAFORM_STORAGE_ACCOUNT_KEY}'
            }
        }
        stage('plan') {
            steps {
                echo 'Planning....'
            }
        }
    }
}

