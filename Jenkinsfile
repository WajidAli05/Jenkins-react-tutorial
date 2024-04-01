pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/WajidAli05/Jenkins-react-tutorial.git'
            }
        }
        
        stage('Dependency Installation') {
            steps {
                sh 'npm install'
            }
        }
        
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        
        stage('Containerized') {
            steps {
                script {
                    sh 'docker build -t frontend-image -f Dockerfile .'
                }
                script {
                    sh 'docker-compose up -d'
                }
            }
        }

    }
}

