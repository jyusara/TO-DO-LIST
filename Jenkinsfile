pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'todo-list-app'
        CONTAINER_NAME = 'todo-list-container'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jyusara/TO-DO-LIST.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t ${DOCKER_IMAGE} .'
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    // Si el contenedor ya existe, lo elimina antes de crear uno nuevo
                    sh "docker rm -f ${CONTAINER_NAME} || true"
                    sh "docker run -d -p 8080:80 --name ${CONTAINER_NAME} ${DOCKER_IMAGE}"
                }
            }
        }

        stage('Test Docker Access') {
        steps {
            script {
                sh 'docker --version'
            }
        }
    }
    }

    post {
        always {
            // Elimina el contenedor al finalizar
            sh "docker rm -f ${CONTAINER_NAME} || true"
        }
    }

        

}
