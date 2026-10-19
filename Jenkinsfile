pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Islam'
        STUDENT_SURNAME = 'Safarov'
        STUDENT_GROUP = 'IT2-2303'
        STUDENT_ID = '38061'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Cloning code from GitHub...'
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo "Student: ${env.STUDENT_NAME} ${env.STUDENT_SURNAME}"
                echo "Group: ${env.STUDENT_GROUP}"
                echo "Student ID: ${env.STUDENT_ID}"
                sh 'chmod +x scripts/safarov_islam_system.sh'
            }
        }

        stage('Test') {
            steps {
                echo 'Running system diagnostic test...'
                sh './scripts/safarov_islam_system.sh'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t safarov-islam-devops .'
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Docker container...'
                sh 'docker rm -f safarov-islam-container || true'
                sh '''
                    docker run --name safarov-islam-container \
                      -e STUDENT_NAME="${STUDENT_NAME}" \
                      -e STUDENT_SURNAME="${STUDENT_SURNAME}" \
                      -e STUDENT_GROUP="${STUDENT_GROUP}" \
                      -e STUDENT_ID="${STUDENT_ID}" \
                      safarov-islam-devops
                '''
            }
        }
    }
}
