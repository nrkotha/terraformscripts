pipeline {
    agent any
	
    stages {
		
		stage('Checkout code') {
        steps {
            checkout scm
        }
    }
		
        stage('init') {
            container('terraform-az') {
                // Initialize the plan 
                sh  "terraform init -input=false"
                  
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

