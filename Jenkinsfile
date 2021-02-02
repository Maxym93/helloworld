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

        stage ('Folder ls -l') {
            steps {
                sh 'ls -lahtr'
                sh 'ls -lahtr target'
            }
        }
    }
}