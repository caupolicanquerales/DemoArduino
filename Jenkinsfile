pipeline {
    agent any
    environment{
       DOCKERHUB_CREDENTIALS= credentials('dockerhub_credential')
    }

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
                sh 'docker build -t caupolicanquerales/demoarduino:latest .'
            }
        }
        stage('Login docker'){
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
         stage('Push Docker-hub') {
            steps{
                sh 'docker push caupolicanquerales/demoarduino:latest'
            }
        }
        stage('deploy app') {
            steps {
                echo 'App was deployed'
            }
        }
    }
    post{
        always{
            sh 'docker logout'
        }
    }
}
