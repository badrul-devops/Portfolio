pipeline{
    agent{  dockerfile 'Dockerfile'
      args '-v /var/run/docker.sock:/var/run/docker.sock'
       }

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
                sh 'docker run myportfolio'
            }
        }
    }
}