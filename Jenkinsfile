pipeline {
       agent any

    stages {
         stage('Clone Repository') {
            steps{
                git branch: 'main', credentialsId: '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', url: 'https://github.com/caupolicanquerales/DemoArduino.git'
                echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
