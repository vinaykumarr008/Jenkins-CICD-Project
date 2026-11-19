pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo 'Jenkins has downloaded the project from GitHub.'
            }
        }

        stage('Test') {
            steps {
                echo 'Running application tests...'
                sh 'chmod +x test.sh'
                sh './test.sh'
            }
        }

        stage('Build') {
            steps {
                echo 'Application build completed successfully.'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying website to Nginx...'
                sh 'cp index.html /deployment/index.html'
                echo 'Website deployed successfully!'
            }
        }
    }
}
