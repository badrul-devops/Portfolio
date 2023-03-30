pipeline{
    agent{ Dockerfile true }

    stages{
        stage('Checkout'){
            steps{
              checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/badrul-devops/Portfolio.git']])
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