pipeline {
    agent any
    stages {
         stage('Checkout') {
          steps {
              bat 'git clone https://github.com/WajidAli05/Jenkins-react-tutorial.git'
            }
          }
        stage('Dependencies Installation') {
            steps {
                bat 'npm install'
            }
        }
        stage('Build') {
            steps {
                bat 'npm run build'
            }
        }
        stage('Containerization') {
            steps {
                script {
                    bat 'docker build -t frontend-image -f Dockerfile .'
                }
                script {
                    bat 'docker-compose up -d'
                }
            }
        }
    }
}