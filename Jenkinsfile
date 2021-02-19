pipeline {
    agent any
    tools {
        maven 'maven3'
    }
    stages {
        stage ('Git pull') {
            steps {
                git url: 'https://github.com/Maxym93/helloworld.git'
            }
        }

        stage ('Test') {
            steps {
                withMaven(maven: 'maven3') {
                    sh "mvn test"
                }
            }
        }
        parallel {
            steps {
                sh "echo 1"
            }
            
            steps {
                sh "echo 2"
            }
        }
    }
}