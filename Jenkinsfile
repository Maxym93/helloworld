pipeline {
    agent any
    tools {
        maven 'maven3'
    }
    stages {
        stage ('Git pull') {
            steps {
                git url: 'https://github.com/ligado/hello-world-servlet.git'
            }
        }

        stage ('Test') {
            steps {
                withMaven(maven: 'maven3') {
                    sh "mvn test"
                }
            }
        }

        stage ('Verify') {
            steps {
                withMaven(maven: 'maven3') {
                    sh "mvn clean verify"
                }
            }
        }

        stage ('Git pull Dockerfile') {
            steps {
                git url: 'https://github.com/Maxym93/helloworld.git'
            }
        }

        stage ('Docker build') {
            steps {
                sh 'docker build .'
            }
        }
    }
}