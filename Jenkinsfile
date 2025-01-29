pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image "node"
                }
            }
            steps {
                sh '''
                ls -l
                node --version
                npm --version
                npm ci
                npm run build
                ls -l
                '''
            }
        }
    }
}
