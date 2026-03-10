pipeline{
    agent any

    tools {
        jdk 'java-17'
        maven 'maven'
    }
    stages{
       stage('Git Checkout') {
            steps {
                git url: 'https://github.com/ManojKRISHNAPPA/SnakeGame.git', branch: 'main'
            }
        }

        stage('Compile') {
            steps {
                sh '''
                    mvn compile
                '''
            }
        }

        stage('Test & coverage') {
            steps {
                sh '''
                    mvn test jacoco:report
                '''
            }
        }

    }
}