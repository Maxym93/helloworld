pipeline {
    agent any
    tools {
        maven 'maven3'
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                '''
            }
        }

        stage ('Build') {
            steps {
                git url: 'https://github.com/ligado/hello-world-servlet.git'
                withMaven(maven: 'maven3') {
                    sh "mvn clean verify"
                }
            }
        }

        stage ('Folder ls -l') {
            steps {
                sh 'ls -lahtr'
            }
        }
    }
}