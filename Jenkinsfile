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
        
        stage('Test') {
            steps {
                // Add test commands here if applicable
            }
        }
        
        stage('Containerized') {
            steps {
                script {
                    docker.build('react-app', '.')
                    docker.image('react-app').push('latest')
                }
            }
        }

    }
}


// pipeline {
//     agent any
//     stages {
//          stage('Checkout') {
//           steps {
//               bat 'git clone https://github.com/WajidAli05/Jenkins-react-tutorial.git'
//             }
//           }
//         stage('Dependencies Installation') {
//             steps {
//                 bat 'npm install'
//             }
//         }
//         stage('Build') {
//             steps {
//                 bat 'npm run build'
//             }
//         }
//         stage('Containerization') {
//             steps {
//                 script {
//                     bat 'docker build -t frontend-image -f Dockerfile .'
//                 }
//                 script {
//                     bat 'docker-compose up -d'
//                 }
//             }
//         }
//     }
// }