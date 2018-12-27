pipeline {
    agent any
	
    stages {
		
		stage('Checkout code') {
        steps {
            checkout scm
        }
    }
		
        stage('init') {
            steps {
                echo 'init..'
				sh '/var/jenkins_home/workspace/terraformscripts/terraform init'
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

