pipeline {
    agent any

    stages {
        stage('Build') {
            agent {
                docker {
                    image "node"
                    reuseNode true
                }
            }
            steps {
                sh '''
                ls -l
                node --version
                npm --version
                npm run build
                ls -l
                '''
            }
        }
    }
}
