pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jyusara/TO-DO-LIST.git'
            }
        }
        
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t todo-list-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d -p 8080:80 --name todo-list-container todo-list-app'
            }
        }
    }
}
