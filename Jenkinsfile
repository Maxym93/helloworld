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
        stage ('Build') {
            steps {
                withMaven(maven: 'maven3') {
                    sh "echo Maven $date"
                    sh "mvn clean verify"
                }
            }
        }

        stage ('Echo') {
            steps {
                sh "echo ECHO $date"
            }
        }
    }
    }
}