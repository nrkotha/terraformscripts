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
				def tfHome= tool name: 'Terrafrom'
				env.PATH=${tfHome}:${env.APTH}
			}
			sh 'terrafrom - version'
        }
    }
		
		
        stage('init') {
            steps {
                echo 'Initialize..'
            }
        }
        stage('plan') {
            steps {
                echo 'Planning....'
            }
        }
    }
}

