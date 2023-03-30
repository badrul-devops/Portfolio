pipeline{
    agent{ Dockerfile true }

    stages{
        stage('Checkout'){
            steps{
                git 'https://github.com/badrul-devops/Portfolio.git'

        }
        stage('Build'){
            steps{
                sh 'docker build -t myportfolio .'
            }
        }
        stage('Test'){
            steps{
                sh 'docker run myportfolio'
            }
        }
    }
}
}