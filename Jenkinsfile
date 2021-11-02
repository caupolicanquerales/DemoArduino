pipeline {
       agent any

    stages {
         stage('Clone Repository') {
            steps{
                git branch: 'main', credentialsId: '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', url: 'https://github.com/caupolicanquerales/DemoArduino.git'
                echo 'Building..'
            }
        }
        stage('Install node modules') {
            steps {
                sh 'npm install'
            }
        }
        stage('build app') {
            steps {
                sh 'npm run build'
            }
        }
         stage('Build docker') {
            steps{
                sh 'docker build -t caupolicanquerales/DemoArduino:latest .'
            }
        }
        stage('deploy app') {
            steps {
                echo 'App was deployed'
            }
        }
    }
}
