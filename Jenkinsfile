pipeline{
    agent any

    stages{
        stage('Checkout'){
            steps{
              git 'https://github.com/badrul-devops/Portfolio.git'
            }
        }
        stage('Build'){
            steps{
                sh 'docker build -t myportfolio .'
            }
        }
        stage('Test'){
            steps{
                sh 'docker run -d -p 8090:80 -p 443:443 myportfolio'
            }
        }
    }
}